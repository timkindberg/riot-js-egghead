<hello-world>
  <p>{ opts.greeting } <trim value="{ what }" length="3"/>!</p>
  <button onclick="{ tags.trim.startAnimation }">Start Animation</button>
  <button onclick="{ tags.trim.stopAnimation }">Stop Animation</button>
  <input name="whatInput" type="text" value="{ what }" onkeyup="{ whatChange }"/>
  <script>
    var self = this;
    this.what = "egghead"
    this.whatChange = function(e){
      this.what = self.whatInput.value;
    }
  </script>
</hello-world>

<trim>
  <span>{ opts.value.substr(0, length) }</span>
  <script>
    var self = this,
        interval,
        count = 0;

    this.length = opts.length;

    this.on('update', function(){
      console.log('update');
    })
    this.on('mount', function(){
      console.log('mount');
//      self.startAnimation();
    })
    this.on('unmount', function(){
      console.log('unmount');
      self.stopAnimation();
    })

    this.startAnimation = function(){
      interval = setInterval(function(){
        self.length++;
        if (self.length > opts.value.length) {
          count++;
//          if(count > 10) self.unmount();
          self.length = 0;
        }
        self.update();
      }, 50);
    };

    this.stopAnimation = function(){
      clearInterval(interval);
      interval = null;
    }
  </script>
</trim>

// Examples of attribute based supported events
// onabort
// onautocomplete
// onautocompleteerror
// onbeforecopy
// onbeforecut
// onbeforepaste
// onblur
// oncancel
// oncanplay
// oncanplaythrough
// onchange
// onclick
// onclose
// oncontextmenu
// oncopy
// oncuechange
// oncut
// ondblclick
// ondrag
// ondragend
// ondragenter
// ondragleave
// ondragover
// ondragstart
// ondrop
// ondurationchange
// onemptied
// onended
// onerror
// onfocus
// oninput
// oninvalid
// onkeydown
// onkeypress
// onkeyup
// onload
// onloadeddata
// onloadedmetadata
// onloadstart
// onmousedown
// onmouseenter
// onmouseleave
// onmousemove
// onmouseout
// onmouseover
// onmouseup
// onmousewheel
// onpaste
// onpause
// onplay
// onplaying
// onprogress
// onratechange
// onreset
// onresize
// onscroll
// onsearch
// onseeked
// onseeking
// onselect
// onselectstart
// onshow
// onstalled
// onsubmit
// onsuspend
// ontimeupdate
// ontoggle
// onvolumechange
// onwaiting
// onwebkitfullscreenchange
// onwebkitfullscreenerror
// onwheel