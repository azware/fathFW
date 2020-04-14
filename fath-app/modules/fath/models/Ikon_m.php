<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model Ikon
 * @created : 16 Mei 2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Ikon_m extends CI_Model {

  public $table = 'fath_css_icon';
  public $primary_key = 'id';

  public function __construct() {
    parent::__construct();
    $this->user_id = $this->session->userdata('_fath__user_id_');
    $this->date_today = date("Y-m-d H:i:s");
  }

  public function select_kategori_ikon() {
    $this->db->select('css_icon_kategori');
    $this->db->group_by('css_icon_kategori');
    return $this->db->get($this->table)->result_array();
  }

  public function select_ikon() {
    return $this->db->get($this->table)->result_array();
  }

}
