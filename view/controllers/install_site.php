
<?php echo install_tpl_feedback(); ?>

<form method="post">
	<table class="form">
	    <tr><th colspan="3" style=" padding-top: 80px; padding-bottom: 40px; color: #000; text-transform: uppercase; font-family: 'Trebuchet MS'; ">Site Info</th></tr>
	    <tr>
	        <td class="label">Title</td>
	        <td class="value <?php echo install_tpl_feedback_flag('site_title'); ?>">
	           <input type="text" name="site_title" value="<?php echo @$_assign_vars['data']['site_title']; ?>" />
	        </td>
	        <td class="description"></td>
	    </tr>
	    <tr>
	        <td class="label">Tagline</td>
	        <td class="value <?php echo install_tpl_feedback_flag('site_tagline'); ?>">
	           <input type="text" name="site_tagline" value="<?php echo @$_assign_vars['data']['site_tagline']; ?>" />
	        </td>
	        <td class="description" style="width: 324px; height: 34px; font-family: 'Trebuchet MS'; color: #626262;" >Catchy one-stringed site <br> description (optional)</td>
	    </tr>
	    <tr>
	        <td class="label">URL</td>
	        <td class="value <?php echo install_tpl_feedback_flag('site_url'); ?>">
	           <input type="text" name="site_url" value="<?php echo @$_assign_vars['data']['site_url']; ?>" />
	        </td>
	        <td class="description"></td>
	    </tr>
	    <tr>
	        <td class="label">Root directory</td>
	        <td class="value <?php echo install_tpl_feedback_flag('site_path'); ?>">
	           <input type="text" name="site_path" value="<?php echo @$_assign_vars['data']['site_path']; ?>" />
            </td>
	        <td class="description"></td>
	    </tr>
	    <tr><th colspan="3" style=" padding-top: 40px; padding-bottom: 40px; color: #000; text-transform: uppercase; font-family: 'Trebuchet MS'; " >Site Administrator</th></tr>
	    <tr>
	        <td class="label">Email</td>
	        <td class="value <?php echo install_tpl_feedback_flag('admin_email'); ?>">
	           <input type="text" name="admin_email" value="<?php echo @$_assign_vars['data']['admin_email']; ?>" />
	        </td>
	        <td class="description"></td>
	    </tr>
	    <tr>
	        <td class="label">Username</td>
	        <td class="value <?php echo install_tpl_feedback_flag('admin_username'); ?>">
               <input type="text" name="admin_username" value="<?php echo @$_assign_vars['data']['admin_username']; ?>" />
            </td>
	        <td class="description" style="width: 324px; height: 34px; font-family: 'Trebuchet MS'; color: #626262;" >Letters and digits only</td>
	    </tr>
	    <tr>
	        <td class="label">Password</td>
	        <td class="value <?php echo install_tpl_feedback_flag('admin_password'); ?>">
	           <input type="text" name="admin_password" value="<?php echo @$_assign_vars['data']['admin_password']; ?>" />
	        </td>
	        <td class="description" style="width: 324px; height: 34px; font-family: 'Trebuchet MS'; color: #626262;" >From 2 to 12 characters</td>
	    </tr>
	</table>
	<p align="center"><input type="submit" value="Continue" style=" margin-bottom: 40px; font-size: 15px; text-transform: uppercase; text-align: center; font-weight: bold; font-family: 'Trebuchet MS'; color: #626262;" /></p>

</form>