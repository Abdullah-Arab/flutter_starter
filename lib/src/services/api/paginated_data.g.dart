// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationData<T> _$$_PaginationDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PaginationData<T>(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_PaginationDataToJson<T>(
  _$_PaginationData<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('current_page', instance.currentPage);
  val['data'] = instance.data.map(toJsonT).toList();
  writeNotNull('first_page_url', instance.firstPageUrl);
  writeNotNull('from', instance.from);
  writeNotNull('last_page', instance.lastPage);
  writeNotNull('last_page_url', instance.lastPageUrl);
  val['links'] = instance.links.map((e) => e.toJson()).toList();
  writeNotNull('next_page_url', instance.nextPageUrl);
  writeNotNull('path', instance.path);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('prev_page_url', instance.prevPageUrl);
  writeNotNull('to', instance.to);
  writeNotNull('total', instance.total);
  return val;
}
