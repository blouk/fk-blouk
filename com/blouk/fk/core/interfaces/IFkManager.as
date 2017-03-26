package com.blouk.fk.core.interfaces
{
	import com.blouk.fk.core.FkEvent;
	
	import flash.events.IEventDispatcher;
	
	public interface IFkManager extends IEventDispatcher
	{
		function addEventManager(event:IFkEvent, func:Function):void
		function removeEventManager(event:IFkEvent):void;
		function dispatchEventManager(event:FkEvent):void;
		function debug():void;
	}
}