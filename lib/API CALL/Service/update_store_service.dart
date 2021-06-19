import 'dart:convert';
import 'package:admin_panel/API%20CALL/Model/create_store_model.dart';
import 'package:admin_panel/API%20CALL/Model/update_store_model.dart';
import 'package:admin_panel/API%20CALL/baseUrl.dart';
import 'package:graphql/client.dart';

BaseUrl url = BaseUrl();
Future<UpdateStoreModal> updateStore(
    id,
    name,
    address,
    addressLine2,
    city,
    state,
    postCode,
    recieptTemplateId,
    countryId,
    phone,
    operatingHours,
    email,
    companyName,
    websiteUrl,
    gstIdNo,
    sstIdNo,
    businessRegistrationNo,
    extraInfo,
    ) async {
  try {
    var addStore =
        'mutation{\n  updateStore(id:"$id"  \n  input :{\n    name :"$name"\n    address :"$address"\n    addressLine2:"$addressLine2"\n    city:"$city"\n    state :"$state"\n    postCode:"$postCode"\n    receiptTemplateId:"$recieptTemplateId"\n    countryId:"$countryId"\n    phone:"$phone"\n    operatingHours:"$operatingHours"\n    email:"$email"\n    companyName:"$companyName"\n    websiteUrl:"$websiteUrl"\n    gstIdNo:"$gstIdNo"\n    sstIdNo:"$sstIdNo"\n    businessRegistrationNo:"$businessRegistrationNo"\n    extraInfo :"$extraInfo"\n  }){\n    statusCode\n    message\n    error{\n      path\n      message\n    }\n    data{\n      id\n      name\n      address\n      addressLine2\n      city\n      state\n      postCode\n      countryId\n      phone\n      operatingHours\n      email\n      companyName\n      websiteUrl\n      gstIdNo\n      sstIdNo\n      businessRegistrationNo\n      extraInfo\n    }\n  }\n}';
    final _httpLink = HttpLink(
      '${url.baseUrl}',
    );
    print(url.baseUrl);
    Link _link = (_httpLink);

    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );

    print(client.link);

    final MutationOptions options = MutationOptions(
      document: gql(addStore),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      print('exception;');
      print(result.exception.toString());
      // return '';
    }
    print(json.encode(result.data));
    print(result.data);
    return updateStoreModalFromJson(json.encode(result.data));
    // return result.data['customerRegistration']['message'];
  } catch (error) {
    throw error;
  }
}


