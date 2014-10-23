import 'package:association/association.dart';
import 'package:association/ex08_functions.dart';

question1() {
  
  List associations = [
                        {"name": "IS", "description": "Information Systems", "members": 
                         [{"firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
                          {"firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"},
                          {"firstName": "Anastasia", "lastName": "Ridjanovic", "email": "ar@gmail.com"},
                          {"firstName": "Marie-Jo", "lastName": "Bégin", "email": "mj@gmail.com"},
                          {"firstName": "David", "lastName": "Bégin", "email": "bda@gmail.com"},
                          {"firstName": "Denis", "lastName": "Bégin", "email": "bd@gmail.com"}
                         ]},
                        {"name": "CS", "description": "Computer Science",  "members": 
                         [{"firstName": "David", "lastName": "Curtis", "email": "dc@gmail.com"},
                          {"firstName": "John", "lastName": "Smith", "email": "jsc@gmail.com"},
                          {"firstName": "Bruno", "lastName": "Brown", "email": "jsc@gmail.com"}
                         ]}
                     ];
  
  print("");
  print("Question 1");
  print("");
  for (var element in associations) {
    print(element["description"] + " (" + element["name"] + "):");
    SortByNames(element["members"]);
  }
  
  print("");
  print("Noms commençant par 'B':");
  FindNamesStartingWith(associations,"B");
  
}

question2(){
  
  var model = new MembershipModel();
  
  print("");
  print("Question 2");
  print("");
  
  // Mettre les données par défaut
  model.init();
  
  // Ajout d'un membre
  var member = new Member();
  member.firstName = 'Marie-Jo';
  member.lastName = 'Bégin';
  member.email = 'marie-jo.begin@ulaval.ca';
  model.members.add(member);

  var membership = new Membership();
  membership.association = model.associations.find("On Dart");
  membership.member = member;
  membership.description = 'develop projects';
  model.associations.find("On Dart").memberships.add(membership);
  member.memberships.add(membership);
  
  // Enlevé un membre
  model.members.remove(model.members.find("ivo.balbaert@telenet.be"));
  
  // Changement d'un donnée
  model.associations.find('Learning Dart').description = 'Learning Dark with Dzenan';  
  
  model.display();
  
}

main() {
  
  question1();
  
  question2();
  
}