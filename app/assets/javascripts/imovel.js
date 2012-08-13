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
   
   // We only want these styles applied when javascript is enabled
	$('div.navigation').css({'width' : '300px', 'float' : 'left'});
	$('div.content').css('display', 'block');

	// Initially set opacity on thumbs and add
	// additional styling for hover effect on thumbs
	var onMouseOutOpacity = 0.67;
	$('#thumbs ul.thumbs li').opacityrollover({
		mouseOutOpacity:   onMouseOutOpacity,
		mouseOverOpacity:  1.0,
		fadeSpeed:         'fast',
		exemptionSelector: '.selected'
	});
	
	// Initialize Advanced Galleriffic Gallery
	var gallery = $('#thumbs').galleriffic({
		delay:                     2500,
		numThumbs:                 15,
		preloadAhead:              10,
		enableTopPager:            true,
		enableBottomPager:         true,
		maxPagesToShow:            7,
		imageContainerSel:         '#slideshow',
		controlsContainerSel:      '#controls',
		captionContainerSel:       '#caption',
		loadingContainerSel:       '#loading',
		renderSSControls:          true,
		renderNavControls:         true,
		playLinkText:              'Play Slideshow',
		pauseLinkText:             'Pause Slideshow',
		prevLinkText:              '&lsaquo; Imagem Anterior',
		nextLinkText:              'Próxima Imagem &rsaquo;',
		nextPageLinkText:          'Próximo &rsaquo;',
		prevPageLinkText:          '&lsaquo; Anterior',
		enableHistory:             false,
		autoStart:                 false,
		syncTransitions:           true,
		defaultTransitionDuration: 900,
		onSlideChange:             function(prevIndex, nextIndex) {
			// 'this' refers to the gallery, which is an extension of $('#thumbs')
			this.find('ul.thumbs').children()
				.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
				.eq(nextIndex).fadeTo('fast', 1.0);
		},
		onPageTransitionOut:       function(callback) {
			this.fadeTo('fast', 0.0, callback);
		},
		onPageTransitionIn:        function() {
			this.fadeTo('fast', 1.0);
		}
	});
}); 