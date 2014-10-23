library ex08_functions;

// Ordonner les données par nom de famille et prénom
SortByNames(var names) {
  
  names.sort( (x, y) {
    if ( x["lastName"].compareTo(y["lastName"]) == 0 )
      return x["firstName"].compareTo(y["firstName"]);
    else
      return x["lastName"].compareTo(y["lastName"]);
  });
  
  for (var element in names) {
   print(element);
  }

}

FindNamesStartingWith(var associations, String startingLetter) {
  
  for (var association in associations) {
    for (var member in association["members"]) {
      if (member["lastName"].startsWith(startingLetter)) print(member);
    }
  }
}