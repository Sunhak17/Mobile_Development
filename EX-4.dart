void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  double total = pizzaPrices.values.reduce((a, b) => a + b); 
  print("Total: \$$total");

  for(var pizza in order){
    if(pizzaPrices.containsKey(pizza)){
      total += pizzaPrices[pizza]!;
    }else{
      print("$pizza pizza is not on the menu");
    }
  }
}
