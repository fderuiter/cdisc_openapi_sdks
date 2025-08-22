//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_qrs_responses.g.dart';

/// ExportQrsResponses
///
/// Properties:
/// * [responseGroup] 
/// * [sequence] 
/// * [responseQuoteSOriginalResultCodelistCCode] 
/// * [responseQuoteSOriginalResultTermCCode] 
/// * [responseQuoteSOriginalResultUnitCodelistCCode] 
/// * [responseQuoteSOriginalResultUnitTermCCode] 
/// * [responseQuoteSStandardizedResultCodelistCCode] 
/// * [responseQuoteSStandardizedResultTermCCode] 
/// * [responseQuoteSStandardizedResultUnitCodelistCCode] 
/// * [responseQuoteSStandardizedResultUnitTermCCode] 
@BuiltValue()
abstract class ExportQrsResponses implements Built<ExportQrsResponses, ExportQrsResponsesBuilder> {
  @BuiltValueField(wireName: r'Response Group')
  String? get responseGroup;

  @BuiltValueField(wireName: r'Sequence')
  String? get sequence;

  @BuiltValueField(wireName: r'Response&#39;s Original Result Codelist C-Code')
  String? get responseQuoteSOriginalResultCodelistCCode;

  @BuiltValueField(wireName: r'Response&#39;s Original Result Term C-Code')
  String? get responseQuoteSOriginalResultTermCCode;

  @BuiltValueField(wireName: r'Response&#39;s Original Result Unit Codelist C-Code')
  String? get responseQuoteSOriginalResultUnitCodelistCCode;

  @BuiltValueField(wireName: r'Response&#39;s Original Result Unit Term C-Code')
  String? get responseQuoteSOriginalResultUnitTermCCode;

  @BuiltValueField(wireName: r'Response&#39;s Standardized Result Codelist C-Code')
  String? get responseQuoteSStandardizedResultCodelistCCode;

  @BuiltValueField(wireName: r'Response&#39;s Standardized Result Term C-Code')
  String? get responseQuoteSStandardizedResultTermCCode;

  @BuiltValueField(wireName: r'Response&#39;s Standardized Result Unit Codelist C-Code')
  String? get responseQuoteSStandardizedResultUnitCodelistCCode;

  @BuiltValueField(wireName: r'Response&#39;s Standardized Result Unit Term C-Code')
  String? get responseQuoteSStandardizedResultUnitTermCCode;

  ExportQrsResponses._();

  factory ExportQrsResponses([void updates(ExportQrsResponsesBuilder b)]) = _$ExportQrsResponses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportQrsResponsesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportQrsResponses> get serializer => _$ExportQrsResponsesSerializer();
}

class _$ExportQrsResponsesSerializer implements PrimitiveSerializer<ExportQrsResponses> {
  @override
  final Iterable<Type> types = const [ExportQrsResponses, _$ExportQrsResponses];

  @override
  final String wireName = r'ExportQrsResponses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportQrsResponses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.responseGroup != null) {
      yield r'Response Group';
      yield serializers.serialize(
        object.responseGroup,
        specifiedType: const FullType(String),
      );
    }
    if (object.sequence != null) {
      yield r'Sequence';
      yield serializers.serialize(
        object.sequence,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSOriginalResultCodelistCCode != null) {
      yield r'Response&#39;s Original Result Codelist C-Code';
      yield serializers.serialize(
        object.responseQuoteSOriginalResultCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSOriginalResultTermCCode != null) {
      yield r'Response&#39;s Original Result Term C-Code';
      yield serializers.serialize(
        object.responseQuoteSOriginalResultTermCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSOriginalResultUnitCodelistCCode != null) {
      yield r'Response&#39;s Original Result Unit Codelist C-Code';
      yield serializers.serialize(
        object.responseQuoteSOriginalResultUnitCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSOriginalResultUnitTermCCode != null) {
      yield r'Response&#39;s Original Result Unit Term C-Code';
      yield serializers.serialize(
        object.responseQuoteSOriginalResultUnitTermCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSStandardizedResultCodelistCCode != null) {
      yield r'Response&#39;s Standardized Result Codelist C-Code';
      yield serializers.serialize(
        object.responseQuoteSStandardizedResultCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSStandardizedResultTermCCode != null) {
      yield r'Response&#39;s Standardized Result Term C-Code';
      yield serializers.serialize(
        object.responseQuoteSStandardizedResultTermCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSStandardizedResultUnitCodelistCCode != null) {
      yield r'Response&#39;s Standardized Result Unit Codelist C-Code';
      yield serializers.serialize(
        object.responseQuoteSStandardizedResultUnitCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseQuoteSStandardizedResultUnitTermCCode != null) {
      yield r'Response&#39;s Standardized Result Unit Term C-Code';
      yield serializers.serialize(
        object.responseQuoteSStandardizedResultUnitTermCCode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportQrsResponses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportQrsResponsesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Response Group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseGroup = valueDes;
          break;
        case r'Sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sequence = valueDes;
          break;
        case r'Response&#39;s Original Result Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSOriginalResultCodelistCCode = valueDes;
          break;
        case r'Response&#39;s Original Result Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSOriginalResultTermCCode = valueDes;
          break;
        case r'Response&#39;s Original Result Unit Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSOriginalResultUnitCodelistCCode = valueDes;
          break;
        case r'Response&#39;s Original Result Unit Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSOriginalResultUnitTermCCode = valueDes;
          break;
        case r'Response&#39;s Standardized Result Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSStandardizedResultCodelistCCode = valueDes;
          break;
        case r'Response&#39;s Standardized Result Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSStandardizedResultTermCCode = valueDes;
          break;
        case r'Response&#39;s Standardized Result Unit Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSStandardizedResultUnitCodelistCCode = valueDes;
          break;
        case r'Response&#39;s Standardized Result Unit Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseQuoteSStandardizedResultUnitTermCCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportQrsResponses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportQrsResponsesBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

