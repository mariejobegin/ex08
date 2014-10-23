part of association;

class MembershipModel {
  Associations associations = new Associations();
  Members members = new Members();

  init() {
    var association1 = new Association();
    association1.name = 'Learning Dart';
    association1.description = 'An association to learn Dart';
    associations.add(association1);

    var member1 = new Member();
    member1.firstName = 'Dzenan';
    member1.lastName = 'Ridjanovic';
    member1.email = 'dzenanr@gmail.com';
    members.add(member1);

    var member2 = new Member();
    member2.firstName = 'Ivo';
    member2.lastName = 'Balbaert';
    member2.email = 'ivo.balbaert@telenet.be';
    members.add(member2);

    var membership1 = new Membership();
    membership1.association = association1;
    membership1.member = member1;
    membership1.description = 'develop projects';
    association1.memberships.add(membership1);
    member1.memberships.add(membership1);

    var membership2 = new Membership();
    membership2.association = association1;
    membership2.member = member2;
    membership2.description = 'write about projects';
    association1.memberships.add(membership2);
    member2.memberships.add(membership2);

    var association2 = new Association();
    association2.name = 'On Dart';
    association2.description = 'An association to play dart.';
    associations.add(association2);

    var membership3 = new Membership();
    membership3.association = association2;
    membership3.member = member1;
    membership3.description = 'reserve a pub';
    association2.memberships.add(membership3);
    member1.memberships.add(membership3);
  }

  display() {
    print('===========');
    print('Membership Model');
    print('===========');
    for (var association in associations) {
      print('  Association');
      print('  -------');
      print(association.toString());
      print('    Members');
      print('    -----');
      for (var membership in association.memberships) {
        print(membership.toString());
      }
    }
    print('===========');
    for (var members in members) {
      print('  Member');
      print('  --------');
      print(members.toString());
      print('    Associations');
      print('    -----');
      for (var membership in members.memberships) {
        print(membership.toString());
      }
    }
    print(
      '=========== =========== =========== '
      '=========== =========== =========== '
    );
  }
}



