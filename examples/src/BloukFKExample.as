package
{
	import com.blouk.bloukfkexamples.controllers.FKController;
	import com.blouk.bloukfkexamples.events.EventOne;
	import com.blouk.bloukfkexamples.events.EventThree;
	import com.blouk.bloukfkexamples.events.EventTwo;
	import com.blouk.fk.FK;
	
	import flash.display.Sprite;
	
	public class BloukFKExample extends Sprite
	{
		private var controller:FKController;
		
		public function BloukFKExample()
		{
			FK.debug(true);
			// instantiate the controller
			controller = new FKController();
			
			// create all events
			var eventOne:EventOne = new EventOne( EventOne.EVENT_ONE );
			var eventTwo:EventTwo = new EventTwo( EventTwo.EVENT_TWO );
			var eventThree:EventThree = new EventThree( EventThree.EVENT_THREE );
			
			// register all events with controller methods
			FK.registerEvent( eventOne, controller.respondToEventOne);
			FK.registerEvent( eventTwo, controller.respondToEventTwo);
			FK.registerEvent( eventThree, controller.respondToEventThree);
			
			FK.registerEvent( eventOne, controller.respondToAllEvent);
			FK.registerEvent( eventTwo, controller.respondToAllEvent);
			FK.registerEvent( eventThree, controller.respondToAllEvent);
			
			// dispatch all Events.
			FK.dispatch( eventOne );
			FK.dispatch( eventTwo );
			FK.dispatch( eventThree );
			
			// unregister events
			FK.unregisterEvent( eventOne );
			FK.unregisterEvent( eventTwo );
			FK.unregisterEvent( eventThree );
			
			
		}
	}
}