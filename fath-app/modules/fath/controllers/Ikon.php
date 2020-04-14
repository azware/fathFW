<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Controller Ikon
 * @created on : 12-04-2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Ikon extends MY_Controller {

  public function __construct() {
    parent::__construct();
    $this->load->library('fath/response');
    $this->load->model('Ikon_m','ikon');
  }

  public function index() {
    redirect('fath/ikon/view_ikon');
  }

  public function view_ikon() {
    $data['kategoriIkon'] = $this->ikon->select_kategori_ikon();
    $data['listIkon'] = $this->ikon->select_ikon();
    $this->load->view('daftar_ikon', $data);
  }

  public function set_ikon($cssIkon) {
    $cssIkon = urldecode($cssIkon);
    $this->response->script("
      $('input[name=\"ikon\"]').val('$cssIkon');
      $('#icon').removeAttr('class');                  
      $('#icon').attr('class','fa $cssIkon');
      $('.modal').last().modal('hide');   
    ");

    $this->response->send();
  }

}
