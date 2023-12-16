(function(exports){
	let configclick = {"#boxfile .lista":cambiarfondo};

function cambiarfondo(){
	alert('hello word desde click');
}

function click(e){
	let func;
	for(i in configclick){
		if(configclick.hasOwnProperty(i)){
			ss(i).forEach(function(j){
				if(j==e.target){
			e.preventDefault();
			func= window.configclick[i].bind(e.target);
			func();
			}
		})
		}
	}
	
}
exports.configclick = configclick;

document.addEventListener('click',click);
})(window)