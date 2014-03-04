<?php
class UserController extends Zend_Controller_Action
{

	public function changepassAction()
	{
		$objStorage = new Zend_Auth_Storage_Session(SESSION_AUTH_ADMIN);
		$AppUI		= $objStorage->read();
		if(!($AppUI->id>0)){
			$this->_redirect(HOST_ADMIN.'/user/login');
		}
		$this->view->AppUI	= $AppUI;
	}
	
	public function dochangeAction()
	{
		$objStorage = new Zend_Auth_Storage_Session(SESSION_AUTH_ADMIN);
		$AppUI		= $objStorage->read();
		if(!($AppUI->id>0)){
			$this->_redirect(HOST_ADMIN.'/user/login');
		}
		$this->view->AppUI	= $AppUI;
		$objUser		= new User();
		$sOldPass = $this->getRequest()->getParam('password');
        $sNewPass = $this->getRequest()->getParam('new-password');
		if(md5($sOldPass)==$AppUI->password)
		{	
			$objUser->updateUser(array('password'=>md5($sNewPass)), 'id='. $AppUI->id);
		}
		$this->_redirect(HOST_ADMIN.'/user/logout');
	}
	
	public function loginAction()
	{
		
	}
	
	public function logoutAction()
	{
		unset($_SESSION[SESSION_AUTH_ADMIN]);
		$this->_redirect(HOST_ADMIN);
	}
	
	public function dologinAction()
	{
		$objRequest 	= $this->_request;
		$strUser 	 	= $objRequest->getParam('txtUserName', '');
		$strPassword 	= $objRequest->getParam('txtPassWord', '');
		$objUser		= new User();
		$arrUser 		= $objUser->getInfoUser($strUser);
		if(count($arrUser)>0)
		{
			if(md5($strPassword)==$arrUser->password) {	
				$objStorage = new Zend_Auth_Storage_Session(SESSION_AUTH_ADMIN);
				$objStorage->write($arrUser);
				$this->_redirect(HOST_ADMIN);
				exit();
			} else {
				$this->_redirect(HOST_ADMIN.'/user/login?error=2');
			}
		} else {
			$this->_redirect(HOST_ADMIN.'/user/login?error=1');
		}
	}
	
}
?>