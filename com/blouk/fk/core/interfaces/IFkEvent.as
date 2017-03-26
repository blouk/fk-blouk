package com.blouk.fk.core.interfaces
{
	import flash.events.Event;

	public interface IFkEvent
	{
		function clone():Event;
		function getParam():Array;
		function toString():String;
	}
}