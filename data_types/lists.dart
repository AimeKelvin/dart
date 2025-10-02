
void main(){
  List <String> Names = ["Kelvin", "Bruno","Arsene"];

  
print("List before");
 print(Names);
 Names.add("Sugira");


print("List after");
  print(Names);

Names.remove(Names[2]);

print(Names);

print(Names.length); 


print("===================SETS===============");

  Set <int> Numbers = {1,8,60,77,3};
  int Number;

   Numbers.add(9);

  for(Number in Numbers){
    print(Number);
  }
}