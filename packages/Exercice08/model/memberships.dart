part of association;

class Membership {
  Association association;
  Member member;
  String description;

  String toString() {
    return '    {\n'
           '      association.name: ${association.name}\n'
           '      member.email: ${member.email}\n'
           '      description: ${description}\n'
           '    }\n';
  }
}

class Memberships {
  List list = new List();

  int get count => list.length;

  Iterator get iterator => list.iterator;

  forEach(Function f) {
    list.forEach(f);
  }

  add(Membership membership) {
    list.add(membership);
  }

  Membership find(String name, String email) {
    for (var e in list) {
      if (e.association.name == name && e.member.email == email) {
        return e;
      }
    }
  }

  remove(Membership membership) {
    list.remove(membership);
  }

  display([String title='Memberships']) {
    print('');
    print(title);
    print('[');
    forEach((e) => print(e.toString()));
    print(']');
    print('');
  }
}

