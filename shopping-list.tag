function Item(name) {
  this.name = name;
  this.inCart = false;
}

Item.prototype.toggleInCart = function() {
  this.inCart = !this.inCart;
}

<shopping-list>

  <h4>Add Item</h4>
  <input-form input="Milk, Bread, ..." button="Add Item"></input-form>

  <h4>Shopping List</h4>
  <p if="{ !items.length }">No items.</p>
  <shopping-list-item each="{ items }" name="name"></shopping-list-item>

  <script>
    var self = this;
    this.items = [];

    this.tags['input-form'].on('submit', addItem);
    function addItem(value){
      self.items.push(new Item(value));
      self.update();
    }
  </script>
</shopping-list>

<input-form>

  <input name="input" onkeyup="{ inputChange }"
         placeholder="{ opts.input }"/>

  <button disabled="{ !this.itemName }"
          onclick="{ addItem }">{ opts.button }</button>

  <script>
    this.inputChange = function(e){
      if(e.keyCode == 13){
        this.addItem();
        return;
      }
      this.itemName = e.target.value;
      this.trigger('change');
    }

    this.addItem = function(e){
      this.trigger('submit', this.input.value);
      this.itemName = this.input.value = '';
    }
  </script>

</input-form>

<shopping-list-item>

  <button class="{ in-cart: inCart }"
          onclick="{ toggleInCart }">{name}</button>

  <style scoped>
    :scope { display: block; margin-top: 5px; }
    .in-cart { text-decoration: line-through; }
  </style>

  <script>
    this.name = opts.name;
    this.inCart = opts.inCart;

    this.toggleInCart = function(e){
      this.inCart = !this.inCart;
      this.trigger('change');
    }
  </script>

</shopping-list-item>