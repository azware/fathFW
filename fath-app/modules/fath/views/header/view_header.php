<button type="button" id="main-menu-toggle"><i class="navbar-icon fa fa-bars icon"></i><span class="hide-menu-text">HIDE MENU</span></button>
<div class="navbar-inner">
    <div class="navbar-header">
        <a href="" class="navbar-brand">
            <div><img alt="fath" src="<?php echo base_url() ?>fath-assets/images/favicon.png" /></div>
            <?php echo $this->config->item('nama_sistem'); ?>
        </a>
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse"><i class="navbar-icon fa fa-bars"></i></button>
    </div>
    <div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
        <div>
            <div class="right clearfix">
                <ul class="nav navbar-nav pull-right right-navbar-nav">
                    <?php if (!$this->user_auth_lib->is_login()): ?>
                        <li>
                            <a href="<?php echo site_url('fath/signin') ?>" class="dropdown-toggle user-menu">
                                <img src="<?php echo $user_image; ?>" alt="" class="">
                                <span>Login</span>
                            </a>
                        </li>
                    <?php else: ?>					
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle user-menu" data-toggle="dropdown">
                                <img src="<?php echo $user_image; ?>" alt="" class="">
                                <span>
                                    <?php echo $this->session->userdata('_fath__nama_lengkap_'); ?>  
                                    <i> (<?php echo $this->session->userdata('_fath__group_menu_nama_') ?>)</i>
                                </span>                              
                            </a>
                            <ul class="dropdown-menu">                                
                                <li>
                                    <a href="<?php echo site_url('fath/change_group/view_change_group'); ?>" class="xhr dest_subcontent-element">
                                        <i class='dropdown-icon fa fa-random'></i>
                                        &nbsp;&nbsp;Ganti Group
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('fath/change_password/update_change_password'); ?>">
                                        <i class='dropdown-icon fa fa-unlock-alt'></i>
                                        &nbsp;&nbsp;&nbsp;&nbsp;Ganti Password
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="<?php echo site_url('fath/signin/signout_proses') ?>">
                                        <i class="dropdown-icon fa fa-power-off"></i>
                                        &nbsp;&nbsp;&nbsp;Log Out
                                    </a>
                                </li>
                            </ul>
                        </li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </div>
</div>