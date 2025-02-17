import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /*.
  print("Hvað er uppáhalds talan þin?");
  String inputNumer = stdin.readLineSync().toString();
  print("Hún er $inputNumer");
  int results = 5 * int.parse(inputNumer);
  print("5 sinnum $inputNumer er $results");

 int number1 =8;
 int number2 =3;
 double result2 = number1 / number2;
 print(result2.toStringAsFixed(3));

 print("hæ hvað heitir þú?");
 String firstName = stdin.readLineSync().toString();
 print("Hello $firstName");
 print("hvað er eftirnafnið þitt?");
  String lastName =stdin.readLineSync().toString();
  print("Blessuð vertu $firstName $lastName");

 String fixName = firstName.replaceAll("$firstName", "Klemenz");
 print("Heitirðu ekki $fixName $lastName?");
 .*/

  String firstName = "Oddný Halldóra";
  String lastName = "Oddsdóttir";
  String fullName = firstName + " " + lastName;
  String url = "ntv.is";

  List<String> names = firstName.split(" ");
  print(names);
  print(names[0]);
  print(names[1]);

  String username = names[0] + names[1].substring(0, 1) +
      lastName.substring(0, 4);
  username = username.toLowerCase();
  username = removeIcelandicLetters(username);
  print(username);
  String emailAddress = username + "@" + url;
  print(emailAddress);

}

   String removeIcelandicLetters(String input) {

     Map<String, String> icelandicToLatin = {

       'ð': 'd',

       'þ': 'th',

       'á': 'a',

       'é': 'e',

       'í': 'i',

       'ó': 'o',

       'ú': 'u',

       'ý': 'y',

       'ö': 'o',

       'Æ': 'Ae',

       'æ': 'ae',

       'Ð': 'D',

       'Þ': 'Th',

       'Á': 'A',

       'É': 'E',

       'Í': 'I',

       'Ó': 'O',

       'Ú': 'U',

       'Ý': 'Y',

       'Ö': 'O'

     };

     icelandicToLatin.forEach((key, value) {

       input = input.replaceAll(key, value);

     });

     return input;

   }











