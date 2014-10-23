part of association;

class Association {
  String name;
  String description;
  Memberships memberships = new Memberships(); // internal relationship

  String toString() {
    return '  {\n'
           '    name: ${name}\n'
           '    description: ${description}\n'
           '  }\n';
  }
}

class Associations {
  var list = new List();

  int get count => list.length;

  Iterator get iterator => list.iterator;

  forEach(Function f) {
    list.forEach(f);
  }

  add(Association association) {
    list.add(association);
  }

  Association find(String name) {
    for (var e in list) {
      if (e.name == name) {
        return e;
      }
    }
  }

  remove(Association association) {
    list.remove(association);
  }

  display([String title='Associations']) {
    print('');
    print(title);
    print('[');
    forEach((e) => print(e.toString()));
    print(']');
    print('');
  }
}

