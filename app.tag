<app>

  <h2>Rice Krispie Treats Recipe</h2>

  <ingredient each="{ key, val in ingredObj }" name="{ key }" amount="{ val }"></ingredient>

  <script>
    this.ingredients = [
      {name: 'Butter', amount: '3 Tbsp'},
      {name: 'Marshmallow Fluff', amount: '10 oz'},
      {name: 'Rice Krispies Cereal', amount: '6 cups'}
    ]

    this.ingredObj = {
      "Butter": 3,
      "Marshmallow": 5,
      "Cereal": 10
    }

    this.onClick = function(e){
      console.log("clicked: ", e.item)
    }
  </script>

</app>

<ingredient>

  <label class="{ added: added }">
    <input type="checkbox" onchange="{ onCheck }"/>
    { opts.name }
  </label>
  <span>{ opts.amount }</span>

  <style scoped>
    :scope {
      margin-bottom: 10px;
      display: block;
      overflow: auto;
      padding: 10px;
      background-color: #eee;
    }

    input {
      position: relative;
      top: -2px;
    }

    label {
      font-weight: bold;
    }

    label.added {
      text-decoration: line-through;
    }

    span {
      float: right;
    }
  </style>

  <script>
    this.onCheck = function(e){
      this.added = e.target.checked;
    }
  </script>

</ingredient>