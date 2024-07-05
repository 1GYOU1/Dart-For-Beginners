class Player{
    final name;
    int xp;

    Player(this.name, this.xp);

    void sayHello(){
      print("Hi my name is $name");
    }
}
void main(){
    var player = Player("gyou1", 1500);
    player.sayHello(); // Hi my name is gyou1
    var player2 = Player("gyouwon", 2500);
    player2.sayHello(); // Hi my name is gyouwon
}