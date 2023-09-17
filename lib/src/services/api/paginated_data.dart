import '/src/services/api/link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'paginated_data.freezed.dart';
part 'paginated_data.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationData<T> with _$PaginationData {
  const factory PaginationData({
    required int? currentPage,
    required List<T> data,
    required String? firstPageUrl,
    required int? from,
    required int? lastPage,
    required String? lastPageUrl,
    required List<Link> links,
    required String? nextPageUrl,
    required String? path,
    required int? perPage,
    required String? prevPageUrl,
    required int? to,
    required int? total,
  }) = _PaginationData;

  factory PaginationData.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginationDataFromJson(json, fromJsonT);
}
