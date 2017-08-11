<?php 
	//User Password 
	function Encrypt($password)
	{
		return md5($password);
	}
	
	//Check if Admin User is login
	function is_admin_login()
	{
		if ( isset($_SESSION['cms_user_id']) )
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	function acl_premissions($modulename,$access_level)
	{
		$obj = & get_instance();
		
		if ( ! is_admin_login() )
		{
			message_handler( 'Login session expired','info' );
			redirect(base_url(),'refresh');
			
		}else{
		
			$this_user_permission	=	$_SESSION['cms_group_permissions'];
			//Check User can access this module
			if(!empty($this_user_permission[$modulename])==true){
				$response	=	 in_array($access_level,$this_user_permission[$modulename]);	//CHECK IF USER CAN ACCES THIS MODULE WITH THESE PERMISSION
				
					if(!empty($response)==true){
						return true;
					}else{
						//message_handler('You are not allowed to access this section!','info');
						redirect('/Submissions','refresh');
					}
			}else{
				//Redirect User to its dashboard
				message_handler('You are not allowed to access this section!','info');
				redirect('/Submissions','refresh');
			}
		}
	}
	
	
	function roles_dashboard($role){
		
		 switch ($role)	{
			case 'super_moderator':
				
				break;
			case 'dep_moderator':
				redirect('/Submissions','refresh');
				break;
			case 'entity_supervisor':
				redirect('/Submissions','refresh');
				break;
			case 'admin':
				redirect('/Submissions','refresh');
				break;
			case 'dg':
				redirect('/Submissions','refresh');
				break;
			case 'leader':
				redirect('/Submissions','refresh');
				break;
				
		 }		
	}
	
	
	
	//for getting url segment
	function message_handler($message='', $type=''){
	
		if(isset($_SESSION['message_handler']) && $_SESSION['message_handler'] != '')
		{
			$message 	= $_SESSION['message_handler'];
			$type 		= $_SESSION['message_type_handler'];
	
			if($type == 'info'){
				?>
				<div class="alert alert-info alert-dismissable custom_alert">
					<button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
					<?php echo $message;?>
				</div>		
				<?php
			}else if($type == 'error'){
				?>		
				<div class="alert alert-danger alert-dismissable custom_alert">
					<button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
					<?php echo $message;?>
				</div>		
				<?php
			}else if($type == 'success'){
				?>		
				<div class="alert alert-success alert-dismissable custom_alert">
					<button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
					<?php echo $message;?>
				</div>		
				<?php
			}
			unset($_SESSION['message_type_handler']);
			unset($_SESSION['message_handler']);
		}else{		
			$_SESSION['message_handler'] 		= $message;
			$_SESSION['message_type_handler'] 	= $type;
		}
	}

?>