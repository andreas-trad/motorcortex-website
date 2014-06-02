define(
	[
		'app/TemplateLoader',
		'app/flight/Resetter',
        'MotorCortex.min',
        'jquery.snippet.min'
    ],
	
	function(TemplateLoader, Resetter, MotorCortex) {
		var checkCredentialsOnCallback = function(data){
			if(data.credentialsError){
				alert('Credentials error occured!');
				document.location = "./";
			} 
		};
		
		var makeLinkActive = function(whichone){
			$(".indicator-li").removeClass('active');
			$('[data-linkto="' + whichone + '"]').addClass('active');
		};

        var applyExampleTemplateToDiv = function(templateName, divClass){
            var templateLoadResult = TemplateLoader.loadTemplate(templateName, 'examples');
            var tmpl = _.template(templateLoadResult.data);
            $("." + divClass).html(tmpl({}));
        };
		
		var applyTemplateToMainDiv = function(templateName, pageTitle, mc){
            mc.trigger('fadeContentsOut');

			document.title = 'MotorCortex.js | ' + pageTitle;
			var templateLoadResult = TemplateLoader.loadTemplate(templateName, 'site');
			var tmpl = _.template(templateLoadResult.data);
			$(".page").html(tmpl({}));
            mc.trigger('fadeContentsIn');

            $("pre.html").snippet("html", {style:"kwrite"});
            $("pre.css").snippet("css", {style:"kwrite"});
            $("pre.javascript").snippet("javascript", {style:"kwrite"});

			return templateLoadResult.firsttime;
		};

        $('.menuItem').click(function(){
            window.location = '#' + $(this).attr('data-goesTo');
        });

		return {
			init: function(){
                var mc = new window.MotroCortex();
                mc.loadMSS('./mc.mss', function(){
                    mc.trigger('start', function(){
                        routie({
                            '': function() {
                                Resetter.attachTo('.navbar-header');

                                applyTemplateToMainDiv('home', 'Home', mc);
                                mc.trigger('aclick', {target:document.getElementsByClassName('home')});
                            }, // 'dashboard':function
                            'concept':function(){
                                Resetter.attachTo('.navbar-header');

                                applyTemplateToMainDiv('concept', 'Concept', mc);
                                mc.trigger('aclick', {target:document.getElementsByClassName('concept')});

                            }, // concept
                            'documentation':function(){
                                Resetter.attachTo('.navbar-header');

                                applyTemplateToMainDiv('readme', 'Documentation', mc);
                                mc.trigger('aclick', {target:document.getElementsByClassName('documentation')});
                            }, // documentation
                            'examples':function(){
                                Resetter.attachTo('.navbar-header');

                                applyTemplateToMainDiv('examples', 'Examples', mc);
                                mc.trigger('aclick', {target:document.getElementsByClassName('examples')});

                                $(".graphs.examplebutton").unbind().click(function(){
                                    applyExampleTemplateToDiv('graphs', 'graphsExample');
                                    mc.trigger("showBars", function(){
                                        mc.trigger('highlight');
                                    });
                                });

                                $('.listitem').unbind().click(function(e){
                                    if(!$(this).hasClass('x-active')){
                                        mc.trigger('click', e);
                                    } else {
                                        mc.trigger('unclick', e);
                                    }
                                });
                            }, // blog
                            'about':function(){

                            }, // about
                            'contact':function(){

                            } // contact
                        }); // routie
                    });
                });


			} // init
		} // return
	} // function(TemplateLoader, DataHandler, Resetter)
); // define