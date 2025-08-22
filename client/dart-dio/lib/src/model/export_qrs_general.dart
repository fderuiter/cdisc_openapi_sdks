//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_qrs_general.g.dart';

/// ExportQrsGeneral
///
/// Properties:
/// * [name] 
/// * [label] 
/// * [effectiveDate] 
/// * [description] 
/// * [type] 
/// * [categoryQuoteSCodelistCCode] 
/// * [categoryQuoteSTermCCode] 
@BuiltValue()
abstract class ExportQrsGeneral implements Built<ExportQrsGeneral, ExportQrsGeneralBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Label')
  String? get label;

  @BuiltValueField(wireName: r'Effective Date')
  String? get effectiveDate;

  @BuiltValueField(wireName: r'Description')
  String? get description;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'Category&#39;s Codelist C-Code')
  String? get categoryQuoteSCodelistCCode;

  @BuiltValueField(wireName: r'Category&#39;s Term C-Code')
  String? get categoryQuoteSTermCCode;

  ExportQrsGeneral._();

  factory ExportQrsGeneral([void updates(ExportQrsGeneralBuilder b)]) = _$ExportQrsGeneral;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportQrsGeneralBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportQrsGeneral> get serializer => _$ExportQrsGeneralSerializer();
}

class _$ExportQrsGeneralSerializer implements PrimitiveSerializer<ExportQrsGeneral> {
  @override
  final Iterable<Type> types = const [ExportQrsGeneral, _$ExportQrsGeneral];

  @override
  final String wireName = r'ExportQrsGeneral';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportQrsGeneral object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'Label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.effectiveDate != null) {
      yield r'Effective Date';
      yield serializers.serialize(
        object.effectiveDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'Description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.categoryQuoteSCodelistCCode != null) {
      yield r'Category&#39;s Codelist C-Code';
      yield serializers.serialize(
        object.categoryQuoteSCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.categoryQuoteSTermCCode != null) {
      yield r'Category&#39;s Term C-Code';
      yield serializers.serialize(
        object.categoryQuoteSTermCCode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportQrsGeneral object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportQrsGeneralBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'Label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'Effective Date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effectiveDate = valueDes;
          break;
        case r'Description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'Category&#39;s Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryQuoteSCodelistCCode = valueDes;
          break;
        case r'Category&#39;s Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryQuoteSTermCCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportQrsGeneral deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportQrsGeneralBuilder();
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

