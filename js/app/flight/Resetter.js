define(
	[
		'flight/lib/component'
	],
	
	function(defineComponent) {
		
		return defineComponent(Resetter);
		
		function Resetter() {	
			this.after('initialize', function() {
                $(".main").html('<div class="theloader"><img src="/images/loader.gif"></div> ');
				$(window).unbind('beforeunload');
				this.trigger(document, 'closeModals');
				$('html, body').animate({ scrollTop: 0 }, 100);
				defineComponent.teardownAll();
			});
		}
	}
);