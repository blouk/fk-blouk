package com.blouk.bloukfkexamples.controllers
{
	import com.blouk.fk.core.FkEvent;

	public class FKController
	{
		
		public function respondToEventOne(e:FkEvent):void
		{
			trace("controller::respondToEventOne"); 
		}
		
		public function respondToEventTwo(e:FkEvent):void
		{
			trace("controller::respondToEventTwo"); 
		}
		
		public function respondToEventThree(e:FkEvent):void
		{
			trace("controller::respondToEventThree"); 
		}
		
		public function respondToAllEvent(e:FkEvent):void
		{
			trace("controller::respondToAllEvent"); 
		}
	}
}