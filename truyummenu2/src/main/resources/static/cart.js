/**
 * 	var tdd = document.getElementById(arg1);
	var texttd = "Item " + arg1 + " added to cart ";
	var text = document.createTextNode(texttd);
	tdd.appendChild(text);
 */

var xhttp = new XMLHttpRequest();
function addCart(arg1) {
	console.log("id is " + arg1);
	
	xhttp.open("GET", "addcart?id=arg1", true);
	xhttp.send();
	console.log(xhttp.statusText);



}

function addCartJQ(arg1) {
	console.log("Id is " + arg1);
	
	var path =  "addcart?id="+arg1;
	var texttd = "Item " + arg1 + " added to cart ";
	$.ajax({url: path, success: function(result){
	    $(arg1).html(texttd);
	    console.log(result);
	    },
	    error: function(xhr){
	    	console.log("An error occured: " + xhr.status + " " + xhr.statusText);
	     }});
}