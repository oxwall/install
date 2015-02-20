

<?php echo install_tpl_feedback(); ?>
<form method="post">
    <div class="license_content">
        <div style="margin: 80px 0;background: none repeat scroll 0 0 #e9e8e7; border-radius: 4px; padding: 26px 30px 26px 30px; width: 347px;">
            To register your copy of SkaDate please enter your license key received after software purchase. 
            Your license key can be found in the Customer Area. If you have not received or lost your license key, please contact SkaDate Support Team or read more info about <a href="https://hello.skadate.com/docs/manuals/licensing">License key</a>.
        </div>
        <div class="<?php echo install_tpl_feedback_flag('license_key'); ?>">
            <span class="license_number_label">License number</span>
            <input class="license_input" type="text" name="license_key" value="<?php echo @$_assign_vars['data']['license_key']; ?>"/>
        </div>
         <p align="center"><input type="submit" value="Continue" style="font-size: 15px; text-transform: uppercase; text-align: center; font-weight: bold; font-family: 'Trebuchet MS'; color: #626262;"/></p>
    </div>
</form>