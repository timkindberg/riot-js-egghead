<hello-world>
  <p style="font-size: { fontSize }">{ opts.greeting } <trim value="{ what }" length="3"/>!</p>
  <button onclick="{ tags.trim.startAnimation }">Start Animation</button>
  <button onclick="{ tags.trim.stopAnimation }">Stop Animation</button>
  <input type="text" name="whatInput" value="{ what }" onkeyup="{ whatChange }"/>
  <script>
    var self = this;
    this.what = "egghead";
//    this.fontSize = '6px';

    this.whatChange = function(e){
//      self.what = self.whatInput.value;
      self.what = e.target.value;
    }

//    this.tags.trim.on('complete', setFontSize);
//
//    function setFontSize(size){
//      self.fontSize = (size + 7) + 'px';
//      self.update();
//    }
  </script>
</hello-world>

<trim>
  <span>{ opts.value.substr(0, length) }</span>
  <script>
    var self = this,
        interval,
        count = 0;

    this.length = opts.length;

    this.on('mount', function(){
      console.log('mounted');
      self.startAnimation();
    });

    this.on('unmount', function(){
      console.log('unmounted')
      self.stopAnimation();
    });

    this.on('update', function(){
      console.log('updated');
    });

    this.startAnimation = function(){
      interval = setInterval(function(){
        self.length++;
        if (self.length > opts.value.length) {
//          count++;
//          self.trigger('complete', count++);
          self.length = 0;
        }
        self.update();
//        if (count > 10) self.unmount();
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