package com.blouk.fk.core
{
	import com.blouk.fk.core.interfaces.IFkEvent;
	
	import flash.events.Event;

	public class FkEvent extends Event implements IFkEvent
	{
		[Bindable]
		private var _params:Array;
		
		public function FkEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable);
		}

		public override function clone():Event
		{
			var cloneEvent:FkEvent = new FkEvent(type,bubbles,cancelable);
			cloneEvent._params = params;
			return cloneEvent;
		}
		
		public function getParam():Array
		{
			return params;
		}
		
		public function get params():Array
		{
		 	return _params;
		}

		public function set params(obj:Array):void
		{
			_params = obj;
		}
		
		public override function toString():String
		{
			return formatToString("FkEvent","bubbles","cancelable","params");
		}
	}
}