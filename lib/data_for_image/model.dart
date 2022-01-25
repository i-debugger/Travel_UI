class UserModel {
  final String name, imgUrl, email, contact, site;

  UserModel({
    required this.name,
    required this.imgUrl,
    required this.email,
    required this.contact,
    required this.site,
  });
}

List<UserModel> dummyData = [
  UserModel(
    name: 'Grace Shelby',
    imgUrl: 'assets/images/user.jpg',
    email: 'graceshelby@gmail.com',
    contact: '9876543210',
    site: 'www.graceshelby.com',
  )
];
