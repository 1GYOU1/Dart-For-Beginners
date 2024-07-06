class Player {
  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
  });

  Player.createBluePlayer({
    required String name,
    required int age,
  }) : this.age = age, // Player 클래스 초기화
       this.name = name,
       this.team = "blue", // 기본값
       this.xp = 0; // 기본값

  Player.createRedPlayer(
    String name,
    int age,
  ) : this.age = age, // Player 클래스 초기화
      this.name = name,
      this.team = "red", // 기본값
      this.xp = 0; // 기본값

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player.createBluePlayer(
    name: "gyou1", 
    age: 12
    );
  player.sayHello(); // Hi my name is gyou1

  var redPlayer = Player.createRedPlayer("gyouwon", 13);
  redPlayer.sayHello(); // Hi my name is gyouwon
}
