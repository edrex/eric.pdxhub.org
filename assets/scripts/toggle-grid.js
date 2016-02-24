(function() {
  window.onload = function() {
    var elt = document.getElementsByClassName('container')[0];
    document.body.onkeypress = function(e) {
      if (e.keyCode == 103 || e.charCode == 103) {
        console.log('agdsfa');
      	var dev = elt.getAttribute('data-development-grid');
      	if (dev === null || dev == 'hide') {
      	  elt.setAttribute('data-development-grid', 'show');
      	}
      	else {
      	  elt.setAttribute('data-development-grid', 'hide');
      	}
      }
    }
  }
})();