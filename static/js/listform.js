/**
* Written by 		: Trương Kim Phụng
* Dated by			: 25/06/2007
* Description		: Đánh dấu hoặc huỷ chọn toàn bộ các checkbox
* Function			: checkAll()
* @param formName	: Tên form đang có dự định thực thi
* @param strName	: Tên trường dữ liệu
* @param strValue	: Giá trị của trường dữ liệu
*/
function checkBoxAll( formName, strName, strValue) {	
	
	for( i=0 ; i < formName.length ; i++)
		if( formName.elements[i].type == 'checkbox' && formName.elements[i].name == strName )
			formName.elements[i].checked = strValue;
			
}
function checkAllHot( formName, strName, strValue) {	
	var frm = document.forms[formName] ;
	for( i=0 ; i < frm.length ; i++)
		if( frm.elements[i].type == 'checkbox' && frm.elements[i].name == strName )
			frm.elements[i].checked = strValue;
	
}


/**
* Written by 			: Trương Kim Phụng
* Dated by				: 25/06/2007
* Description			: Confirm trước khi muốn thực thi hành động xoá dữ liệu
* Function				: confirmDelete()
* @param formName		: Tên form đang có dự định thực thi
* @param actionForm		: Đường dẫn mình sẽ submit
* @param errMsgSelect	: Chuỗi thông báo bắt buộc lựa chọn ít nhất một record
* @param errMsgConfirm	: Chuỗi thông báo tin nhắn confirm
* @return boolean		: 
*/
function confirmDelete(formName, errMsgSelect, errMsgConfirm){
	for(i=0;i < formName.length;i++){
		if(formName.elements[i].type=='checkbox' && formName.elements[i].checked == true) {
			selected = true;
			break;
		} else {
			selected = false;
		}
	}
	if( !selected ) {
		alert(errMsgSelect);
	} else {
		if ( confirm(errMsgConfirm) == true ) {				
			formName.submit();
			return true;
		} else {
			return false;
		}
	}
}
/**
* Written by 		: Trương Kim Phụng
* Dated by			: 26/06/2007
* Description		: Thông báo
* Function			: alertNotify()
* @param msgNotify	: Tin nhắn muốn thông báo
*/
function alertNotify( msgNotify ){
	alert( msgNotify );
}
/**
* Written by 		: Trương Kim Phụng
* Dated by			: 26/06/2007
* Description		: Thông báo
* Function			: addNew()
* @param formName	: Tên form đang sử dụng
* @param actionForm	: Tên file mình sẽ submit
*/
function actionAddNew( formName, actionForm ){
	formName.action	= actionForm;
	formName.submit();
}
/**
* Written by 		: Trương Kim Phụng
* Dated by			: 06/07/2007
* Description		: Kiểm tra tính hợp lệ của ngày nhập liệu
* Function			: function isValidDate
* @param strDate	: Ngày cần kiểm tra
* @param strMessage1: Thông báo tin ra
* @param strMessage2: Thông báo tin ra
*/
function checkDate( strDate, strMessage1, strMessage2 ) 
{
 /**gia tri nhap vao phai la dd/mm/yyyy*/
	var arrayDATE;
    var dtest;
   	arrayDATE = strDate.split("/"); 
	/** ngay cua he thong la mm/dd/yyyy nen phai doi ra ngay he thong */
	dtest = new Date(arrayDATE[1] + "/" + arrayDATE[0] + "/" + arrayDATE[2]);   
    if (dtest.getDate() != arrayDATE[0] || dtest.getMonth() +1 != arrayDATE[1] || dtest.getFullYear() != arrayDATE[2]) 
	{
    	alert( strMessage1 );   
		return false;
    }
	if (arrayDATE[2]<=1900) 
	{
	   /**neu nam nho hon 1900 thi se ko insert duoc vao sql server*/
		alert(strMessage2);  
		return false;
	}
	return true;
}
