import 'dart:io';


String storedUsername = "user";
String storedPassword = "1234";
double balance = 1000.0;

bool login(String username, String password) {
  if (username == storedUsername && password == storedPassword) {
    print("Login successful!");
    return true;
  } else {
    print("Invalid username or password.");
    return false;
  }
}


void checkBalance() {
  print("Your balance is: \$${balance.toStringAsFixed(2)}");
}

void withdraw(double amount) {
  if (amount > balance) {
    print("Insufficient funds!");
  } else {
    balance -= amount;
    print("Withdrawal successful! New balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  print("Welcome to Simple Bank System");

    stdout.write("Enter username: ");
  String username = stdin.readLineSync()!;
  stdout.write("Enter password: ");
  String password = stdin.readLineSync()!;

  if (login(username, password)) {
    bool exit = false;

    while (!exit) {
      print("\nSelect an option:");
      print("1. Check Balance");
      print("2. Withdraw Money");
      print("3. Exit");
      stdout.write("Enter option: ");
      String option = stdin.readLineSync()!;

      switch (option) {
        case '1':
          checkBalance();
          break;
        case '2':
          stdout.write("Enter amount to withdraw: ");
          double amount = double.parse(stdin.readLineSync()!);
          withdraw(amount);
          break;
        case '3':
          print("Thank you for banking with us!");
          exit = true;
          break;
        default:
          print("Invalid option. Try again.");
      }
    }
  }
}
