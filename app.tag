<app>

  <h2>Rice Krispie Treats Recipe</h2>

  <ingredient name="Butter" amount="3 Tbsp"></ingredient>
  <ingredient name="Marshmallow Fluff" amount="10 oz"></ingredient>
  <ingredient name="Rice Krispies Cereal" amount="6 cups"></ingredient>

</app>

<ingredient>

  <label>
    <input type="checkbox" onchange="{ onCheck }"/>
    { opts.name }
  </label>
  <span>{ opts.amount }</span>

  <script>
    this.onCheck = function(e){
      this.added = e.target.checked;
    }
  </script>

</ingredient>