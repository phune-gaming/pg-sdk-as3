package com.presenttechnologies.phunegaming.client.gamesample
{
	import com.presenttechnologies.phunegaming.client.platform.view.game.GameRoot;
	import com.presenttechnologies.phunegaming.client.platform.view.game.IGameApp;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageQuality;
	import flash.display.StageScaleMode;
	import flash.geom.Rectangle;
	import flash.system.ApplicationDomain;
	import starling.core.Starling;
	import starling.display.DisplayObject;
	import starling.display.Quad;
	import starling.events.Event;
	
	/**
	 * Class entry for the game. Normally you do not edit this class
	 * 
	 * @author fjorge
	 */
	public class GameApp extends Sprite implements IGameApp 
	{
		//Implementation of the game root
		private var _gameRoot:GameRoot;
		
		/**
		 * Constructor
		 */
		public function GameApp() 
		{
			super();
			
			//Create the game root instance
			_gameRoot = new GameRootImpl();
			
			//add event listener to removed from stage
			_gameRoot.addEventListener(Event.REMOVED_FROM_STAGE, removedFromStage);
		}
		
		/**
		 * Called when the game is removed from stage. Do some clean up and free objects.
		 * 
		 * @param	e the Event (not used)
		 */
		private function removedFromStage(e:Event):void 
		{
			
			_gameRoot.removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStage);
			_gameRoot = null;
		}
		
		
	    /* INTERFACE com.presenttechnologies.phunegaming.client.platform.view.game.IGameApp */
		/**
		 * The game entry. Object used by the platform to add in stage. 
		 */
		public function get appEntry():DisplayObject 
		{
			return _gameRoot;
		}
		
		/**
		 * The game entry. Object used by the platform to add in stage. 
		 */
		public function set appEntry(displayObject:DisplayObject):void {
			if (displayObject == null) {
				_gameRoot = null;
			}
			else{
				_gameRoot = displayObject as GameRoot;
			}
		}
		
	}
	
}