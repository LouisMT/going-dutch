// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListContributorItemResponse _$ListContributorItemResponseFromJson(
  Map<String, dynamic> json,
) => ListContributorItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$ListContributorItemResponseToJson(
  ListContributorItemResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

ListContributorsResponse _$ListContributorsResponseFromJson(
  Map<String, dynamic> json,
) => ListContributorsResponse(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => ListContributorItemResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ListContributorsResponseToJson(
  ListContributorsResponse instance,
) => <String, dynamic>{'items': instance.items};

CreateContributorRequest _$CreateContributorRequestFromJson(
  Map<String, dynamic> json,
) => CreateContributorRequest(name: json['name'] as String);

Map<String, dynamic> _$CreateContributorRequestToJson(
  CreateContributorRequest instance,
) => <String, dynamic>{'name': instance.name};

CreateContributorResponse _$CreateContributorResponseFromJson(
  Map<String, dynamic> json,
) => CreateContributorResponse(id: (json['id'] as num).toInt());

Map<String, dynamic> _$CreateContributorResponseToJson(
  CreateContributorResponse instance,
) => <String, dynamic>{'id': instance.id};
