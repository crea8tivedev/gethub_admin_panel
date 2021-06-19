import 'dart:convert';
import 'package:admin_panel/API%20CALL/Model/receipt_template_model.dart';
import 'package:admin_panel/API%20CALL/baseUrl.dart';
import 'package:graphql/client.dart';

BaseUrl url = BaseUrl();
Future<ReceiptTemplateModal> getReceiptTemplate() async {
  try {
    var addStore = "query{\n  getReceiptTemplates{\n    statusCode,\n    message,\n    error{\n      path,\n      message,\n    }\n    data{\n      id,\n      name,\n    }\n  }\n}";
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
      document: gql(addStore),
    );

    final QueryResult result = await client.query(options);

    if (result.hasException) {
      print('exception;');
      print(result.exception.toString());
      // return '';
    }
    print(json.encode(result.data));

    return receiptTemplateModalFromJson(json.encode(result.data));
    // return result.data['customerRegistration']['message'];
  } catch (error) {
    throw error;
  }
}

