<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Controller user
 * @created on : 12-04-2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class User extends FATH_Controller {

  private $ret_css_status;
  private $ret_message;
  private $ret_url;

  public function __construct() {
    parent::__construct();
    $this->load->model('User_m','user');
  }

  public function index() {
    redirect('fath/user/view_user');
  }

  public function view_user($offset = 0, $filter = 0) {
    $this->load->library('fath/jquery_pagination');

    $filter = ($this->input->post('filter', TRUE)) ? $this->input->post('filter', TRUE) : $filter;

    $config['base_url'] = site_url('fath/user/view_user');
    $config['per_page'] = 10;
    $config['base_filter'] = '/' . $filter;
    $config['url_location'] = 'subcontent-element';
    $config['full_tag_open'] = '<ul class="paging urlactive">';
    $config['uri_segment'] = 4;

    $config['total_rows'] = $this->user->num_rows_select_user($filter);

    $this->jquery_pagination->initialize($config);
    $data['halaman'] = $this->jquery_pagination->create_links();
    $data['content'] = $this->user->select_user($config['per_page'], $offset, $filter);
    $data['offset'] = $offset;
    $data['filter'] = ($filter == '0') ? '' : $filter;

    $data['link_filter'] = site_url('fath/user/view_user');

    $this->template->load_view('view_user', $data);
  }

  function validate_user() {
    $checkUser = $this->user->check_user($this->input->post('user_username'));
    echo $checkUser;
  }

  public function add_user() {
    $this->load->library('form_validation');

    $isSso = $this->input->post('is_sso', TRUE);

    $this->form_validation->set_rules('is_sso', 'metode login', 'trim|required');
    $this->form_validation->set_rules('user_username', 'username', 'trim|required|callback_username_check');

    //validasi account sso
    if ($isSso == 1) {
        
    } else { //validasi account non-sso
      $this->form_validation->set_rules('user_password', 'password', 'trim|required|min_length[6]');
      $this->form_validation->set_rules('retype_user_password', 're-type password', 'trim|required|matches[user_password]');
      $this->form_validation->set_rules('user_nama_lengkap', 'nama lengkap', 'trim|required');
      $this->form_validation->set_rules('user_email', 'email', 'trim|valid_email');
    }

    $this->form_validation->set_rules('is_aktif', 'status', 'trim|required');
    $this->form_validation->set_rules('group[]', 'group menu', 'trim|required');

    $this->form_validation->set_message('required', 'Field %s tidak boleh kosong');

    $data['group'] = $this->user->select_group();
    $data['isSso'] = $isSso;

    if ($this->form_validation->run($this) == FALSE) {
      $this->template->load_view('tambah_user', $data);
    } else {
      $this->add_user_proses();
    }
  }

  public function add_user_proses() {
    $userUsername = $this->input->post('user_username');
    $userPassword = $this->input->post('user_password');
    $userNamaLengkap = $this->input->post('user_nama_lengkap');
    $userEmail = $this->input->post('user_email');
    $isAktif = $this->input->post('is_aktif');
    $isSso = $this->input->post('is_sso');
    $group = $this->input->post('group');

    $ldapStatus = 0;
    //data user information
    if ($isSso == 1) {
      //get ldap user information
      $ldapInfoUser = $this->_ldap_user_information($userUsername);

      if (!empty($ldapInfoUser)) {
        $ldapStatus = 1;
        $data = array(
          'group_menu_id' => $group[0],
          'user_username' => $userUsername,
          'user_password' => null,
          'user_email' => $ldapInfoUser['email'],
          'user_nama_lengkap' => $ldapInfoUser['nama_lengkap'],
          'user_is_aktif' => $isAktif,
          'user_is_sso' => $isSso
        );
      }

      $dataUser = $this->insert_data_user_information($data);
    } else {
      $data = array(
        'group_menu_id' => $group[0],
        'user_username' => $userUsername,
        'user_password' => $this->user_auth_lib->pwd_encrypt($userPassword),
        'user_email' => $userEmail,
        'user_nama_lengkap' => $userNamaLengkap,
        'user_is_aktif' => $isAktif,
        'user_is_sso' => $isSso
      );

      $dataUser = $this->insert_data_user_information($data);
    }


    if ($isSso == 1 && $ldapStatus == 0) {
      $this->ret_css_status = 'danger';
      $this->ret_message = 'Maaf, account SSO atas nama <b>' . $userUsername . '</b> tidak ditemukan.';
    } else {
      $this->db->trans_begin();

      $this->user->insert_user($dataUser);

      //data user group access
      $userId = $this->db->insert_id();

      foreach ($group as $selected) {
        $dataAccess = array(
          'user_id' => $userId,
          'group_menu_id' => $selected
        );

        $dataAccess = $this->insert_data_user_information($dataAccess);

        $this->user->insert_user_access($dataAccess);
      }

      if ($this->db->trans_status() === FALSE) {
        $this->ret_css_status = 'danger';
        $this->ret_message = 'Tambah data gagal';
        $this->db->trans_rollback();
      } else {
        $this->ret_css_status = 'success';
        $this->ret_message = 'Tambah data berhasil';
        $this->db->trans_commit();
      }
    }
    $this->ret_url = site_url('fath/user/view_user');
    echo json_encode(array('status' => $this->ret_css_status, 'msg' => $this->ret_message, 'url' => $this->ret_url, 'dest' => 'subcontent-element'));
  }

  private function _ldap_user_information($username) {
    $namaPengguna = 'sdm.tes';
    $kunci = '5dMt3st!n9';

    $server = "ldap.fath";
    $basedn = "ou=people,o=FATH Framework,dc=fath,dc=ac,dc=id";
    $dn = "uid=$namaPengguna,$basedn";
    $ldapconn = ldap_connect($server, 389) or die("Not connected");

    ldap_set_option($ldapconn, LDAP_OPT_PROTOCOL_VERSION, 3);
    if ($ldapconn) {
      $r = @ldap_bind($ldapconn, $dn, $kunci);
      if ($r) {
        $sr = ldap_search($ldapconn, $basedn, "uid=$username");
        $dataLdap = ldap_get_entries($ldapconn, $sr);

        if ($dataLdap['count'] == 1) {
          //get information from ldap
          $namaLengkap = ucwords($dataLdap[0]['cn'][0]);
          $email = $dataLdap[0]['mail'][0];

          return array('nama_lengkap' => $namaLengkap, 'email' => $email);
        } else {
          return false;
        }
      } else {
        return false;
      }
    }
  }

  public function username_check($username) {
    if ($this->user->select_username_check_exist($username)) {
      $this->form_validation->set_message('username_check', 'Username sudah tersedia. Silahkan ulangi lagi.');
      return FALSE;
    } else {
      return TRUE;
    }
  }

  public function update_user($userIdGet = null) {
    $this->load->library('form_validation');

    $isSso = $this->input->post('is_sso', TRUE);
    $userIdPost = $this->input->post('user_id', TRUE);

    $this->form_validation->set_rules('is_sso', 'metode login', 'trim|required');
    $this->form_validation->set_rules('user_username', 'username', 'trim|required');

    //validasi account sso
    if ($isSso == 1) {
        
    } else { //validasi account non-sso
      $this->form_validation->set_rules('user_nama_lengkap', 'nama lengkap', 'trim|required');
      $this->form_validation->set_rules('user_email', 'email', 'trim|valid_email');
      $this->form_validation->set_rules('user_password', 'password', 'trim|min_length[6]');
      $this->form_validation->set_rules('retype_user_password', 're-type password', 'trim|matches[user_password]');
    }

    $this->form_validation->set_rules('is_aktif', 'status', 'trim|required');
    $this->form_validation->set_rules('group[]', 'group menu', 'trim|required');

    $this->form_validation->set_message('min_length', 'Field password minimal 6 karakter');
    $this->form_validation->set_message('required', 'Field %s tidak boleh kosong');

    $userId = ($userIdPost) && ($userIdPost) ? $userIdPost : $userIdGet;

    $data['group'] = $this->user->select_group();
    $data['content'] = $this->user->select_user_by_id($userId);
    $data['access'] = array_values($this->user->select_user_access_by_user_id($userId));

    if ($this->form_validation->run($this) == FALSE) {
      $this->template->load_view('ubah_user', $data);
    } else {
      $this->update_user_proses();
    }
  }

  public function update_user_proses() {
    $userId = $this->input->post('user_id');
    $userUsername = $this->input->post('user_username');
    $userPassword = $this->input->post('user_password');
    $userNamaLengkap = $this->input->post('user_nama_lengkap');
    $userEmail = $this->input->post('user_email');
    $isAktif = $this->input->post('is_aktif');
    $isSso = $this->input->post('is_sso');
    $group = $this->input->post('group');

    $ldapStatus = 0;
    //data user information
    if ($isSso == 1) {
      //get ldap user information
      $ldapInfoUser = $this->_ldap_user_information($userUsername);

      if (!empty($ldapInfoUser)) {
        $ldapStatus = 1;
        $data = array(
          'group_menu_id' => $group[0],
          'user_username' => $userUsername,
          'user_password' => null,
          'user_email' => $ldapInfoUser['email'],
          'user_nama_lengkap' => $ldapInfoUser['nama_lengkap'],
          'user_is_aktif' => $isAktif,
          'user_is_sso' => $isSso
        );
      }

      $dataUser = $this->update_data_user_information($data);
    } else {
      $data = array(
        'group_menu_id' => $group[0],
        'user_username' => $userUsername,
        'user_password' => $this->user_auth_lib->pwd_encrypt($userPassword),
        'user_email' => $userEmail,
        'user_nama_lengkap' => $userNamaLengkap,
        'user_is_aktif' => $isAktif,
        'user_is_sso' => $isSso
      );

      if (!$userPassword) {
        unset($data['user_password']);
      }

      $dataUser = $this->update_data_user_information($data);
    }

    if ($isSso == 1 && $ldapStatus == 0) {
      $this->ret_css_status = 'danger';
      $this->ret_message = 'Maaf, account SSO atas nama <b>' . $userUsername . '</b> tidak ditemukan.';
    } else {
      $this->db->trans_begin();

      $this->user->update_user($userId, $dataUser);

      //delete user group access
      $this->user->delete_user_access($userId);

      foreach ($group as $selected) {
        $dataAccess = array(
            'user_id' => $userId,
            'group_menu_id' => $selected
        );

        $dataAccess = $this->insert_data_user_information($dataAccess);

        $this->user->insert_user_access($dataAccess);
      }

      if ($this->db->trans_status() === FALSE) {
        $this->ret_css_status = 'danger';
        $this->ret_message = 'Tambah data gagal';
        $this->db->trans_rollback();
      } else {
        $this->ret_css_status = 'success';
        $this->ret_message = 'Tambah data berhasil';
        $this->db->trans_commit();
      }
    }

    $this->ret_url = site_url('fath/user/view_user');
    echo json_encode(array('status' => $this->ret_css_status, 'msg' => $this->ret_message, 'url' => $this->ret_url, 'dest' => 'subcontent-element'));
  }

  public function insert_data_user_information($array){
    $insertInformation=array(
      'created_by'        => $this->user_id,
      'created_time'      => $this->date_today,
      'updated_by'        => $this->user_id,
      'updated_time'      => $this->date_today
    );
    
    return array_merge($array,$insertInformation);
  }

  public function update_data_user_information($array){
    $updateInformation=array(
      'updated_by'        => $this->user_id,
      'updated_time'      => $this->date_today
    );
    
    return array_merge($array,$updateInformation);
  }

  public function delete_user($userId = null) {
    $rs = $this->user->delete_user($userId);

    if ($rs) {
      $this->ret_css_status = 'success';
      $this->ret_message = 'Hapus data berhasil';
    } else {
      $this->ret_css_status = 'danger';
      $this->ret_message = 'Hapus data gagal';
    }

    $this->ret_url = site_url('fath/user/view_user');
    echo json_encode(array('status' => $this->ret_css_status, 'msg' => $this->ret_message, 'url' => $this->ret_url));
  }

}

/* End of file user.php */
/* Location: ./dash-app/modules/user/controllers/user.php */