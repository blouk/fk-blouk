package com.blouk.bloukfkexamples.events
{
	import com.blouk.fk.core.FkEvent;
	
	public class EventOne extends FkEvent
	{
		
		public static const EVENT_ONE:String = "eventOne";
		
		public function EventOne(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}