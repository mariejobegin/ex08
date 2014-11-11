import 'package:Exercice08/association.dart';
import 'package:Exercice08/ex08_functions.dart';

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
  
  // Tri de l'association IS
  SortByNames(associations, "IS");

  for (Map association in associations) {
    
    print(association["description"] + " (" + association["name"] + "):");

    for (Map element in association["members"])
     print(element);

  }
  
  print("");
  print("Noms commençant par 'B':");
  
  for (var name in FindNamesStartingWith(associations,"B"))
    print(name);
  
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

  //Ajout d'une inscription
  var membership = new Membership();
  membership.association = model.associations.find("On Dart");
  membership.member = member;
  membership.description = 'develop projects';
  membership.association.memberships.add(membership);
  member.memberships.add(membership);
  
  //Ajout d'une association
  membership = new Membership();
  membership.association = model.associations.find("Learning Dart");
  membership.member = model.members.find("ivo.balbaert@telenet.be");
  membership.description = 'improve dart project';
  membership.association.memberships.add(membership);
  membership.member.memberships.add(membership);
  
 
  // Enlever un membre et ses associations
  member = model.members.find("ivo.balbaert@telenet.be");
  
  for (Membership m in member.memberships ){
    m.association.memberships.remove(m);
  }
  
  model.members.remove(model.members.find("ivo.balbaert@telenet.be"));
  
  // Enlever une inscription
  membership = model.associations.find("On Dart").memberships.find("On Dart", "dzenanr@gmail.com");
  model.associations.find("On Dart").memberships.remove(membership);
  model.members.find("dzenanr@gmail.com").memberships.remove(membership);
  
  // Enlever une association
  model.associations.remove(model.associations.find("Learning Dart"));
  model.members.find("dzenanr@gmail.com").memberships.remove(model.members.find("dzenanr@gmail.com").memberships.find("Learning Dart", "dzenanr@gmail.com"));
  
  
  // Changement d'un membre
  model.members.find("marie-jo.begin@ulaval.ca").email = "petite.chikita@gmail.com";
  
  // Changement d'une inscription
  model.members.find("petite.chikita@gmail.com").memberships.find("On Dart", "petite.chikita@gmail.com").description = "Changing membership";
  
  // Changement d'une association
  model.associations.find('On Dart').description = 'On Dart with Dzenan'; 
  
  model.display();
  
}

main() {
  
  question1();
  
  question2();
  
}