//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_dataset_variables_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_dataset_variables.g.dart';

/// SdtmDatasetVariables
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [datasetStructure] 
/// * [links] 
@BuiltValue()
abstract class SdtmDatasetVariables implements Built<SdtmDatasetVariables, SdtmDatasetVariablesBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'datasetStructure')
  String? get datasetStructure;

  @BuiltValueField(wireName: r'_links')
  SdtmDatasetVariablesLinks? get links;

  SdtmDatasetVariables._();

  factory SdtmDatasetVariables([void updates(SdtmDatasetVariablesBuilder b)]) = _$SdtmDatasetVariables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmDatasetVariablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmDatasetVariables> get serializer => _$SdtmDatasetVariablesSerializer();
}

class _$SdtmDatasetVariablesSerializer implements PrimitiveSerializer<SdtmDatasetVariables> {
  @override
  final Iterable<Type> types = const [SdtmDatasetVariables, _$SdtmDatasetVariables];

  @override
  final String wireName = r'SdtmDatasetVariables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmDatasetVariables object, {
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.datasetStructure != null) {
      yield r'datasetStructure';
      yield serializers.serialize(
        object.datasetStructure,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(SdtmDatasetVariablesLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmDatasetVariablesBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'datasetStructure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetStructure = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariablesLinks),
          ) as SdtmDatasetVariablesLinks;
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
  SdtmDatasetVariables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmDatasetVariablesBuilder();
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

