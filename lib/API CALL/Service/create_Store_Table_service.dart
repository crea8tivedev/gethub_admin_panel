import 'dart:convert';
import 'package:admin_panel/API%20CALL/Model/create_store_model.dart';
import 'package:admin_panel/API%20CALL/Model/create_store_table_model.dart';
import 'package:admin_panel/API%20CALL/Model/update_store_model.dart';
import 'package:admin_panel/API%20CALL/baseUrl.dart';
import 'package:graphql/client.dart';

BaseUrl url = BaseUrl();
Future createStoreTable<CreateStoreTableModel>(
name,
storeId,
capacity,
    ) async {
  try {
    var addStore =
        'mutation{\n  createStoreTable(input:{\n    name :"$name"\n    storeId:"$storeId"\n    capacity:$capacity\n  }){\n    statusCode\n    message\n    error{\n      path\n       message\n    }\n    data{\n      id\n      storeId\n      name\n      capacity\n    }\n  }\n}';
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
    return createStoreTableModelFromJson(json.encode(result.data));
    // return result.data['customerRegistration']['message'];
  } catch (error) {
    throw error;
  }
}

