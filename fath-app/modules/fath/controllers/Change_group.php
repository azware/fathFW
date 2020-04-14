<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Controller Change_group
 * @created on : 11-04-2018
 * @author Azzam Najib Habibie
 * DEV-MASTER
 */

class Change_group extends FATH_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function index() {
    redirect('fath/change_group/view_change_group');
  }

  public function view_change_group() {
    $data['access'] = $this->user_auth_lib->select_user_access_by_user_id($this->user_id);

    $this->template->load_view('view_change_group', $data);
  }

  public function change_group_proses() {
    if ($this->user_auth_lib->change_session($this->user_id, $this->encryption_lib->urldecode($this->input->get('groupMenu')),
      urlencode($this->input->get('groupMenuNama')),
      urlencode($this->input->get('userTipeNomor')))) {
      $this->user_auth_lib->restrict();
    }
    
    redirect('change_group');
  }

}

/* End of file change_group.php */
/* Location: ./dash-app/modules/change_group/controllers/change_group.php */
