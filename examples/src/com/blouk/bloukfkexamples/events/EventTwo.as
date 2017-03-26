package com.blouk.bloukfkexamples.events
{
	import com.blouk.fk.core.FkEvent;
	
	public class EventTwo extends FkEvent
	{
		public static const EVENT_TWO:String = "eventTwo";
		
		public function EventTwo(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}