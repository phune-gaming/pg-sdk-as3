package com.presenttechnologies.phunegaming.client.gamesample 
{
	import com.presenttechnologies.phunegaming.client.platform.view.game.GameRoot;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import starling.core.RenderSupport;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * GameRoot implementation of the game
	 * @author fjorge
	 */
	public class GameRootImpl extends GameRoot 
	{
		private var _timer:Timer;
		
		/**
		 * Constructor
		 */
		public function GameRootImpl() 
		{
			super();
			
			addEventListener(Event.ADDED_TO_STAGE, addedToStage)
			
		}
		
		/**
		 * Added to stage event
		 * 
		 * @param	e Event (not used)
		 */
		private function addedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStage);
			
			//Add a red square (or communist square :))
			addChild(new Quad(stage.stageWidth, stage.stageHeight, 0xFF0000));
			
			ready(true);
		}
	
		
	}

}