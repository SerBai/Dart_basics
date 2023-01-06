/// Задача 8: класс User с полем email.
/// Два наследника данного класса AdminUser и GeneralUser,
/// mixin над классом User - метод getMailSystem (после @, пример mail.ru)
/// Используйте данный миксин на AdminUser
/// класс UserManager<T extends User>, список пользователей
/// и будут методы добавления или удаления их
/// в UserManager реализуйте метод, который выведет почту всех пользователей,
/// однако если пользователь admin, будет выведено значение после @

class User {
  late String email;

  User(String email) {
    if (email.contains("@")) {
      this.email = email;
    } else {
      throw Exception("Неверный формат email");
    }
  }

  @override
  bool operator ==(Object right) {
    return (right is User) && email == right.email;
  }
}

class AdminUser extends User with MailSystemMixin {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin MailSystemMixin on User {
  String getMailSystem() {
    int position = this.email.indexOf("@");
    return this.email.substring(position + 1);
  }
}

class UserManager<T extends User> {
  List<T> userBase = [];

  void addUser(T user) {
    userBase.add(user);
  }

  void deleteUser(T user) {
    userBase.remove(user);
  }

  void displayUserBase() {
    String printingBase = "";
    for (var item in userBase) {
      if (item is AdminUser) {
        printingBase += item.getMailSystem();
      } else {
        printingBase += item.email;
      }
      if (item != userBase.last) {
        printingBase += ", ";
      }
    }
    print(printingBase);
  }
}
