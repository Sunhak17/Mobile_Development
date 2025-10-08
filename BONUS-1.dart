enum Direction { north, east, south, west }
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 5;
  int y = 5;
  Direction direction = Direction.west;

  // Example instruction sequence
  const instructions = "AAAA";

  // Process the instructions and get the final position and direction
  for(var instruction in instructions.split('')){

    // Turn Right
    if(instruction == 'R'){ 
      direction = Direction.values[(direction.index + 1) % 4];

    // Turn Left
    }else if(instruction == 'L'){
      direction = Direction.values[(direction.index - 1 + 4) % 4];

    }else if(instruction == 'A'){
      // Advance Movement
      switch (direction) {
        case Direction.north:
          y += 1;
          break;
        case Direction.east:
          x += 1;
          break;
        case Direction.south:
          y -= 1;
          break;
        case Direction.west:
          x -= 1;
          break;
      }
    }
  }

  // Print the final position and direction
  print("Final position: $x, $y");
  print("Facing:  $direction");
}
