<hello-world>
  <p>{ opts.greeting } <trim value="{ what }" length="3"/>!</p>
  this.what = "egghead"
</hello-world>

<trim>
  <span>{ opts.value.substr(0, opts.length) }</span>

</trim>