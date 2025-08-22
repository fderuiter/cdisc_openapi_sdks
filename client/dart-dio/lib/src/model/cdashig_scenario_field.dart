//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_scenario_field_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_scenario_field.g.dart';

/// CdashigScenarioField
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [definition] 
/// * [questionText] 
/// * [prompt] 
/// * [completionInstructions] 
/// * [implementationNotes] 
/// * [simpleDatatype] 
/// * [mappingInstructions] 
/// * [core] 
/// * [links] 
@BuiltValue()
abstract class CdashigScenarioField implements Built<CdashigScenarioField, CdashigScenarioFieldBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'definition')
  String? get definition;

  @BuiltValueField(wireName: r'questionText')
  String? get questionText;

  @BuiltValueField(wireName: r'prompt')
  String? get prompt;

  @BuiltValueField(wireName: r'completionInstructions')
  String? get completionInstructions;

  @BuiltValueField(wireName: r'implementationNotes')
  String? get implementationNotes;

  @BuiltValueField(wireName: r'simpleDatatype')
  String? get simpleDatatype;

  @BuiltValueField(wireName: r'mappingInstructions')
  String? get mappingInstructions;

  @BuiltValueField(wireName: r'core')
  String? get core;

  @BuiltValueField(wireName: r'_links')
  CdashigScenarioFieldLinks? get links;

  CdashigScenarioField._();

  factory CdashigScenarioField([void updates(CdashigScenarioFieldBuilder b)]) = _$CdashigScenarioField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigScenarioFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigScenarioField> get serializer => _$CdashigScenarioFieldSerializer();
}

class _$CdashigScenarioFieldSerializer implements PrimitiveSerializer<CdashigScenarioField> {
  @override
  final Iterable<Type> types = const [CdashigScenarioField, _$CdashigScenarioField];

  @override
  final String wireName = r'CdashigScenarioField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ordinal != null) {
      yield r'ordinal';
      yield serializers.serialize(
        object.ordinal,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.definition != null) {
      yield r'definition';
      yield serializers.serialize(
        object.definition,
        specifiedType: const FullType(String),
      );
    }
    if (object.questionText != null) {
      yield r'questionText';
      yield serializers.serialize(
        object.questionText,
        specifiedType: const FullType(String),
      );
    }
    if (object.prompt != null) {
      yield r'prompt';
      yield serializers.serialize(
        object.prompt,
        specifiedType: const FullType(String),
      );
    }
    if (object.completionInstructions != null) {
      yield r'completionInstructions';
      yield serializers.serialize(
        object.completionInstructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.implementationNotes != null) {
      yield r'implementationNotes';
      yield serializers.serialize(
        object.implementationNotes,
        specifiedType: const FullType(String),
      );
    }
    if (object.simpleDatatype != null) {
      yield r'simpleDatatype';
      yield serializers.serialize(
        object.simpleDatatype,
        specifiedType: const FullType(String),
      );
    }
    if (object.mappingInstructions != null) {
      yield r'mappingInstructions';
      yield serializers.serialize(
        object.mappingInstructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.core != null) {
      yield r'core';
      yield serializers.serialize(
        object.core,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CdashigScenarioFieldLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigScenarioField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigScenarioFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ordinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ordinal = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'definition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.definition = valueDes;
          break;
        case r'questionText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionText = valueDes;
          break;
        case r'prompt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prompt = valueDes;
          break;
        case r'completionInstructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.completionInstructions = valueDes;
          break;
        case r'implementationNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.implementationNotes = valueDes;
          break;
        case r'simpleDatatype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.simpleDatatype = valueDes;
          break;
        case r'mappingInstructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mappingInstructions = valueDes;
          break;
        case r'core':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.core = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioFieldLinks),
          ) as CdashigScenarioFieldLinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigScenarioField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigScenarioFieldBuilder();
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

