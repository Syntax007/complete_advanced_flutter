class SliderObject {
  late String title;
  late String subTitle;
  late String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class Customer {
  String id;
  String name;
  int numOfNotifications;

  Customer(this.id, this.name, this.numOfNotifications);

}

class Contacts {
  String email;
  String phone;
  int link;

  Contacts(this.email, this.phone, this.link);

}



class Authentication {
  Customer? customer;
  Contacts? contacts;

  Authentication(this.customer, this.contacts);

}