TiLongTouch
===

This module extends every `Ti.UI.View` to recognize some advanced longtouch events. There's no need to reference it in your JS files, just load it in your tiapp.xml!

For a project I work on, I needed the ability to detect the different states of the longtouch event. That's what this module is for.

## Usage

	var view = Ti.UI.createView();
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
	


## Twitter
If you like this module, feel free to follow me on twitter: [@marcelpociot](http://www.twitter.com/marcelpociot)

## License
MIT