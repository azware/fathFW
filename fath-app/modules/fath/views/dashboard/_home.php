<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<div class="content-wrapper">
  
  <!-- Main content -->
  <section class="content">    

    <div class="row">
      <div class="col-lg-12">

        <?php if (!EMPTY($notif)) echo $notif; echo $this->breadcrump(); ?>
        <div class="panel">
          <div class="panel-body">
            <div class="content-welcome">
              <img alt="" src="<?php echo $user_image; ?>"> 
              <h2 class="head">
                 Selamat datang
              </h2>
              <h2 class="head2">
                <b><?php echo $this->session->userdata('_fath__nama_lengkap_'); ?></b>
              </h2>
              <hr>
              <h2 class="heading2">
                Group : <b>(<?php echo $this->session->userdata('_fath__group_menu_nama_') ?>)</b>
              </h2>
            </div>
          </div>
        </div>

      </div>
    </div>

  </section>

</div>