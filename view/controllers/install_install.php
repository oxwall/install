
<?php echo install_tpl_feedback(); ?>

<?php
if ( $_assign_vars['dirs'] )
{
?>
<div class="feedback_msg error"> 
    You need to set recursive "write" permissions for these folders:
</div>

<ul class="directories">
    <?php foreach ($_assign_vars['dirs'] as $dir) { ?>
	    <li><?php echo $dir; ?></li>
	<?php } ?>
</ul>

<hr />
<?php
}
?>

<form method="post">
    <div style="<?= $_assign_vars['isConfigWritable'] ? 'display: none;' : ''; ?> text-align: center;">
        <p> Please copy and paste this code replacing the existing one into <b>ow_includes/config.php</b> file.<br />Make sure you do not have any whitespace before and after the code.</p>
        <textarea style="height: 400px; width: 70%;" rows="5" name="configContent" class="config" onclick="this.select();"><?php echo $_assign_vars['configContent']; ?></textarea>
        <input type="hidden" name="isConfigWritable" value="<?= $_assign_vars['isConfigWritable'] ? '1' : '0'; ?>" />
    </div>
    <div style=" color: #626262; font-family: 'Trebuchet MS'; text-align: center; padding: 50px 0 19px 0;"> <span style="padding: 20px; background: none repeat scroll 0 0 #e9e8e7; border-radius: 4px;"> Create a cron job that runs <b>ow_cron/run.php</b> once a minute. (<a target="_blank" href="https://hello.skadate.com/docs/manuals/cron_configuration"><b>?</b></a>)</span> </div>
        <p align="center"><input type="submit" value="Continue" name="continue" style=" margin-bottom: 20px; font-size: 15px; text-transform: uppercase; text-align: center; font-weight: bold; font-family: 'Trebuchet MS'; color: #626262;"/></p>
</form>
