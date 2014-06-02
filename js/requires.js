requirejs.config({
    baseUrl: './js',
    paths: {
        app: './app'
    }
});

require(['routie', 'underscore-min', 'jquery.min'], function(r, _, $){
	require(['jquery.velocity.min'], function(){
        require(['app/MyRouter'], function(MyRouter){
            MyRouter.init();
        });
	});
});