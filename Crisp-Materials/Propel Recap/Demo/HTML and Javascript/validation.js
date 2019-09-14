function validate(){
	var name = document.frmRegister.txtName.value;
	alert("Thanks "+name+" for registration.");
	var regDate = document.frmRegister.dtReg.value;
	var email = document.frmRegister.txtEmail.value;
	var gender = document.frmRegister.rdGender.value;
	var city = document.frmRegister.ddCity.value;
	var win = window.open();
	var newDocument = win.document;
	newDocument.write("<h1>Registration Details</h2>");
	newDocument.write("<br/>Date of Registration :"+regDate);
	newDocument.write("<br/>Gender :"+gender);
	newDocument.write("<br/>Email given for Registration :"+email);
	newDocument.write("<br/>City :"+city);
}