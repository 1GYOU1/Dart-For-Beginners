String sayHello({required String name, required  int age, required  String country}){
  return "Hello $name, you are $age, and you com form $country";
}

void main(){
  print(
    sayHello(
      name: 'gyou1',
      age : 29,
      country: 'korea',
    )
  );
}