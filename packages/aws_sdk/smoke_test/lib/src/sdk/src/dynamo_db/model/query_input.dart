// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.query_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/select.dart';

part 'query_input.g.dart';

/// Represents the input of a `Query` operation.
abstract class QueryInput
    with _i1.HttpInput<QueryInput>, _i2.AWSEquatable<QueryInput>
    implements Built<QueryInput, QueryInputBuilder> {
  /// Represents the input of a `Query` operation.
  factory QueryInput({
    required String tableName,
    String? indexName,
    Select? select,
    List<String>? attributesToGet,
    int? limit,
    bool? consistentRead,
    Map<String, Condition>? keyConditions,
    Map<String, Condition>? queryFilter,
    ConditionalOperator? conditionalOperator,
    bool? scanIndexForward,
    Map<String, AttributeValue>? exclusiveStartKey,
    ReturnConsumedCapacity? returnConsumedCapacity,
    String? projectionExpression,
    String? filterExpression,
    String? keyConditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, AttributeValue>? expressionAttributeValues,
  }) {
    return _$QueryInput._(
      tableName: tableName,
      indexName: indexName,
      select: select,
      attributesToGet:
          attributesToGet == null ? null : _i3.BuiltList(attributesToGet),
      limit: limit,
      consistentRead: consistentRead,
      keyConditions: keyConditions == null ? null : _i3.BuiltMap(keyConditions),
      queryFilter: queryFilter == null ? null : _i3.BuiltMap(queryFilter),
      conditionalOperator: conditionalOperator,
      scanIndexForward: scanIndexForward,
      exclusiveStartKey:
          exclusiveStartKey == null ? null : _i3.BuiltMap(exclusiveStartKey),
      returnConsumedCapacity: returnConsumedCapacity,
      projectionExpression: projectionExpression,
      filterExpression: filterExpression,
      keyConditionExpression: keyConditionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i3.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i3.BuiltMap(expressionAttributeValues),
    );
  }

  /// Represents the input of a `Query` operation.
  factory QueryInput.build([void Function(QueryInputBuilder) updates]) =
      _$QueryInput;

  const QueryInput._();

  factory QueryInput.fromRequest(
    QueryInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<QueryInput>> serializers = [
    QueryInputAwsJson10Serializer()
  ];

  /// The name of the table containing the requested items.
  String get tableName;

  /// The name of an index to query. This index can be any local secondary index or global secondary index on the table. Note that if you use the `IndexName` parameter, you must also provide `TableName.`
  String? get indexName;

  /// The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.
  ///
  /// *   `ALL_ATTRIBUTES` \- Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index, DynamoDB fetches the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.
  ///
  /// *   `ALL\_PROJECTED\_ATTRIBUTES` \- Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying `ALL_ATTRIBUTES`.
  ///
  /// *   `COUNT` \- Returns the number of matching items, rather than the matching items themselves. Note that this uses the same quantity of read capacity units as getting the items, and is subject to the same item size calculations.
  ///
  /// *   `SPECIFIC_ATTRIBUTES` \- Returns only the attributes listed in `ProjectionExpression`. This return value is equivalent to specifying `ProjectionExpression` without specifying any value for `Select`.
  ///
  ///     If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB fetches each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.
  ///
  ///     If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.
  ///
  ///
  /// If neither `Select` nor `ProjectionExpression` are specified, DynamoDB defaults to `ALL_ATTRIBUTES` when accessing a table, and `ALL\_PROJECTED\_ATTRIBUTES` when accessing an index. You cannot use both `Select` and `ProjectionExpression` together in a single request, unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is equivalent to specifying `ProjectionExpression` without any value for `Select`.)
  ///
  /// If you use the `ProjectionExpression` parameter, then the value for `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for `Select` will return an error.
  Select? get select;

  /// This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltList<String>? get attributesToGet;

  /// The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in `LastEvaluatedKey` to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in `LastEvaluatedKey` to apply in a subsequent operation to continue the operation. For more information, see [Query and Scan](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html) in the _Amazon DynamoDB Developer Guide_.
  int? get limit;

  /// Determines the read consistency model: If set to `true`, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.
  ///
  /// Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with `ConsistentRead` set to `true`, you will receive a `ValidationException`.
  bool? get consistentRead;

  /// This is a legacy parameter. Use `KeyConditionExpression` instead. For more information, see [KeyConditions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltMap<String, Condition>? get keyConditions;

  /// This is a legacy parameter. Use `FilterExpression` instead. For more information, see [QueryFilter](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltMap<String, Condition>? get queryFilter;

  /// This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ConditionalOperator](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the _Amazon DynamoDB Developer Guide_.
  ConditionalOperator? get conditionalOperator;

  /// Specifies the order for index traversal: If `true` (default), the traversal is performed in ascending order; if `false`, the traversal is performed in descending order.
  ///
  /// Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is Number, the results are stored in numeric order. For type String, the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary data as unsigned.
  ///
  /// If `ScanIndexForward` is `true`, DynamoDB returns the results in the order in which they are stored (by sort key value). This is the default behavior. If `ScanIndexForward` is `false`, DynamoDB reads the results in reverse order by sort key value, and then returns the results to the client.
  bool? get scanIndexForward;

  /// The primary key of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedKey` in the previous operation.
  ///
  /// The data type for `ExclusiveStartKey` must be String, Number, or Binary. No set data types are allowed.
  _i3.BuiltMap<String, AttributeValue>? get exclusiveStartKey;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  ReturnConsumedCapacity? get returnConsumedCapacity;

  /// A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.
  ///
  /// If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.
  ///
  /// For more information, see [Accessing Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  String? get projectionExpression;

  /// A string that contains conditions that DynamoDB applies after the `Query` operation, but before the data is returned to you. Items that do not satisfy the `FilterExpression` criteria are not returned.
  ///
  /// A `FilterExpression` does not allow key attributes. You cannot define a filter expression based on a partition key or a sort key.
  ///
  /// A `FilterExpression` is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.
  ///
  /// For more information, see [Filter Expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Query.FilterExpression) in the _Amazon DynamoDB Developer Guide_.
  String? get filterExpression;

  /// The condition that specifies the key values for items to be retrieved by the `Query` action.
  ///
  /// The condition must perform an equality test on a single partition key value.
  ///
  /// The condition can optionally perform one of several comparison tests on a single sort key value. This allows `Query` to retrieve one item with a given partition key value and sort key value, or several items that have the same partition key value but different sort key values.
  ///
  /// The partition key equality test is required, and must be specified in the following format:
  ///
  /// `partitionKeyName` _=_ `:partitionkeyval`
  ///
  /// If you also want to provide a condition for the sort key, it must be combined using `AND` with the condition for the sort key. Following is an example, using the **=** comparison operator for the sort key:
  ///
  /// `partitionKeyName` `=` `:partitionkeyval` `AND` `sortKeyName` `=` `:sortkeyval`
  ///
  /// Valid comparisons for the sort key condition are as follows:
  ///
  /// *   `sortKeyName` `=` `:sortkeyval` \- true if the sort key value is equal to `:sortkeyval`.
  ///
  /// *   `sortKeyName` `<` `:sortkeyval` \- true if the sort key value is less than `:sortkeyval`.
  ///
  /// *   `sortKeyName` `<=` `:sortkeyval` \- true if the sort key value is less than or equal to `:sortkeyval`.
  ///
  /// *   `sortKeyName` `>` `:sortkeyval` \- true if the sort key value is greater than `:sortkeyval`.
  ///
  /// *   `sortKeyName` `>=` `:sortkeyval` \- true if the sort key value is greater than or equal to `:sortkeyval`.
  ///
  /// *   `sortKeyName` `BETWEEN` `:sortkeyval1` `AND` `:sortkeyval2` \- true if the sort key value is greater than or equal to `:sortkeyval1`, and less than or equal to `:sortkeyval2`.
  ///
  /// *   `begins_with (` `sortKeyName`, `:sortkeyval` `)` \- true if the sort key value begins with a particular operand. (You cannot use this function with a sort key that is of type Number.) Note that the function name `begins_with` is case-sensitive.
  ///
  ///
  /// Use the `ExpressionAttributeValues` parameter to replace tokens such as `:partitionval` and `:sortval` with actual values at runtime.
  ///
  /// You can optionally use the `ExpressionAttributeNames` parameter to replace the names of the partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts with a DynamoDB reserved word. For example, the following `KeyConditionExpression` parameter causes an error because _Size_ is a reserved word:
  ///
  /// *   `Size = :myval`
  ///
  ///
  /// To work around this, define a placeholder (such a `#S`) to represent the attribute name _Size_. `KeyConditionExpression` then is as follows:
  ///
  /// *   `#S = :myval`
  ///
  ///
  /// For a list of reserved words, see [Reserved Words](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// For more information on `ExpressionAttributeNames` and `ExpressionAttributeValues`, see [Using Placeholders for Attribute Names and Values](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html) in the _Amazon DynamoDB Developer Guide_.
  String? get keyConditionExpression;

  /// One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:
  ///
  /// *   To access an attribute whose name conflicts with a DynamoDB reserved word.
  ///
  /// *   To create a placeholder for repeating occurrences of an attribute name in an expression.
  ///
  /// *   To prevent special characters in an attribute name from being misinterpreted in an expression.
  ///
  ///
  /// Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:
  ///
  /// *   `Percentile`
  ///
  ///
  /// The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the _Amazon DynamoDB Developer Guide_). To work around this, you could specify the following for `ExpressionAttributeNames`:
  ///
  /// *   `{"#P":"Percentile"}`
  ///
  ///
  /// You could then use this substitution in an expression, as in this example:
  ///
  /// *   `#P = :val`
  ///
  ///
  /// Tokens that begin with the **:** character are _expression attribute values_, which are placeholders for the actual value at runtime.
  ///
  /// For more information on expression attribute names, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  ///
  /// Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the _ProductStatus_ attribute was one of the following:
  ///
  /// `Available | Backordered | Discontinued`
  ///
  /// You would first need to specify `ExpressionAttributeValues` as follows:
  ///
  /// `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`
  ///
  /// You could then use these values in an expression, such as this:
  ///
  /// `ProductStatus IN (:avail, :back, :disc)`
  ///
  /// For more information on expression attribute values, see [Specifying Conditions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltMap<String, AttributeValue>? get expressionAttributeValues;
  @override
  QueryInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        indexName,
        select,
        attributesToGet,
        limit,
        consistentRead,
        keyConditions,
        queryFilter,
        conditionalOperator,
        scanIndexForward,
        exclusiveStartKey,
        returnConsumedCapacity,
        projectionExpression,
        filterExpression,
        keyConditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'select',
        select,
      )
      ..add(
        'attributesToGet',
        attributesToGet,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'consistentRead',
        consistentRead,
      )
      ..add(
        'keyConditions',
        keyConditions,
      )
      ..add(
        'queryFilter',
        queryFilter,
      )
      ..add(
        'conditionalOperator',
        conditionalOperator,
      )
      ..add(
        'scanIndexForward',
        scanIndexForward,
      )
      ..add(
        'exclusiveStartKey',
        exclusiveStartKey,
      )
      ..add(
        'returnConsumedCapacity',
        returnConsumedCapacity,
      )
      ..add(
        'projectionExpression',
        projectionExpression,
      )
      ..add(
        'filterExpression',
        filterExpression,
      )
      ..add(
        'keyConditionExpression',
        keyConditionExpression,
      )
      ..add(
        'expressionAttributeNames',
        expressionAttributeNames,
      )
      ..add(
        'expressionAttributeValues',
        expressionAttributeValues,
      );
    return helper.toString();
  }
}

class QueryInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<QueryInput> {
  const QueryInputAwsJson10Serializer() : super('QueryInput');

  @override
  Iterable<Type> get types => const [
        QueryInput,
        _$QueryInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  QueryInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Select':
          result.select = (serializers.deserialize(
            value,
            specifiedType: const FullType(Select),
          ) as Select);
        case 'AttributesToGet':
          result.attributesToGet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ConsistentRead':
          result.consistentRead = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'KeyConditions':
          result.keyConditions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(Condition),
              ],
            ),
          ) as _i3.BuiltMap<String, Condition>));
        case 'QueryFilter':
          result.queryFilter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(Condition),
              ],
            ),
          ) as _i3.BuiltMap<String, Condition>));
        case 'ConditionalOperator':
          result.conditionalOperator = (serializers.deserialize(
            value,
            specifiedType: const FullType(ConditionalOperator),
          ) as ConditionalOperator);
        case 'ScanIndexForward':
          result.scanIndexForward = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ExclusiveStartKey':
          result.exclusiveStartKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(AttributeValue),
              ],
            ),
          ) as _i3.BuiltMap<String, AttributeValue>));
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReturnConsumedCapacity),
          ) as ReturnConsumedCapacity);
        case 'ProjectionExpression':
          result.projectionExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FilterExpression':
          result.filterExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeyConditionExpression':
          result.keyConditionExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpressionAttributeNames':
          result.expressionAttributeNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'ExpressionAttributeValues':
          result.expressionAttributeValues.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(AttributeValue),
              ],
            ),
          ) as _i3.BuiltMap<String, AttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final QueryInput(
      :tableName,
      :indexName,
      :select,
      :attributesToGet,
      :limit,
      :consistentRead,
      :keyConditions,
      :queryFilter,
      :conditionalOperator,
      :scanIndexForward,
      :exclusiveStartKey,
      :returnConsumedCapacity,
      :projectionExpression,
      :filterExpression,
      :keyConditionExpression,
      :expressionAttributeNames,
      :expressionAttributeValues
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (select != null) {
      result$
        ..add('Select')
        ..add(serializers.serialize(
          select,
          specifiedType: const FullType(Select),
        ));
    }
    if (attributesToGet != null) {
      result$
        ..add('AttributesToGet')
        ..add(serializers.serialize(
          attributesToGet,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (limit != null) {
      result$
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (consistentRead != null) {
      result$
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          consistentRead,
          specifiedType: const FullType(bool),
        ));
    }
    if (keyConditions != null) {
      result$
        ..add('KeyConditions')
        ..add(serializers.serialize(
          keyConditions,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(Condition),
            ],
          ),
        ));
    }
    if (queryFilter != null) {
      result$
        ..add('QueryFilter')
        ..add(serializers.serialize(
          queryFilter,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(Condition),
            ],
          ),
        ));
    }
    if (conditionalOperator != null) {
      result$
        ..add('ConditionalOperator')
        ..add(serializers.serialize(
          conditionalOperator,
          specifiedType: const FullType(ConditionalOperator),
        ));
    }
    if (scanIndexForward != null) {
      result$
        ..add('ScanIndexForward')
        ..add(serializers.serialize(
          scanIndexForward,
          specifiedType: const FullType(bool),
        ));
    }
    if (exclusiveStartKey != null) {
      result$
        ..add('ExclusiveStartKey')
        ..add(serializers.serialize(
          exclusiveStartKey,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ));
    }
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(ReturnConsumedCapacity),
        ));
    }
    if (projectionExpression != null) {
      result$
        ..add('ProjectionExpression')
        ..add(serializers.serialize(
          projectionExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (filterExpression != null) {
      result$
        ..add('FilterExpression')
        ..add(serializers.serialize(
          filterExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (keyConditionExpression != null) {
      result$
        ..add('KeyConditionExpression')
        ..add(serializers.serialize(
          keyConditionExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (expressionAttributeNames != null) {
      result$
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          expressionAttributeNames,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (expressionAttributeValues != null) {
      result$
        ..add('ExpressionAttributeValues')
        ..add(serializers.serialize(
          expressionAttributeValues,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ));
    }
    return result$;
  }
}
