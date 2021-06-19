import 'dart:convert';

import 'package:admin_panel/API%20CALL/Model/get_stores_model.dart';
import 'package:admin_panel/API%20CALL/baseUrl.dart';
import 'package:graphql/client.dart';

BaseUrl url = BaseUrl();
Future getStores() async {
  try {
    var getStores = "query{\n  getStores{\n    statusCode\n    message\n    error{\n      message\n      path\n    }\n    data{\n      id\n      name\n      address\n      addressLine2\n      city\n      state\n      postCode\n      countryId\n      phone\n      operatingHours\n      email\n      companyName\n      websiteUrl\n      gstIdNo\n      sstIdNo\n      businessRegistrationNo\n      extraInfo\n    \n    }\n  }\n}";
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
      document: gql(getStores),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      print('exception;');
      print(result.exception.toString());
      // return '';
    }
    print(json.encode(result.data));
    return result.data['getStores']['data'];
  } catch (error) {
    throw error;
  }
}



