class UserModel {
  final int id;
  final String email;
  final String password;
  final String date_of_birth;
  final String phone;
  final String photo;
  final String country;
  final String address;
  final String gender;
  final String name;
  final int rating;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.date_of_birth,
    required this.gender,
    required this.phone,
    required this.photo,
    required this.country,
    required this.rating,
    required this.address,
    required this.id,



  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name']??'',
      email: json['email']??'',
      password: json['password']??'',
      date_of_birth: json['date_of_birth']??'',
      gender: json['gender']??'',
      phone: json['phone']??'',
      photo: json['photo']??'',
      country: json['country']??'',
      id: json['id']??0,
      rating: json['rating']??0,
      address: json['address']??'',

    );
  }
}
