<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Controller Service
 * @created on : 12-04-2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Service extends MY_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function get_menu() {
    if (!$this->session->userdata('_fath__user_id_')) {
      $this->user_auth_lib->get_session($this->input->get('sesId'), $this->input->get('groupMenu'));
    }

    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, POST');
    header("Access-Control-Allow-Headers: X-Requested-With");
    header('Content-Type: application/json');

    echo json_encode($this->user_auth_lib->usermenu_app($this->input->get('groupMenu') ?
                            $this->encryption_lib->urldecode($this->input->get('groupMenu')) : $this->session->userdata('_fath__group_menu_id_')));
  }

  public function get_klaim_pegawai_upload() {
    if ($this->input->post('username') === 'gkpi' && $this->input->post('password') === 'p0Rt4L20!6#' && $this->input->post('upload')) {
      header("Content-Type: " . mime_content_type($this->config->item('upload_simaster_pegawai') . '' . $this->input->post('upload')));
      echo file_get_contents($this->config->item('upload_simaster_pegawai') . $this->input->post('upload'));
    } else {
      show_404('', FALSE);
    }
  }

  public function ongoing() {
    if (!$this->session->userdata('_fath__user_id_')) {
      $this->user_auth_lib->get_session($this->input->get('sesId'), $this->input->get('groupMenu'));
    }
    
    $this->load->model('Service_m','service');
    $l = $this->service->get_menu_by_id($this->input->get('menu'));
    redirect(base_url() . $l['module_nama'] . '/' . $l['controller_nama'] . '/' . $l['module_detil_function']);
  }

  public function landing() {
    show_404('', FALSE);
  }   
      
  public function get_user_profile() {
    $img = ($this->input->get('img')) ?
            $this->config->item('upload_simaster_user') . $this->encryption_lib->urldecode($this->input->get('img')) :
            realpath('./fath-assets/images/user-icon.png');

    header("Content-Type: " . mime_content_type($img));
    echo file_get_contents($img);
  }
  
  public function service_login() {
    $r = $this->user_auth_lib->do_login(array('username' => $this->input->post('username'), 'password' => $this->input->post('password'),
        'date_today' => $this->date_today,
        'device_id' => $this->input->post('aId')), 'basic');

    if ($r['resId'] == 1) {
      header('Access-Control-Allow-Origin: *');
      header('Access-Control-Allow-Methods: GET, POST');
      header("Access-Control-Allow-Headers: X-Requested-With");
      header('Content-Type: application/json');

      echo json_encode(
              array('sesId' => $this->encryption_lib->urlencode($r['sesId']),
                  'namaLengkap' => $this->session->userdata('_fath__nama_lengkap_'),
                  'groupMenuNama' => $this->session->userdata('_fath__group_menu_nama_'),
                  'userTipeNomor' => $this->session->userdata('_fath__user_tipe_nomor_'),
                  'img' => ($this->session->userdata('_fath__img_') ? $this->encryption_lib->urlencode($this->session->userdata('_fath__img_')) : '' ),
                  'groupMenu' => $this->encryption_lib->urlencode($this->session->userdata('_fath__group_menu_id_'))));
    } else {
      show_404('', FALSE);
    }
  }

}
