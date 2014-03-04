<?php
class Mail
{
	private $_objEngine		= null;
	private $_arrAccount	= null;
	
	public function __construct()
	{
		$this->_arrAccount	= array
		(
			'nameFrom'	=> 'Vip Lazada',
			'mailFrom'	=> 'vip@lazada.vn'
		);
	}
	
	public function send($p_strSubject, $p_strBody, $p_strMailTo, $p_strNameTo)
	{
		$p_strSubject	= Common_FCommon::setConvertNoVn($p_strSubject, 2);
		$p_strBody		= Common_FCommon::setConvertNoVn($p_strBody, 2);
		$p_strNameTo	= Common_FCommon::setConvertNoVn($p_strNameTo);
		
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= 'To: '.$p_strMailTo. "\r\n";
		$headers .= 'From: '.$this->_arrAccount['nameFrom'].' <'.$this->_arrAccount['mailFrom'].'>' . "\r\n";
		@mail($p_strMailTo, $p_strSubject, $p_strBody, $headers);
	}
    
    static function mail_utf8($to, $subject = '(No subject)', $message = '', $from='', $from_name='', $header = '') {
        $header_ = 'MIME-Version: 1.0' . "\r\n" . 'Content-type: text/html; charset=UTF-8' . "\r\n";
        $header_ .= 'From: '.$from_name.' <'.$from.'>' . "\r\n";
        @mail($to, '=?UTF-8?B?'.base64_encode($subject).'?=', $message, $header_ . $header);
    }
}
?>