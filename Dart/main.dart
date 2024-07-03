class Player{
    final name = 'gyou1';
    int xp = 1500;

    void sayHello(){
        var name = '121';
        print("Hi my name is ${this.name}"); // Hi my name is gyou1
        print("Hi my name is ${name}"); // Hi my name is 121
    }
}
void main(){
    var player = Player();
    player.sayHello(); // Hi my name is gyou1
}