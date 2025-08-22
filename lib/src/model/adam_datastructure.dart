//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_varset.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/adam_datastructure_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_datastructure.g.dart';

/// AdamDatastructure
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [class_] 
/// * [links] 
/// * [analysisVariableSets] 
@BuiltValue()
abstract class AdamDatastructure implements Built<AdamDatastructure, AdamDatastructureBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'class')
  String? get class_;

  @BuiltValueField(wireName: r'_links')
  AdamDatastructureLinks? get links;

  @BuiltValueField(wireName: r'analysisVariableSets')
  BuiltList<AdamVarset>? get analysisVariableSets;

  AdamDatastructure._();

  factory AdamDatastructure([void updates(AdamDatastructureBuilder b)]) = _$AdamDatastructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamDatastructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamDatastructure> get serializer => _$AdamDatastructureSerializer();
}

class _$AdamDatastructureSerializer implements PrimitiveSerializer<AdamDatastructure> {
  @override
  final Iterable<Type> types = const [AdamDatastructure, _$AdamDatastructure];

  @override
  final String wireName = r'AdamDatastructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamDatastructure object, {
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
    if (object.class_ != null) {
      yield r'class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(AdamDatastructureLinks),
      );
    }
    if (object.analysisVariableSets != null) {
      yield r'analysisVariableSets';
      yield serializers.serialize(
        object.analysisVariableSets,
        specifiedType: const FullType(BuiltList, [FullType(AdamVarset)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamDatastructure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamDatastructureBuilder result,
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
        case r'class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureLinks),
          ) as AdamDatastructureLinks;
          result.links.replace(valueDes);
          break;
        case r'analysisVariableSets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdamVarset)]),
          ) as BuiltList<AdamVarset>;
          result.analysisVariableSets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdamDatastructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamDatastructureBuilder();
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

