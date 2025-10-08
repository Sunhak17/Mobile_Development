bool isBalanced(String input) {
  List<String> stack = [];

  Map<String, String> pairs = {
    ')': '(', 
    ']': '[', 
    '}': '{'
  };
  
  for(var char in input.split('')){
    if(char == '(' || char == '[' || char == '{'){
      stack.add(char);
    }else if(char == ')' || char == ']' || char == '}'){
      if(stack.isEmpty || stack.last != pairs[char]){
        return false; 
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isBalanced("{what is (42)}?") ? "Balanced" : "Not balanced");
  print(isBalanced("[text}") ? "Balanced" : "Not balanced");
  print(isBalanced("{{[(a)b]c}d}") ? "Balanced" : "Not balanced");
}