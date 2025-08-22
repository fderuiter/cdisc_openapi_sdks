//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class_field_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_class_field.g.dart';

/// CdashClassField
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [definition] 
/// * [questionText] 
/// * [prompt] 
/// * [simpleDatatype] 
/// * [implementationNotes] 
/// * [mappingInstructions] 
/// * [links] 
@BuiltValue()
abstract class CdashClassField implements Built<CdashClassField, CdashClassFieldBuilder> {
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

  @BuiltValueField(wireName: r'simpleDatatype')
  String? get simpleDatatype;

  @BuiltValueField(wireName: r'implementationNotes')
  String? get implementationNotes;

  @BuiltValueField(wireName: r'mappingInstructions')
  String? get mappingInstructions;

  @BuiltValueField(wireName: r'_links')
  CdashClassFieldLinks? get links;

  CdashClassField._();

  factory CdashClassField([void updates(CdashClassFieldBuilder b)]) = _$CdashClassField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashClassFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashClassField> get serializer => _$CdashClassFieldSerializer();
}

class _$CdashClassFieldSerializer implements PrimitiveSerializer<CdashClassField> {
  @override
  final Iterable<Type> types = const [CdashClassField, _$CdashClassField];

  @override
  final String wireName = r'CdashClassField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashClassField object, {
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
    if (object.simpleDatatype != null) {
      yield r'simpleDatatype';
      yield serializers.serialize(
        object.simpleDatatype,
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
    if (object.mappingInstructions != null) {
      yield r'mappingInstructions';
      yield serializers.serialize(
        object.mappingInstructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CdashClassFieldLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashClassField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashClassFieldBuilder result,
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
        case r'simpleDatatype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.simpleDatatype = valueDes;
          break;
        case r'implementationNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.implementationNotes = valueDes;
          break;
        case r'mappingInstructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mappingInstructions = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassFieldLinks),
          ) as CdashClassFieldLinks;
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
  CdashClassField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashClassFieldBuilder();
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

