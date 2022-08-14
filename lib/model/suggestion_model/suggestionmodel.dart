
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestionmodel.freezed.dart';
part 'suggestionmodel.g.dart';

@freezed
class SuggestionModel with _$SuggestionModel {
  factory SuggestionModel({required String label}) = _SuggestionModel;
	
  factory SuggestionModel.fromJson(Map<String, dynamic> json) =>
			_$SuggestionModelFromJson(json);
}
