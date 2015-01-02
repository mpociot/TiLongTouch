var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
var view = Ti.UI.createView({
	width: Ti.UI.FILL,
	height: Ti.UI.FILL
});
	view.addEventListener("longtouch", function(e)
	{
		if( e.state === "began" )
		{
			Ti.API.info( "Began touching" );
		}
		if( e.state === "ended" )
		{
			Ti.API.info( "Ended touching" );
		}
		if( e.state === "touch" )
		{
			Ti.API.info( "Currently touching (and moving) the finger");
		}
	});
win.add(view);
win.open();