library ex08_functions;

// Ordonner les données par nom de famille et prénom
SortByNames(List associations, String name) {
  
  List membres;
  
  for (Map association in associations)
  {
    if (association["name"] == name)
    {
      membres = association["members"];
      
      membres.sort( (x, y) {
        if ( x["lastName"].compareTo(y["lastName"]) == 0 )
          return x["firstName"].compareTo(y["firstName"]);
        else
          return x["lastName"].compareTo(y["lastName"]);
      });
    }
  }

}

List FindNamesStartingWith(List associations, String startingLetter) {
  
  List names = new List();
  
  for (Map association in associations) {
    for (Map member in association["members"]) {
      if (member["lastName"].startsWith(startingLetter)) names.add(member);
    }
  }
  
  return names;
  
}