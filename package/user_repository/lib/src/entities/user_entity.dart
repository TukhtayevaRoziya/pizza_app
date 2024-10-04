class MyUserEntity {
  String userID;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity(
      {required this.userID,
      required this.email,
      required this.name,
      required this.hasActiveCart});
  Map<String, Object?> toDocument() {
    return {
      'userId': userID,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        userID: doc['userID'],
        email: doc['email'],
        name: doc['name'],
        hasActiveCart: doc['hasActiveCart']);
  }
}
