/*
 * Copyright (c) 2009 the original author or authors
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package org.robotlegs.demos.flashgooglemaps.view.events
{
	import flash.events.Event;
	
	/**
	 * No comments here. Basic stuff.
	 * 
	 * @author Peter Lorent peter.lorent@gmail.com
	 * 
	 */
	public class ContentChangeEvent extends Event
	{
		//--------------------------------------------------------------------------
		//
		//  Class Properties
		//
		//--------------------------------------------------------------------------
		public static const CONTENT_CHANGE:String = "contentChange";
		
		//--------------------------------------------------------------------------
		//
		//  Instance Properties
		//
		//--------------------------------------------------------------------------
		private var _id:uint;
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		public function ContentChangeEvent(type:String, id:uint)
		{
			super(type);
			
			_id = id;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters and setters
		//
		//--------------------------------------------------------------------------
		public function get id():uint
		{
			return _id;
		}
		
		//--------------------------------------------------------------------------
		//
		// Overridden API
		//
		//--------------------------------------------------------------------------
		override public function clone():Event
		{
			return new ContentChangeEvent(type, id);
		}
	}
}