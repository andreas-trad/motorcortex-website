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
		
		var applyTemplateToMainDiv = function(templateName, pageTitle, mc){
            mc.trigger('fadeContentsOut');

			document.title = 'MotorCortex.js | ' + pageTitle;
			var templateLoadResult = TemplateLoader.loadTemplate(templateName, 'site');
			var tmpl = _.template(templateLoadResult.data);
			$(".page").html(tmpl({}));
            mc.trigger('fadeContentsIn');

            $("pre.htmlCode").snippet("html");
            $("pre.css").snippet("css");
            $("pre.javascript").snippet("javascript");

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
                            'blog':function(){

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