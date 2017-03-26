/**
 * FK Blouk
 * Tiny events manager framework
 * 
 * @author Wisniewski Nicolas
 * @version 0.1
 **/

/**
 * Copyright [2011] [Wisniewski Nicolas]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
**/

package com.blouk.fk
{
	import com.blouk.fk.core.FkEvent;
	import com.blouk.fk.core.FkManager;
	import com.blouk.fk.core.interfaces.IFkEvent;
	import com.blouk.fk.core.interfaces.IFkManager;

	public class FK
	{
		/**
		 * There's no constructor
		 * @private 
		 */		
		public function FK()
		{
			// FK is a static function.
		}
		
		// === Static methods.
		/**
		 * Register and event and a function.
		 * @param event		Custom Event
		 * @param func		Function which receives the event dispatched.
		 */				
		public static function registerEvent(event:IFkEvent,func:Function):Boolean
		{
			if ( !Boolean(event) || !Boolean(func) ) return false;
			manager.addEventManager( event , func );
			return true;
		}
		
		
		
		/**
		 * Remove an Event and functions stick to the event.
		 * @param event		Custom Event ( extends FkEvent implements IFkEvent )
		 */	
		public static function unregisterEvent(event:IFkEvent):Boolean
		{
			if ( !Boolean(event) ) return false;
			manager.removeEventManager( event );
			return true;
		}
		
		
		
		/**
		 * Dispatch a custom event.
		 * @param event		Function which receives the event dispatched.
		 */	
		public static function dispatch(event:FkEvent):Boolean
		{
			if ( !Boolean(event) ) return false;
			manager.dispatchEventManager( event );
			return true;
		}
		
		
		
		/**
		 * Debugger mode
		 * @param bool		Boolean ( true for debugging or false )
		 * @default 		false
		 */
		public static function debug(bool:Boolean=false):void
		{
			if(bool)
			{
				manager.debug();				
			}
		}
		
		// === Manager instance
		protected static function get manager():IFkManager
		{
			var tmpManager:IFkManager = FkManager.instance;
			return tmpManager;
		}
		
	}
}