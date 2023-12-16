document.onkeydown = ctrole

	function ctrole(e){
		console.log(e)
	if(e.ctrlKey==true && e.key=='l'){
		e.preventDefault()
		alert('hi')
	}
}
document.onkeydown = function(e){
  if(e.altKey==true && e.key=='t'){
    e.preventDefault();
    alert('con altKey funciona')
  }
}