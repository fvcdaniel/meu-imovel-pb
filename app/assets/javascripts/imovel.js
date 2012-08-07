jQuery(document).ready(function() {
	jQuery('#imovel_estado_id').change(function() {
        var data=$('#imovel_estado_id').val();
		$.ajax({
            type: "GET",
             url: "http://"+location.host+"/imovels/dynamic_cidades/"+data,
            data: data,
            dataType:"script"
      	});
   });
   jQuery('#imovel_cidade_id').change(function() {
        var data=$('#imovel_cidade_id').val();
		$.ajax({
            type: "GET",
             url: "http://"+location.host+"/imovels/dynamic_bairros/"+data,
            data: data,
            dataType:"script"
      	});
   });
}); 