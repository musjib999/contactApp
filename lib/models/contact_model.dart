class ContactModel {
  String fname;
  String lname;
  String phone;
  ContactModel({this.fname, this.lname, this.phone});

  factory ContactModel.fromJson(Map<String, dynamic> data) {
    return ContactModel(
      fname: data['fname'],
      lname: data['lname'],
      phone: data['phone'],
    );
  }
}
