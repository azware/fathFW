<?php echo $this->breadcrump(); ?>

<div class="row">
    <?php foreach ($access as $aks) : ?>
        <div class="col-sm-2">
            <div class="stat-panel">
                <div class="stat-row">
                    <div class="stat-cell bg-<?php echo ($this->session->userdata('_fath__group_menu_id_') === $aks["group_menu_id"] &&
                            $this->session->userdata('_fath__user_tipe_nomor_') === $aks["user_tipe_nomor"]) ? "info" : "default"; ?>
                         no-padding text-center text-slg">
                        <i class="fa fa-user"></i>
                    </div>
                </div>
                <div class="stat-row">
                    <div class="stat-cell bordered no-border-t text-center text-lg">
                        <small>
                            <small>
                                <a href="<?php echo site_url("fath/change_group/change_group_proses?groupMenu=" . 
                                        $this->encryption_lib->urlencode($aks["group_menu_id"]).'&groupMenuNama='.
                                        $aks["group_menu_nama"].'&userTipeNomor='.                                        
                                        $aks["user_tipe_nomor"]); ?>">
                                    <?php echo ucfirst(strtolower($aks["group_menu_nama"])); ?>
                                    <?php if($aks['user_tipe_nomor']): ?>
                                        <br /><i>(<?php echo $aks['user_tipe_nomor']; ?>)</i>
                                    <?php endif; ?>
                                </a>	
                            </small>
                        </small>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>	
</div>