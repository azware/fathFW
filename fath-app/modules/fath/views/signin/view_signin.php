<?php $az = "fath-assets"; $bw = "/bower_components"; $ani = "fath-plugins/animated-page-transition/";
$csrf_token = $this->security->get_csrf_token_name(); $csrf_hash = $this->security->get_csrf_hash(); ?>

<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Login - <?php echo $this->config->item('nama_sistem'); ?> Framework</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">

    <link href="<?php echo base_url(); ?>fath-assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url(); ?>fath-assets/plugins/fontawesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url(); ?>fath-assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url(); ?>fath-assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url(); ?>fath-assets/stylesheets/themes.min.css" rel="stylesheet" type="text/css">

    <link rel="shortcut icon" href="<?php echo base_url(); ?>fath-assets/images/favicon.png" />
    <script src="<?php echo base_url(); ?>fath-assets/javascripts/jquery-2.0.3.min.js"></script>
      
    <!-- FATH css -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(''.$az.'/style.css');?>">

    <!-- FATH Plugins Animation css -->
    <link rel="stylesheet" href="<?php echo base_url(''.$ani.'');?>css/style.css"> <!-- Resource style -->
    <script src="<?php echo base_url(''.$ani.'');?>js/modernizr.js"></script> <!-- Modernizr -->

  </head>

  <body class="theme-clean page-signin">
    <div id="cover-spin"></div>
    <script>var init = [];</script>
    <div id="page-signin-bg">
      <img src="<?php echo base_url(); ?>fath-images/back.jpg" alt=""/>
    </div>

    <div class="signin-container" style="height: 10%; padding-top: 100px;">
      <div class="signin-info" style="text-align: center; background-color: rgba(96,92,168,.7);">
        <a class="logo" href="#">
          <img style="margin-bottom: 10px;" src="<?php echo base_url(); ?>fath-assets/images/azware_logo.jpg" alt="Logo FATH" height="120" width="120" /><br>
          <?php echo $this->config->item('nama_sistem');?><br>
        </a> <div class="spasi-15"> <hr class="yellow2"> </div>
        <div class="slogan"> <i><h6><?php echo $this->config->item('deskripsi_sistem'); ?></h6> 
          <h5><b> <?php echo $this->config->item('factory'); ?> </b></h5></i> </div>
      </div>
      <div class="signin-form">
        <form action="<?php echo $form_action; ?>" method="post" autocomplete="off">
          <input type="hidden" name="<?php echo $csrf_token;?>" value="<?php echo $csrf_hash;?>">

          <div class="signin-text"> <span>Masukkan Username dan Password</span> </div>

          <?php if (validation_errors()): ?>
            <div class="alert alert-danger alert-dark" style="padding: 5px;">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <h4><i class="icon fa fa-ban"></i> Error !</h4><?php echo validation_errors(); ?>
            </div>
          <?php endif; ?>

          <div class="form-group w-icon">
            <input type="text" name="username" class="form-control input-lg" placeholder="Username" value='<?php echo set_value('username'); ?>'/>
            <span class="fa fa-user signin-form-icon"></span>
          </div>
          <div class="form-group w-icon">
            <input type="password" name="password" class="form-control input-lg" placeholder="Password" value='<?php echo set_value('password'); ?>'/>
            <span class="fa fa-lock signin-form-icon"></span>
          </div> 
          <div class="form-actions" style="margin-top: 30px;">    
            <div class="input-group">
                <input type="text" id="captcha" name="captcha" class="form-control input-lg" placeholder="captcha" <?php
                //if (ENVIRONMENT !== 'production') { echo 'value="' .$this->session->userdata('mycaptcha'). '"'; } ?> />
                <div class="input-group-addon" style="background-color: #ecf0f5;"> 
                  <span id="captcha-img" style="padding-right: 5px;"> <?php echo $image; ?> </span>                  
                  <a class="btn btn-info xhrd dest_captcha-img" href="<?php echo site_url('fath/signin/reload_captcha'); ?>" title="Refresh Captcha"><span class="btn-label icon fa fa-refresh"></span></a> 
                </div>
            </div>

            <div class="row">
              <div class="col-md-4">
              </div>
              <div class="col-md-8">
              </div>
            </div>
          </div>
          <div class="form-actions">
            <button class='btn btn-lg btn-login btn-block btn-success' type='submit' name='submit' value="SIGN IN" onclick="$('#cover-spin').show(0)">
              <i class='fa fa-sign-in'></i> &nbsp;SIGN IN
            </button>
          </div>
        </form>
      </div> 
    </div>
    <div class="not-a-member" style="padding-top: 15px; color: #605ca8;">
      <span class="text-muted" style="color: #605ca8;">Copyright  &copy;
        <b><a href="#" target="_blank" style="text-decoration: none; color: #053daf;"><?php echo $this->config->item('azware'); ?></a></b> 2018
      </span> <br/>
      <small><?php 
        echo $this->config->item('version')." | 
             <a href=\"#\" target=\"_blank\" style=\"text-decoration: none; color: #053daf;\">".$this->config->item('factory')."</a> | 
             <a href=\"#\" target=\"_blank\" style=\"text-decoration: none; color: #605ca8;\">".$this->config->item('devby')."</a>"; ?>
      </small>
    </div>  

    <!-- FATH Plugins Animation js -->
    <div class="cd-cover-layer"></div>
    <div class="cd-loading-bar"></div>
    <script src="<?php echo base_url(''.$ani.'');?>js/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url(''.$ani.'');?>js/main.js"></script> <!-- Resource jQuery -->

    <script src="<?php echo base_url();?>fath-assets/javascripts/bootstrap.min.js"></script>
    <script src="<?php echo base_url();?>fath-assets/javascripts/pixel-admin.min.js"></script>
    <script src="<?php echo base_url();?>fath-assets/javascripts/ajax.js"></script>
    <script type="text/javascript">

      // On Load Page
      $(window).on('load', function() { $("#cover-spin").fadeOut(200); });
      function loadpage() { $(window).load(); }
      setTimeout(loadpage, 1000);

      function menu_selected() {}
      init.push(function () {
        var $ph = $('#page-signin-bg'),
            $img = $ph.find('> img');

        $(window).on('resize', function () {
          $img.attr('style', '');
          if ($img.height() < $ph.height()) {
            $img.css({
              height: '100%',
              width: 'auto'
            });
          }
        });
      });
      window.PixelAdmin.start(init);
      $(document).ready(function () { $("input[name='username']").focus(); });
    </script>
  </body>
</html>
