import 'dart:convert';
import 'package:admin_panel/API%20CALL/baseUrl.dart';
import 'package:graphql/client.dart';

BaseUrl url = BaseUrl();
Future getStoresTables(
    page,
    limit,
    store
    ) async {
  try {
    var getStores = 'query{\n  getStoreTables(input:{\n    page : $page\n    limit : $limit\n    storeId:\"$store\"\n  }){\n    statusCode\n    message\n    error{\n      message\n      path\n    }\n    previousPage\n    currentPage\n    nextPage\n    totalRecords\n    totalPages\n    limit\n    data{\n      id\n      storeId\n      name\n      capacity\n    }\n    \n  }\n}';
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

    final QueryOptions options = QueryOptions(
      document: gql(getStores),
    );

    final QueryResult result = await client.query(options);

    if (result.hasException) {
      print('exception;');
      print(result.exception.toString());
      // return '';
    }
    print(json.encode(result.data));
    return result.data['getStoreTables']['data'];
  } catch (error) {
    throw error;
  }
}



