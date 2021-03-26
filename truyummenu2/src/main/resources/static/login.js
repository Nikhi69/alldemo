/**
 * 
 */

 function validateForm() {
    var x = document.forms["myForm"]["uname"].value;
    
    // console.log("x is"+x);
    
   
    if (x == "") {
      document.getElementById("error").innerHTML="Username Required...!";
      // alert("Name must be filled out");
      return false;
    }
    var y = document.forms["myForm"]["pwd"].value;
    if(y == ""){
      document.getElementById("error1").innerHTML="Password Required..!";
      return false;
  
    }

    return true;
}