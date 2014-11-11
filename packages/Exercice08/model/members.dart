part of association;

class Member {
  String lastName;
  String firstName;
  String email;
  Memberships memberships = new Memberships(); // external relationship

  String get name => '${lastName}, ${firstName}';

  String toString() {
    return '  {\n'
           '    firstName: ${firstName}\n'
           '    lastName: ${lastName}\n'
           '    email: ${email}\n'
           '  }\n';
  }

  /**
   * Compares two members based on last names, then on first names.
   * If the result is less than 0 then the first member is less than the second,
   * if it is equal to 0 they are equal and
   * if the result is greater than 0 then the first is greater than the second.
   */
  int compareTo(Member member) {
    if (lastName != null && firstName != null) {
      int comparison = lastName.compareTo(member.lastName);
      if (comparison == 0) {
        comparison = firstName.compareTo(member.firstName);
      }
      return comparison;
    }
  }
}

class Members {
  var list = new List();

  int get count => list.length;

  Iterator get iterator => list.iterator;

  forEach(Function f) {
    list.forEach(f);
  }

  add(Member member) {
    list.add(member);
  }

  Member find(String email) {
    for (var e in list) {
      if (e.email == email) {
        return e;
      }
    }
  }

  remove(Member member) {
    list.remove(member);
  }

  display([String title='Members']) {
    print('');
    print(title);
    print('[');
    forEach((e) => print(e.toString()));
    print(']');
    print('');
  }
}

