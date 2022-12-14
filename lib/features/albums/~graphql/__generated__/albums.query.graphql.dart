import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$getAlbums {
  factory Variables$Query$getAlbums({
    int? page,
    int? limit,
  }) =>
      Variables$Query$getAlbums._({
        if (page != null) r'page': page,
        if (limit != null) r'limit': limit,
      });

  Variables$Query$getAlbums._(this._$data);

  factory Variables$Query$getAlbums.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Query$getAlbums._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getAlbums<Variables$Query$getAlbums> get copyWith =>
      CopyWith$Variables$Query$getAlbums(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getAlbums) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getAlbums<TRes> {
  factory CopyWith$Variables$Query$getAlbums(
    Variables$Query$getAlbums instance,
    TRes Function(Variables$Query$getAlbums) then,
  ) = _CopyWithImpl$Variables$Query$getAlbums;

  factory CopyWith$Variables$Query$getAlbums.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getAlbums;

  TRes call({
    int? page,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Query$getAlbums<TRes>
    implements CopyWith$Variables$Query$getAlbums<TRes> {
  _CopyWithImpl$Variables$Query$getAlbums(
    this._instance,
    this._then,
  );

  final Variables$Query$getAlbums _instance;

  final TRes Function(Variables$Query$getAlbums) _then;

  static const _undefined = {};

  TRes call({
    Object? page = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Query$getAlbums._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getAlbums<TRes>
    implements CopyWith$Variables$Query$getAlbums<TRes> {
  _CopyWithStubImpl$Variables$Query$getAlbums(this._res);

  TRes _res;

  call({
    int? page,
    int? limit,
  }) =>
      _res;
}

class Query$getAlbums {
  Query$getAlbums({
    this.albums,
    required this.$__typename,
  });

  factory Query$getAlbums.fromJson(Map<String, dynamic> json) {
    final l$albums = json['albums'];
    final l$$__typename = json['__typename'];
    return Query$getAlbums(
      albums: l$albums == null
          ? null
          : Query$getAlbums$albums.fromJson((l$albums as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getAlbums$albums? albums;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$albums = albums;
    _resultData['albums'] = l$albums?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$albums = albums;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$albums,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAlbums) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$albums = albums;
    final lOther$albums = other.albums;
    if (l$albums != lOther$albums) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAlbums on Query$getAlbums {
  CopyWith$Query$getAlbums<Query$getAlbums> get copyWith =>
      CopyWith$Query$getAlbums(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getAlbums<TRes> {
  factory CopyWith$Query$getAlbums(
    Query$getAlbums instance,
    TRes Function(Query$getAlbums) then,
  ) = _CopyWithImpl$Query$getAlbums;

  factory CopyWith$Query$getAlbums.stub(TRes res) =
      _CopyWithStubImpl$Query$getAlbums;

  TRes call({
    Query$getAlbums$albums? albums,
    String? $__typename,
  });
  CopyWith$Query$getAlbums$albums<TRes> get albums;
}

class _CopyWithImpl$Query$getAlbums<TRes>
    implements CopyWith$Query$getAlbums<TRes> {
  _CopyWithImpl$Query$getAlbums(
    this._instance,
    this._then,
  );

  final Query$getAlbums _instance;

  final TRes Function(Query$getAlbums) _then;

  static const _undefined = {};

  TRes call({
    Object? albums = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAlbums(
        albums: albums == _undefined
            ? _instance.albums
            : (albums as Query$getAlbums$albums?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getAlbums$albums<TRes> get albums {
    final local$albums = _instance.albums;
    return local$albums == null
        ? CopyWith$Query$getAlbums$albums.stub(_then(_instance))
        : CopyWith$Query$getAlbums$albums(local$albums, (e) => call(albums: e));
  }
}

class _CopyWithStubImpl$Query$getAlbums<TRes>
    implements CopyWith$Query$getAlbums<TRes> {
  _CopyWithStubImpl$Query$getAlbums(this._res);

  TRes _res;

  call({
    Query$getAlbums$albums? albums,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getAlbums$albums<TRes> get albums =>
      CopyWith$Query$getAlbums$albums.stub(_res);
}

const documentNodeQuerygetAlbums = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getAlbums'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'albums'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'options'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'paginate'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'limit'),
                    value: VariableNode(name: NameNode(value: 'limit')),
                  ),
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'company'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getAlbums _parserFn$Query$getAlbums(Map<String, dynamic> data) =>
    Query$getAlbums.fromJson(data);

class Options$Query$getAlbums extends graphql.QueryOptions<Query$getAlbums> {
  Options$Query$getAlbums({
    String? operationName,
    Variables$Query$getAlbums? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQuerygetAlbums,
          parserFn: _parserFn$Query$getAlbums,
        );
}

class WatchOptions$Query$getAlbums
    extends graphql.WatchQueryOptions<Query$getAlbums> {
  WatchOptions$Query$getAlbums({
    String? operationName,
    Variables$Query$getAlbums? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQuerygetAlbums,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getAlbums,
        );
}

class FetchMoreOptions$Query$getAlbums extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getAlbums({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getAlbums? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetAlbums,
        );
}

extension ClientExtension$Query$getAlbums on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getAlbums>> query$getAlbums(
          [Options$Query$getAlbums? options]) async =>
      await this.query(options ?? Options$Query$getAlbums());
  graphql.ObservableQuery<Query$getAlbums> watchQuery$getAlbums(
          [WatchOptions$Query$getAlbums? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getAlbums());
  void writeQuery$getAlbums({
    required Query$getAlbums data,
    Variables$Query$getAlbums? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygetAlbums),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getAlbums? readQuery$getAlbums({
    Variables$Query$getAlbums? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetAlbums),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getAlbums.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getAlbums> useQuery$getAlbums(
        [Options$Query$getAlbums? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getAlbums());
graphql.ObservableQuery<Query$getAlbums> useWatchQuery$getAlbums(
        [WatchOptions$Query$getAlbums? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$getAlbums());

class Query$getAlbums$Widget extends graphql_flutter.Query<Query$getAlbums> {
  Query$getAlbums$Widget({
    widgets.Key? key,
    Options$Query$getAlbums? options,
    required graphql_flutter.QueryBuilder<Query$getAlbums> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getAlbums(),
          builder: builder,
        );
}

class Query$getAlbums$albums {
  Query$getAlbums$albums({
    this.data,
    required this.$__typename,
  });

  factory Query$getAlbums$albums.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Query$getAlbums$albums(
      data: (l$data as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getAlbums$albums$data.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getAlbums$albums$data?>? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAlbums$albums) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAlbums$albums on Query$getAlbums$albums {
  CopyWith$Query$getAlbums$albums<Query$getAlbums$albums> get copyWith =>
      CopyWith$Query$getAlbums$albums(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getAlbums$albums<TRes> {
  factory CopyWith$Query$getAlbums$albums(
    Query$getAlbums$albums instance,
    TRes Function(Query$getAlbums$albums) then,
  ) = _CopyWithImpl$Query$getAlbums$albums;

  factory CopyWith$Query$getAlbums$albums.stub(TRes res) =
      _CopyWithStubImpl$Query$getAlbums$albums;

  TRes call({
    List<Query$getAlbums$albums$data?>? data,
    String? $__typename,
  });
  TRes data(
      Iterable<Query$getAlbums$albums$data?>? Function(
              Iterable<
                  CopyWith$Query$getAlbums$albums$data<
                      Query$getAlbums$albums$data>?>?)
          _fn);
}

class _CopyWithImpl$Query$getAlbums$albums<TRes>
    implements CopyWith$Query$getAlbums$albums<TRes> {
  _CopyWithImpl$Query$getAlbums$albums(
    this._instance,
    this._then,
  );

  final Query$getAlbums$albums _instance;

  final TRes Function(Query$getAlbums$albums) _then;

  static const _undefined = {};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAlbums$albums(
        data: data == _undefined
            ? _instance.data
            : (data as List<Query$getAlbums$albums$data?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes data(
          Iterable<Query$getAlbums$albums$data?>? Function(
                  Iterable<
                      CopyWith$Query$getAlbums$albums$data<
                          Query$getAlbums$albums$data>?>?)
              _fn) =>
      call(
          data: _fn(_instance.data?.map((e) => e == null
              ? null
              : CopyWith$Query$getAlbums$albums$data(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getAlbums$albums<TRes>
    implements CopyWith$Query$getAlbums$albums<TRes> {
  _CopyWithStubImpl$Query$getAlbums$albums(this._res);

  TRes _res;

  call({
    List<Query$getAlbums$albums$data?>? data,
    String? $__typename,
  }) =>
      _res;
  data(_fn) => _res;
}

class Query$getAlbums$albums$data {
  Query$getAlbums$albums$data({
    this.id,
    this.title,
    this.user,
    required this.$__typename,
  });

  factory Query$getAlbums$albums$data.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$getAlbums$albums$data(
      id: (l$id as String?),
      title: (l$title as String?),
      user: l$user == null
          ? null
          : Query$getAlbums$albums$data$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? title;

  final Query$getAlbums$albums$data$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAlbums$albums$data) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAlbums$albums$data
    on Query$getAlbums$albums$data {
  CopyWith$Query$getAlbums$albums$data<Query$getAlbums$albums$data>
      get copyWith => CopyWith$Query$getAlbums$albums$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAlbums$albums$data<TRes> {
  factory CopyWith$Query$getAlbums$albums$data(
    Query$getAlbums$albums$data instance,
    TRes Function(Query$getAlbums$albums$data) then,
  ) = _CopyWithImpl$Query$getAlbums$albums$data;

  factory CopyWith$Query$getAlbums$albums$data.stub(TRes res) =
      _CopyWithStubImpl$Query$getAlbums$albums$data;

  TRes call({
    String? id,
    String? title,
    Query$getAlbums$albums$data$user? user,
    String? $__typename,
  });
  CopyWith$Query$getAlbums$albums$data$user<TRes> get user;
}

class _CopyWithImpl$Query$getAlbums$albums$data<TRes>
    implements CopyWith$Query$getAlbums$albums$data<TRes> {
  _CopyWithImpl$Query$getAlbums$albums$data(
    this._instance,
    this._then,
  );

  final Query$getAlbums$albums$data _instance;

  final TRes Function(Query$getAlbums$albums$data) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAlbums$albums$data(
        id: id == _undefined ? _instance.id : (id as String?),
        title: title == _undefined ? _instance.title : (title as String?),
        user: user == _undefined
            ? _instance.user
            : (user as Query$getAlbums$albums$data$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getAlbums$albums$data$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$getAlbums$albums$data$user.stub(_then(_instance))
        : CopyWith$Query$getAlbums$albums$data$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$getAlbums$albums$data<TRes>
    implements CopyWith$Query$getAlbums$albums$data<TRes> {
  _CopyWithStubImpl$Query$getAlbums$albums$data(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Query$getAlbums$albums$data$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getAlbums$albums$data$user<TRes> get user =>
      CopyWith$Query$getAlbums$albums$data$user.stub(_res);
}

class Query$getAlbums$albums$data$user {
  Query$getAlbums$albums$data$user({
    this.name,
    this.username,
    this.email,
    this.company,
    required this.$__typename,
  });

  factory Query$getAlbums$albums$data$user.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$company = json['company'];
    final l$$__typename = json['__typename'];
    return Query$getAlbums$albums$data$user(
      name: (l$name as String?),
      username: (l$username as String?),
      email: (l$email as String?),
      company: l$company == null
          ? null
          : Query$getAlbums$albums$data$user$company.fromJson(
              (l$company as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? username;

  final String? email;

  final Query$getAlbums$albums$data$user$company? company;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$company = company;
    _resultData['company'] = l$company?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$username = username;
    final l$email = email;
    final l$company = company;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$username,
      l$email,
      l$company,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAlbums$albums$data$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAlbums$albums$data$user
    on Query$getAlbums$albums$data$user {
  CopyWith$Query$getAlbums$albums$data$user<Query$getAlbums$albums$data$user>
      get copyWith => CopyWith$Query$getAlbums$albums$data$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAlbums$albums$data$user<TRes> {
  factory CopyWith$Query$getAlbums$albums$data$user(
    Query$getAlbums$albums$data$user instance,
    TRes Function(Query$getAlbums$albums$data$user) then,
  ) = _CopyWithImpl$Query$getAlbums$albums$data$user;

  factory CopyWith$Query$getAlbums$albums$data$user.stub(TRes res) =
      _CopyWithStubImpl$Query$getAlbums$albums$data$user;

  TRes call({
    String? name,
    String? username,
    String? email,
    Query$getAlbums$albums$data$user$company? company,
    String? $__typename,
  });
  CopyWith$Query$getAlbums$albums$data$user$company<TRes> get company;
}

class _CopyWithImpl$Query$getAlbums$albums$data$user<TRes>
    implements CopyWith$Query$getAlbums$albums$data$user<TRes> {
  _CopyWithImpl$Query$getAlbums$albums$data$user(
    this._instance,
    this._then,
  );

  final Query$getAlbums$albums$data$user _instance;

  final TRes Function(Query$getAlbums$albums$data$user) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? company = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAlbums$albums$data$user(
        name: name == _undefined ? _instance.name : (name as String?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        company: company == _undefined
            ? _instance.company
            : (company as Query$getAlbums$albums$data$user$company?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getAlbums$albums$data$user$company<TRes> get company {
    final local$company = _instance.company;
    return local$company == null
        ? CopyWith$Query$getAlbums$albums$data$user$company.stub(
            _then(_instance))
        : CopyWith$Query$getAlbums$albums$data$user$company(
            local$company, (e) => call(company: e));
  }
}

class _CopyWithStubImpl$Query$getAlbums$albums$data$user<TRes>
    implements CopyWith$Query$getAlbums$albums$data$user<TRes> {
  _CopyWithStubImpl$Query$getAlbums$albums$data$user(this._res);

  TRes _res;

  call({
    String? name,
    String? username,
    String? email,
    Query$getAlbums$albums$data$user$company? company,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getAlbums$albums$data$user$company<TRes> get company =>
      CopyWith$Query$getAlbums$albums$data$user$company.stub(_res);
}

class Query$getAlbums$albums$data$user$company {
  Query$getAlbums$albums$data$user$company({
    this.name,
    required this.$__typename,
  });

  factory Query$getAlbums$albums$data$user$company.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getAlbums$albums$data$user$company(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAlbums$albums$data$user$company) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAlbums$albums$data$user$company
    on Query$getAlbums$albums$data$user$company {
  CopyWith$Query$getAlbums$albums$data$user$company<
          Query$getAlbums$albums$data$user$company>
      get copyWith => CopyWith$Query$getAlbums$albums$data$user$company(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAlbums$albums$data$user$company<TRes> {
  factory CopyWith$Query$getAlbums$albums$data$user$company(
    Query$getAlbums$albums$data$user$company instance,
    TRes Function(Query$getAlbums$albums$data$user$company) then,
  ) = _CopyWithImpl$Query$getAlbums$albums$data$user$company;

  factory CopyWith$Query$getAlbums$albums$data$user$company.stub(TRes res) =
      _CopyWithStubImpl$Query$getAlbums$albums$data$user$company;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getAlbums$albums$data$user$company<TRes>
    implements CopyWith$Query$getAlbums$albums$data$user$company<TRes> {
  _CopyWithImpl$Query$getAlbums$albums$data$user$company(
    this._instance,
    this._then,
  );

  final Query$getAlbums$albums$data$user$company _instance;

  final TRes Function(Query$getAlbums$albums$data$user$company) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAlbums$albums$data$user$company(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getAlbums$albums$data$user$company<TRes>
    implements CopyWith$Query$getAlbums$albums$data$user$company<TRes> {
  _CopyWithStubImpl$Query$getAlbums$albums$data$user$company(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
