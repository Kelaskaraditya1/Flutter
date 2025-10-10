import 'dart:io';

String canVote(int age){

  if(age>=18 && age<=80)
    return "You can vote";

  else if(age<18 && age>=0)
    return "You are under age!!";

  else if(age>80)
    return "Are you living yet?";

  else if(age<0)
    return"You are not born yet!!";

  else
    return "You cannot vote";
}

String canVoteUsingTernaryOperator(int age){
  
  return (age>=18 && age<=80) ? "You can vote"
          : (age<18 && age>=0)? "You are under age!!"
            : (age>80)? "Are you living yet?"
              : (age<0)? "You are not born yet!!"
                : "You cannot vote";
  
}

int factorial(int no){
  int i=1,product=1;
  while(i<=no)
    product*=i++;

  return product;

}

int factorialUsingRecursion(int no) {

  if(no==0 || no==1)
    return 1;

  return no*factorialUsingRecursion(no-1);

}

String switchStatement(int no){

  switch(no){

    case(1): return "Monday";
    case(2): return "Tuesday";
    case(3): return "Wednesday";
    case(4): return "Thursday";
    case(5): return "Friday";
    case(6): return "Saturday";
    case(7): return "Sunday";
    default: return "Invalid Input";

  }
}

void printEvens(){

  for(int i=1;i<=10;i++){

    if(i==6)
      break;

    if(i&1==0)
      print("2*$i = ${2*i}");
    else
      continue;

  }

  print("Loop Ended");
}



/* Functions:

  Named parameterization: like kotlin if we want to use the name of the parameter while passing the value.
  fun main(String name){
  ...
      }

    main(name="...")


    for achiving this we have to use parameterization.

    fun main({String sid, String name}){
    ....
      }

      main(name="...",sid="...");

      types of parameters:

      1) Null Parameter : if we have declared some parameter in the function description, but fine if it is not passed as well.

      fun main({String? name, String? sid}){
      ....

        }

        2) Required Parameters: It is compulsory to pass this parameters while function call.

        fun main({required String name, required String sid}){
        ....
          }

         3) Default Parameter: just add a = sing

         fun main({int radius=25}){
         ....
         }

 */


String getIntro({String? name,String? sid}){
  return "I am $name and my Student Id is $sid";
}

String getIntroMK2({
  required String name,
  required String sid
}){
  return "I am $name and my Student Id is $sid";

}

void main(){

  // Print Statement:
  print("I am Ironman");

  // Input and Output:

  // use stdin.readLineSync() for taking input from user
  // use stdout.write(Object object) to print output on console.

  // var name = stdin.readLineSync();
  //
  // stdout.write("My name is:$name");

  // Datatypes

  // print("Enter Name");
  // String? name = stdin.readLineSync();
  //
  // print("Enter Gender \n print 'M' for male and 'F' for female");
  // String? gender = stdin.readLineSync();
  //
  // print("Enter age");
  // int? age = int.tryParse(stdin.readLineSync() ?? ''); // ✅ safely convert string to int
  //
  // print("Enter Height and Weight");
  // BigInt? height = BigInt.tryParse(stdin.readLineSync()??'');
  // BigInt? weight = BigInt.tryParse(stdin.readLineSync()?? '');
  //
  //
  // print("I am $name");
  // gender?.compareTo("M")==0?print("I am a Man"):print("I am a women");
  // print("My age is $age");
  // print("My Height is $height and my wight is $weight");

  // print("Enter age");
  // int? age = int.tryParse(stdin.readLineSync()?? '');
  // print(canVoteUsingTernaryOperator(age!));

  // print("Enter Number");

  // int? no = int.tryParse(stdin.readLineSync()?? '');

  // print(factorial(no!));
  // print(factorialUsingRecursion(no!));

  // print(switchStatement(no!));

  // printEvens();

  String? name = stdin.readLineSync();
  String? sid = stdin.readLineSync();

  print(getIntro(name: name,sid: sid));

  print(getIntroMK2(name: name!, sid: sid!));




}