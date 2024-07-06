class Player {
  final name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(
    name: "gyou1", 
    xp: 1500, 
    team: "red", 
    age: 12);
  player.sayHello(); // Hi my name is gyou1

  var player2 = Player(
    name: "gyouwon", 
    xp: 2500, 
    team: "blue", 
    age: 13);
  player2.sayHello(); // Hi my name is gyouwon
}
