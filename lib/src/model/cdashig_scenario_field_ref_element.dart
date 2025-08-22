//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_scenario_field_ref_element.g.dart';

/// CdashigScenarioFieldRefElement
///
/// Properties:
/// * [href] 
/// * [title] 
/// * [type] 
@BuiltValue()
abstract class CdashigScenarioFieldRefElement implements Built<CdashigScenarioFieldRefElement, CdashigScenarioFieldRefElementBuilder> {
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  CdashigScenarioFieldRefElement._();

  factory CdashigScenarioFieldRefElement([void updates(CdashigScenarioFieldRefElementBuilder b)]) = _$CdashigScenarioFieldRefElement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigScenarioFieldRefElementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigScenarioFieldRefElement> get serializer => _$CdashigScenarioFieldRefElementSerializer();
}

class _$CdashigScenarioFieldRefElementSerializer implements PrimitiveSerializer<CdashigScenarioFieldRefElement> {
  @override
  final Iterable<Type> types = const [CdashigScenarioFieldRefElement, _$CdashigScenarioFieldRefElement];

  @override
  final String wireName = r'CdashigScenarioFieldRefElement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigScenarioFieldRefElement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.href != null) {
      yield r'href';
      yield serializers.serialize(
        object.href,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigScenarioFieldRefElement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigScenarioFieldRefElementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigScenarioFieldRefElement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigScenarioFieldRefElementBuilder();
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

