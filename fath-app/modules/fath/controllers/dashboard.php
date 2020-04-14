<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Controller Dashboard
 * @created : 28 Desember 2018 14:56
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class dashboard extends FATH_Controller {

  private $ret_css_status;
  private $ret_message;
  private $ret_url;

  public function __construct() {
    parent::__construct();
  }

  public function index() {
    redirect('fath/dashboard/view', 'refresh');
  }

  public function view() { 
    if ($this->session->userdata('_fath__user_id_')) {
      $data['user_image'] = $this->get_user_image();

      $alert_d = "alert-danger"; $alert_s = "alert-success";
      $sukses_c = "<i class='fa fa-check'></i> Sukses!"; $gagal_c = "<i class='fa fa-remove'></i> Gagal!";

      if(!EMPTY($_POST["simpan"])) { 
        $button_post = $_POST["simpan"];

        if (!EMPTY($button_post) && $button_post=="simpan") {
          if(!EMPTY($_POST["user_username"]))     $user_post = $_POST["user_username"];     else $user_post = "";
          if(!EMPTY($_POST["user_nama_lengkap"])) $nama_post = $_POST["user_nama_lengkap"]; else $nama_post = "";
          if(!EMPTY($_POST["user_email"]))        $email_post = $_POST["user_email"];       else $email_post = "";
          if(!EMPTY($_POST["pass"]))              $pass_post = $_POST["pass"];              else $pass_post = "";
          if(!EMPTY($_POST["repass"]))            $repass_post = $_POST["repass"];          else $repass_post = "";

          // Nama file Foto
          if(!EMPTY($_FILES['fileft']['name']))   $file_ft = $_FILES['fileft']['name']; else $file_ft = "";

          $user_id = $this->session->userdata('_fath__user_id_'); 
          $foto_db = $this->session->userdata('_fath__img_'); 
          $dtuser = $this->peserta->get_user($user_id);

          if (!EMPTY($dtuser)) {
            if (!EMPTY($user_post) && !EMPTY($nama_post)) {

              // Simpan data 
              if (!EMPTY($file_ft) && $file_ft!=$foto_db) {
                //Config untuk upload data
                $config['upload_path'] = FCPATH.'fath-uploads/foto/';
                $config['file_name'] = $file_ft;
                $config['allowed_types'] = 'jpg|jpeg|png';
                $config['max_size'] = 5000;
                if (!file_exists('fath-uploads/foto')) mkdir('fath-uploads/foto', 0777, true);

                //Upload data
                $this->load->library('upload');
                $this->upload->initialize($config);
                if (!$this->upload->do_upload('fileft')) { 
                  $er = $this->upload->display_errors();
                  $file_foto = "";
                } else {
                  $upload_data = $this->upload->data(); // Ambil data dari file yang diupload
                  $file_foto = $upload_data['file_name'];          
                } 
              } elseif (!EMPTY($foto_db)) $file_foto = $foto_db; else $file_foto = "";

              if ((!EMPTY($pass_post) || !EMPTY($repass_post))) {
              // Ubah Password
                if ($pass_post==$repass_post) {
                  $dt = array(  'user_username' => $user_post,
                                'user_password' => $this->user_auth_lib->pwd_encrypt($pass_post),
                                'user_email' => $email_post,
                                'user_image' => $file_foto,
                                'user_nama_lengkap' => $nama_post,
                                'updated_by' => $user_id,
                                'updated_time' => $this->date_today);

                } else { $alert = $alert_d; $notif_head = $gagal_c; $notif_text = "Maaf, Password dan Re-type Password harus sama!"; }
              } else {
              // Ubah Username atau Nama atau Email
                $dt = array(  'user_username' => $user_post,
                              'user_email' => $email_post,
                              'user_image' => $file_foto,
                              'user_nama_lengkap' => $nama_post,
                              'updated_by' => $user_id,
                              'updated_time' => $this->date_today);
              }

              if (!EMPTY($dt)) {
                $this->peserta->update_user($user_id, $dt);

                $alert = $alert_s; $notif_head = $sukses_c; $notif_text = "Berhasil Merubah data Profile. Silahkan logout dan login kembali!";
              }

            } elseif (EMPTY($user_post)) {  $alert = $alert_d; $notif_head = $gagal_c; $notif_text = "Maaf, Username tidak boleh kosong!"; }          
              elseif (EMPTY($nama_post)) {  $alert = $alert_d; $notif_head = $gagal_c; $notif_text = "Maaf, Nama Lengkap tidak boleh kosong!"; }
          } else {                          $alert = $alert_d; $notif_head = $gagal_c; $notif_text = "Maaf, Data Tidak ditemukan!"; }
        } else {                            $alert = $alert_d; $notif_head = $gagal_c; $notif_text = "Maaf, Ada kesalahan pada Sistem!"; }

        $data["notif"] = "<div class='alert $alert alert-dismissible'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                            <h4>$notif_head</h4> <p>$notif_text</p>
                          </div>";
      }

      $this->template->load_view('fath/dashboard/_home',$data);
    } else redirect(base_url('bo'));
  }

  public function get_user_image() {
    if (!EMPTY($this->session->userdata('_fath__user_image_s_'))) {
      $foto = $this->session->userdata('_fath__user_image_s_');
    } else {
      $foto = site_url('fath-assets/images/user-icon.png');
    }

    return $foto;
  }

}
