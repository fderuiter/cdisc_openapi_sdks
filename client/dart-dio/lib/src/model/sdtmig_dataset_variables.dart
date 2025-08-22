//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_dataset_variables_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_dataset_variables.g.dart';

/// SdtmigDatasetVariables
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [datasetStructure] 
/// * [links] 
@BuiltValue()
abstract class SdtmigDatasetVariables implements Built<SdtmigDatasetVariables, SdtmigDatasetVariablesBuilder> {
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
  SdtmigDatasetVariablesLinks? get links;

  SdtmigDatasetVariables._();

  factory SdtmigDatasetVariables([void updates(SdtmigDatasetVariablesBuilder b)]) = _$SdtmigDatasetVariables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigDatasetVariablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigDatasetVariables> get serializer => _$SdtmigDatasetVariablesSerializer();
}

class _$SdtmigDatasetVariablesSerializer implements PrimitiveSerializer<SdtmigDatasetVariables> {
  @override
  final Iterable<Type> types = const [SdtmigDatasetVariables, _$SdtmigDatasetVariables];

  @override
  final String wireName = r'SdtmigDatasetVariables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigDatasetVariables object, {
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
        specifiedType: const FullType(SdtmigDatasetVariablesLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigDatasetVariablesBuilder result,
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
            specifiedType: const FullType(SdtmigDatasetVariablesLinks),
          ) as SdtmigDatasetVariablesLinks;
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
  SdtmigDatasetVariables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigDatasetVariablesBuilder();
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

