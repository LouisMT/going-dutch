// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListContributorItemResponse _$ListContributorItemResponseFromJson(
  Map<String, dynamic> json,
) => _ListContributorItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$ListContributorItemResponseToJson(
  _ListContributorItemResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_ListContributorsResponse _$ListContributorsResponseFromJson(
  Map<String, dynamic> json,
) => _ListContributorsResponse(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => ListContributorItemResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ListContributorsResponseToJson(
  _ListContributorsResponse instance,
) => <String, dynamic>{'items': instance.items};

_CreateContributorRequest _$CreateContributorRequestFromJson(
  Map<String, dynamic> json,
) => _CreateContributorRequest(name: json['name'] as String);

Map<String, dynamic> _$CreateContributorRequestToJson(
  _CreateContributorRequest instance,
) => <String, dynamic>{'name': instance.name};

_CreateContributorResponse _$CreateContributorResponseFromJson(
  Map<String, dynamic> json,
) => _CreateContributorResponse(id: (json['id'] as num).toInt());

Map<String, dynamic> _$CreateContributorResponseToJson(
  _CreateContributorResponse instance,
) => <String, dynamic>{'id': instance.id};
