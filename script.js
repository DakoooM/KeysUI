$(function(){
	window.addEventListener('message', function(event) {
		if (event.data.actionhud == "afficher"){
			if (event.data.showhud == true) {
				$('#Acceuil').fadeIn(100); 
                $('#Avant').fadeIn(100);
			} else if (event.data.showhud == false) {
                $("#Acceuil").slideUp(600);
				$('#Acceuil').fadeOut(600);
                $('#Avant').fadeOut(600);
			}
		}
	});
});