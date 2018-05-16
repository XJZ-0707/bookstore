function focusObj(id){
	id.style.backgroundColor="#FFCC80";
};
function blurRePwd(id){
	var repwd = id.value;
	var pwd = document.getElementById("pwd");
	if(repwd != document.getElementById("pwd").value){
		alert("两次密码不一致，请重新输入");
		id.style.backgroundColor="#FFF";
	    pwd.style.backgroundColor="#FFF";
	   id.value="";
	   pwd.value= "";
		return false;
	}
	else{
		id.style.backgroundColor="#FFF";
	    pwd.style.backgroundColor="#FFF";
		return true ;
	}
	
};

function blurNotNull(id){
	var val = id.value;
	if(val == ""){
		alert("*号信息为必填，不能为空");
		id.style.backgroundColor="#FFF";
		return false;
	}
	else{
		id.style.backgroundColor="#FFF";
	    return true;
	}
	
};
