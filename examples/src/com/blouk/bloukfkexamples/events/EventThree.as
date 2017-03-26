package com.blouk.bloukfkexamples.events
{
	import com.blouk.fk.core.FkEvent;
	
	public class EventThree extends FkEvent
	{
		public static const EVENT_THREE:String = "eventThree";
		
		public function EventThree(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}