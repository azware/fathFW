<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Controller group
 * @created on : 12-04-2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Group extends FATH_Controller {

  private $ret_css_status;
  private $ret_message;
  private $ret_url;

  public function __construct() {
    parent::__construct();
    $this->load->model('Group_m','group');
    $this->load->library('form_validation');
  }

  public function index() {
    redirect('fath/group/view_group');
  }

  public function view_group($offset = 0) {
    $this->load->library('fath/jquery_pagination');
    $config['base_url'] = site_url('fath/group/view_group');
    $config['per_page'] = 20;
    $config['url_location'] = 'subcontent-element';
    $config['full_tag_open'] = '<ul class="paging urlactive">';
    $config['uri_segment'] = 4;

    $config['total_rows'] = $this->group->num_rows_select_group();

    $this->jquery_pagination->initialize($config);
    $data['halaman'] = $this->jquery_pagination->create_links();
    $data['content'] = $this->group->select_group($config['per_page'], $offset);
    $data['offset'] = $offset;

    $this->template->load_view('view_group', $data);
  }

  public function add_group() {
    $menuList = $this->group->select_menu_list();

    $actionList = array(
      array('id' => 'c', 'name' => 'create'),
      array('id' => 'r', 'name' => 'read'),
      array('id' => 'u', 'name' => 'update'),
      array('id' => 'd', 'name' => 'delete')
    );

    $action = array();
    $list = array();
    $access = array();

    foreach ($menuList as $val) {
      $list[] = array(
        'id' => $val['id'],
        'parent_id' => $val['parent_id'],
        'title' => $val['label']
      );
    }

    $data['menu'] = $this->get_menu($list, 0, $access, $action, $actionList);
    $this->template->load_view('tambah_group', $data);
  }

  public function add_group_proses() {
    $this->form_validation->set_rules('nmGroup', 'nama Group', 'trim');
    $this->form_validation->set_rules('access', 'Access', 'trim|required');

    $this->form_validation->set_message('required', 'Menu harus dipilih');

    if ($this->form_validation->run($this) == FALSE) {
      $this->add_group();
    } else {

      $rs = $this->group->insert_group();

      if ($rs) {
        $this->ret_css_status = 'success';
        $this->ret_message = 'Tambah data berhasil';
      } else {
        $this->ret_css_status = 'danger';
        $this->ret_message = 'Tambah data gagal';
      }

      $this->ret_url = site_url('fath/group/view_group');
      echo json_encode(array('status' => $this->ret_css_status, 'msg' => $this->ret_message, 'url' => $this->ret_url));
    }
  }

  public function update_group($id_group = null) {
    $access = array();
    $action = array();
    $result = $this->group->select_access_list($id_group);

    foreach ($result as $val) {
      $access[] = $val['menu_id'];
      $tmp = str_split($val['actions']);
      if (!empty($tmp)) {
        foreach ($tmp as $act) {
          $action[$val['menu_id']][$act] = $act;
        }
      }
    }

    $menuList = $this->group->select_menu_list();
    $actionList = array(
      array('id' => 'c', 'name' => 'create'),
      array('id' => 'r', 'name' => 'read'),
      array('id' => 'u', 'name' => 'update'),
      array('id' => 'd', 'name' => 'delete')
    );

    $list = array();
    foreach ($menuList as $val) {
      $list[] = array(
        'id' => $val['id'],
        'parent_id' => $val['parent_id'],
        'title' => $val['label']
      );
    }

    $data['menu'] = $this->get_menu($list, 0, $access, $action, $actionList);
    $data['array'] = $this->group->select_group_by_id($id_group);
    $this->template->load_view('ubah_group', $data);
  }

  public function update_group_proses() {
    $this->form_validation->set_rules('nmGroup', 'nama Group', 'trim');
    $this->form_validation->set_rules('id', 'ID Group', 'trim|required');
    $this->form_validation->set_rules('access', 'Menu', 'trim|required');

    $this->form_validation->set_message('required', 'Field %s harus dipilih');

    $groupsId = $this->input->post('id');
    $nmGroup = $this->input->post('nmGroup');
    $accesspost = $this->input->post('access');
    $access = explode(',', $accesspost);

    if ($this->form_validation->run($this) == FALSE) {
      $this->update_group() . '/' . $groupsId;
    } else {
      $rs = $this->group->update_group();

      if ($rs) {
        $this->ret_css_status = 'success';
        $this->ret_message = 'Ubah data berhasil';
      } else {
        $this->ret_css_status = 'danger';
        $this->ret_message = 'Ubah data gagal';
      }

      $this->ret_url = site_url('fath/group/view_group');
      echo json_encode(array('status' => $this->ret_css_status, 'msg' => $this->ret_message, 'url' => $this->ret_url));
    }
  }

  public function delete_group($id_group = null) {
    // cek apakah masih ada user yang terdaftar dalam group
    $cekUserAccess = $this->group->cek_user_access($id_group);

    if ($cekUserAccess > 0) {
      $this->ret_css_status = 'danger';
      $this->ret_message = 'Hapus data gagal, masih ada grant ke user access';
    } else {
      $rs = $this->group->delete_group($id_group);
      if ($rs) {
        $this->ret_css_status = 'success';
        $this->ret_message = 'Hapus data berhasil';
      } else {
        $this->ret_css_status = 'danger';
        $this->ret_message = 'Hapus data gagal';
      }
    }

    $this->ret_url = site_url('fath/group/view_group');
    echo json_encode(array('status' => $this->ret_css_status, 'msg' => $this->ret_message, 'url' => $this->ret_url));
  }

  public function get_menu($items, $root_id = 0, $data = NULL, $action, $actionList) {
    $this->html = array();
    $this->items = $items;

    foreach ($this->items as $item) {
        $children[$item['parent_id']][] = $item;
    }

    $loop = !empty($children[$root_id]);
    $parent = $root_id;
    $parentStack = array();
    $this->html[] = '<ul>';
    $actionLabel = 'action';
    while ($loop && (($option = each($children[$parent])) || ($parent > $root_id))) {
      if ($option === false) {
        $parent = array_pop($parentStack);
        $this->html[] = str_repeat("\t", (count($parentStack) + 1) * 2) . '</ul>';
        $this->html[] = str_repeat("\t", (count($parentStack) + 1) * 2 - 1) . '</li>';
      } elseif (!empty($children[$option['value']['id']])) {
        $tab = str_repeat("\t", (count($parentStack) + 1) * 2 - 1);
        $this->html[] = $tab
                . '<li id="' . $option['value']['id'] . '" class="">'
                . '<a>'
                . $option['value']['title']
                . '</a>';
        $this->html[] = $tab . "\t" . '<ul class="sub">';
        array_push($parentStack, $option['value']['parent_id']);
        $parent = $option['value']['id'];
      } else {
        $tab = str_repeat("\t", (count($parentStack) + 1) * 2 - 1);
        $act = '<div style="padding-left: 10px;">';
        $label = array();

        foreach ($actionList as $val) {
          $allow = false;
          if (!empty($action[$option['value']['id']]) AND is_array($action[$option['value']['id']]) AND in_array($val['id'], $action[$option['value']['id']]))
              $allow = true;

          $act .= '<label class="checkbox"><input class="check_action" id="check_' . $option['value']['id'] . '_' . $val['id'] . '" type="checkbox" name="action[' . $option['value']['id'] . '][' . $val['id'] . ']" value="' . $val['id'] . '" ' . ($allow ? 'checked="checked"' : '') . '/> ' . $val['name'] . '</label>';

          $label[] = '<span class="' . ($allow ? '' : 'label-disabled') . '" id="label_' . $option['value']['id'] . '_' . $val['id'] . '">' . $val['name'] . '</span>';
        }
        $act .= '</div>';
        $this->html[] = $tab
                . '<li id="' . $option['value']['id'] . '" class="' . (in_array($option['value']['id'], $data) ? 'jstree-checked' : 'jstree-unchecked') . '">'
                . ' <div id="data_' . $option['value']['id'] . '" class="modal fade">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3>' . $actionLabel . '</h3>
                          </div>
                          <div class="modal-body">' . $act . '</div>
                        </div>
                      </div>
                    </div>'
                . '<a data-toggle="modal" data-original-title="Action" href="#data_' . $option['value']['id'] . '" data-menuid="' . $option['value']['id'] . '">'
                . $option['value']['title']
                . '</a>'
                . '</li>';
      }
    }
    $this->html[] = '</ul>';
    return implode("\r\n", $this->html);
  }

}

/* End of file group.php */
/* Location: ./dash-app/modules/group/controllers/group.php */