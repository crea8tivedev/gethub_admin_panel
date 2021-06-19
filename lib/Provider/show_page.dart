import 'package:admin_panel/Settings/Store/stores.dart';
import 'package:flutter/foundation.dart';

class ShowPage extends ChangeNotifier{
  var id;
 var name;
 var address;
 var  addressLine2;
 var  city;
 var  state;
 var  postCode;
 var countryId;
 var phone;
 var  operatingHours;
 var  email;
 var companyName;
 var websiteUrl;
 var gstIdNo;
 var sstIdNo;
 var businessRegistrationNo;
 var extraInfo;

  void onChange(value){
    id = value;
    name = value;
    address = value;
    addressLine2= value;
    city= value;
    state= value;
    postCode= value;
    countryId= value;
    phone= value;
    operatingHours= value;
    email= value;
    companyName= value;
    websiteUrl= value;
    gstIdNo= value;
    sstIdNo= value;
    businessRegistrationNo= value;
    extraInfo= value;
    notifyListeners();
  }
}