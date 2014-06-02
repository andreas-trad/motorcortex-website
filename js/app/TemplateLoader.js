define(
	[],
	
	function() {
		return{
			attrs:{
				url: '/templates/'
			},
			
			templates: [],
			
			loadTemplate: function(tplname, accessLevel){
				if(this.templates[tplname] == null)
				{
					//console.log('loading first time');
					var that = this;
					var data = $.ajax({
						url: './' + that.attrs.url + accessLevel + '/' + tplname + '.html',
						method: 'GET',
						async: false,
						contentType: 'html'
					}).responseText;
					that.templates[tplname] = {};
					that.templates[tplname].data = data;
					that.templates[tplname].firsttime = true;
					//console.dir(data);
				}
				else{
					this.templates[tplname].firsttime = false;	
				}
				return this.templates[tplname];
			} // loadTemaplate
		} // return
	
	} // function
);