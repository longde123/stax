/*
 HaXe library written by John A. De Goes <john@socialmedia.com>

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the
 distribution.

 THIS SOFTWARE IS PROVIDED BY SOCIAL MEDIA NETWORKS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL SOCIAL MEDIA NETWORKS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
package js.dom;

import Dom;
import js.Env;

/** 
 * Common elements.
 */
class Elements {
  public static function newIframe(): HTMLIFrameElement {
    return cast Env.document.createElement('IFRAME');
  }
  
	public static function newIframeInvisible(): HTMLIFrameElement {
	  var e = newIframe();
	  
	  e.setAttribute('width',         '0');
	  e.setAttribute('height',        '0');
	  e.setAttribute('frameborder',   '0');
	  e.setAttribute('marginwidth',   '0');
	  e.setAttribute('marginheight',  '0');
	  e.setAttribute('vspace',        '0');
	  e.setAttribute('hspace',        '0');
	  e.setAttribute('scrolling',     'no');
	  e.setAttribute('noresize',      'noresize');
	  e.setAttribute('allowtransparency', 'true');
	  
	  return e;
	}
}