// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$('.carousel').carousel({
    interval: 3000
})

jQuery(document).ready(function() {
	jQuery('#imovel_estado_id').change(function() {
        var data=$('#imovel_estado_id').val();
		$.ajax({
            type: "GET",
             url: "http://"+location.host+"/imovels/dynamic_cidades/"+data,
            data: data,
            dataType:"script"
      	});
      	//$('#imovels_cidade_update').load("http://"+location.host+"/imovels/dynamic_cidades/"+data);
   });
   
});  
