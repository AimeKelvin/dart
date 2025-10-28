import "dart:io";

void main(){
  String purpose = "program that user inputs his sugar level and check if its high low or normal (normal = 80-100)";

stdout.write("Enter your sugar level: ");
int sugar = int.parse(stdin.readLineSync()!);

if(sugar < 80){
  print("Your sugar level is low");
}else if(sugar > 100){
  print("Your sugar level is high");
}else print("Your sugar level is normal!");

}