String sayHello(String name, int age, [String? country = "korea"]) => 'Hello ${name}, You are ${age} from the ${country}';

void main() {
    var result = sayHello("gyou1", 10);
    print(result);
}