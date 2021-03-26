$(document).ready(function () { 
	
// Validate Username 
	$('#usercheck').hide();	 
	let usernameError = true; 
	$('#username').keyup(function () { 
		validateUsername(); 
	}); 
	
	function validateUsername() { 
	let usernameValue = $('#username').val(); 
	if (usernameValue.length == '') { 
	$('#usercheck').show(); 
		usernameError = false; 
		return false; 
	} 
	else if((usernameValue.length < 3)|| 
			(usernameValue.length > 10)) { 
		$('#usercheck').show(); 
		$('#usercheck').html 
("**length of username must be between 3 and 10"); 
		usernameError = false; 
		return false; 
	} 
	else { 
		$('#usercheck').hide(); 
	} 
	} 

// Validate Firstname 
	$('#firstcheck').hide();	 
	let firstnameError = true; 
	$('#firstname').keyup(function () { 
		validateFirstname(); 
	}); 
	
	function validateFirstname() { 
	let firstnameValue = $('#firstname').val(); 
	if (firstnameValue.length == '') { 
	$('#firstcheck').show(); 
		firstnameError = false; 
		return false; 
	} 
	else if((firstnameValue.length < 3)|| 
			(firstnameValue.length > 10)) { 
		$('#firstcheck').show(); 
		$('#firstcheck').html 
("**length of firstname must be between 3 and 10"); 
		firstnameError = false; 
		return false; 
	} 
	else { 
		$('#firstcheck').hide(); 
	} 
	} 
	
	
	// Validate Lastname 
	$('#lastcheck').hide();	 
	let lastnameError = true; 
	$('#lastname').keyup(function () { 
		validateLastname(); 
	}); 
	
	function validateLastname() { 
	let lastnameValue = $('#lastname').val(); 
	if (lastnameValue.length == '') { 
	$('#lastcheck').show(); 
		lastnameError = false; 
		return false; 
	} 
	else if((lastnameValue.length < 3)|| 
			(lastnameValue.length > 10)) { 
		$('#lastcheck').show(); 
		$('#lastcheck').html 
("**length of lastname must be between 3 and 10"); 
		lastnameError = false; 
		return false; 
	} 
	else { 
		$('#lastcheck').hide(); 
	} 
	}
	
// Validate Password 
	$('#passcheck').hide(); 
	let passwordError = true; 
	$('#password').keyup(function () { 
		validatePassword(); 
	}); 
	function validatePassword() { 
		let passwrdValue = 
			$('#password').val(); 
		if (passwrdValue.length == '') { 
			$('#passcheck').show(); 
			passwordError = false; 
			return false; 
		} 
		if ((passwrdValue.length < 3)|| 
			(passwrdValue.length > 10)) { 
			$('#passcheck').show(); 
			$('#passcheck').html 
("**length of your password must be between 3 and 10"); 
			$('#passcheck').css("color", "red"); 
			passwordError = false; 
			return false; 
		} else { 
			$('#passcheck').hide(); 
		} 
	} 
		
// Validate Confirm Password 
	$('#conpasscheck').hide(); 
	let confirmPasswordError = true; 
	$('#confirm-password').keyup(function () { 
		validateConfirmPasswrd(); 
	}); 
	function validateConfirmPasswrd() { 
		let confirmPasswordValue = 
			$('#confirm-password').val(); 
		let passwrdValue = 
			$('#password').val(); 
		if (passwrdValue != confirmPasswordValue) { 
			$('#conpasscheck').show(); 
			$('#conpasscheck').html( 
				"**Password didn't Match"); 
			$('#conpasscheck').css( 
				"color", "red"); 
			confirmPasswordError = false; 
			return false; 
		} else { 
			$('#conpasscheck').hide(); 
		} 
	} 
	
// Submitt button 
	$('#submitbtn').click(function () { 
		validateUsername(); 
		validateFirstname();
		validateLastname();
		validatePassword(); 
		validateConfirmPasswrd(); 
		validateEmail(); 
		if ((usernameError == true) && 
		(firstnameError == true) && 
		(lastnameError == true) && 
			(passwordError == true) && 
			(confirmPasswordError == true)
			) { 
			return true; 
		} else { 
			return false; 
		} 
	}); 
}); 
 