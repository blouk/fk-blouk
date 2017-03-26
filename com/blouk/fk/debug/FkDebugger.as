package com.blouk.fk.debug
{
	import com.blouk.fk.core.FkEvent;
	import com.blouk.fk.core.interfaces.IFkEvent;
	
	import flash.sampler.getMemberNames;
	import flash.utils.getQualifiedSuperclassName;
	
	import mx.graphics.IFill;

	public class FkDebugger
	{
		private var debutString:String = "";
		
		public function FkDebugger()
		{
		}
		
		public function log(type:String,...params:Array):void
		{
			debutString = "";
			debutString += "Fk > type  : " + type;
			
			
			for (var i:uint = 0 ; i < params.length ; i++)
			{
				if(params[i] is IFkEvent)
				{
					debutString += " | IFkEvent ";
					debutString += "type:'"+ FkEvent(params[i]).type + "' " + FkEvent(params[i]).toString();
					if( FkEvent(params[i]).params ) 
					{
						getParams( FkEvent(params[i]).params );
					}
				}
				
				if(params[i] is Function)
				{
					
					debutString += " | Function. " 
					
				}
			}
			
			trace(debutString);
		}

		protected function getParams(params:Object):void
		{
		
			
			if( params ) 
			{
				for each(var element:* in params ) 
				{
					trace(element)
				}
			}
		}

	}
}