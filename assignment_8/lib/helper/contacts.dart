class Contact {
  String contactName = "";
  String contactNo = "";

  Contact(name, no) {
    contactName = name;
    contactNo = no;
  }
}

class ContactList {
  final List<Contact> contactList = [
    Contact('ABCD', "8329763258"),
    Contact('XYZ', "8345697120"),
    Contact('LMNO', "9468451132"),
    Contact('PQRS', "87896214850"),
    Contact('QWERT', "9356697120"),
//    Contact('HIJK', "7789632014"),
  ];
}
