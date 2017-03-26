/**
 * FK Blouk ( Manager )
 * Tiny events manager framework
 * 
 * @author Wisniewski Nicolas
 * @version 0.1
 **/
package com.blouk.fk.core
{
	import com.blouk.fk.core.interfaces.IFkEvent;
	import com.blouk.fk.core.interfaces.IFkManager;
	import com.blouk.fk.debug.FkDebugger;
	
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	public class FkManager extends EventDispatcher implements IFkManager
	{
		protected static var _instance:FkManager;
		private var _debugger:FkDebugger;
		protected var _eventDictionnary:Dictionary = new Dictionary();
		
		public function FkManager()
		{
		}
		
		public function addEventManager(e:IFkEvent,func:Function):void
		{
			
			if( Boolean( debugger ) ) debugger.log("Add Event",e,func);
			
			if ( eventDictionnary[e] ) 
			{
				
				(eventDictionnary[e] as Array).push( func );
			}
			else
			{
				eventDictionnary[e] = [func];						
			}
			addEventListener( e.clone().type , func);			
		}
		
		
		public function removeEventManager(e:IFkEvent):void
		{
			
			if( Boolean( debugger ) ) debugger.log("Remove Event",e,func);
			
			if(eventDictionnary[e]) 
			{
				for each( var func:Function in (eventDictionnary[e] as Array) )
				{
					removeEventListener( e.clone().type,func)
				}
				eventDictionnary[e] = null;
			}
		}
		
		
		public function dispatchEventManager(e:FkEvent):void
		{
			if( Boolean( debugger ) ) debugger.log("Dispatch Event",e);
			dispatchEvent( e );
		}
		
		public function debug():void
		{
			debugger = new FkDebugger();
		}
		
		public function get debugger():FkDebugger
		{
			return _debugger;
		}
		
		public function set debugger(value:FkDebugger):void
		{
			_debugger = value;
		}
		
		public function get eventDictionnary():Dictionary
		{
			return _eventDictionnary;
		}
		
		
		public static function get instance():IFkManager
		{
			var FkManagerInstance:IFkManager = (!_instance) ? createInstance():_instance;
			return FkManagerInstance;
		}
		
		protected static function createInstance():IFkManager	
		{
			_instance = new FkManager();
			return _instance;
		}
	}
}