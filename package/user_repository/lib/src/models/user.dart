import '../entities/entities.dart';

class MyUser {
  String userID;
  String email;
  String name;
  bool hasActiveCart;

  MyUser(
      {required this.userID,
      required this.email,
      required this.name,
      required this.hasActiveCart});
  static final empty =
      MyUser(userID: '', email: '', name: '', hasActiveCart: false);

  MyUserEntity toEntity() {
    return MyUserEntity(
        userID: userID, email: email, name: name, hasActiveCart: hasActiveCart);
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
        userID: entity.userID,
        email: entity.email,
        name: entity.name,
        hasActiveCart: entity.hasActiveCart);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'MyUser: $userID $name $email $hasActiveCart';
  }
}
