//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_variable.dart';
import 'package:openapi/src/model/adam_varset_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_varset.g.dart';

/// AdamVarset
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [links] 
/// * [analysisVariables] 
@BuiltValue()
abstract class AdamVarset implements Built<AdamVarset, AdamVarsetBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'_links')
  AdamVarsetLinks? get links;

  @BuiltValueField(wireName: r'analysisVariables')
  BuiltList<AdamVariable>? get analysisVariables;

  AdamVarset._();

  factory AdamVarset([void updates(AdamVarsetBuilder b)]) = _$AdamVarset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamVarsetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamVarset> get serializer => _$AdamVarsetSerializer();
}

class _$AdamVarsetSerializer implements PrimitiveSerializer<AdamVarset> {
  @override
  final Iterable<Type> types = const [AdamVarset, _$AdamVarset];

  @override
  final String wireName = r'AdamVarset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamVarset object, {
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
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(AdamVarsetLinks),
      );
    }
    if (object.analysisVariables != null) {
      yield r'analysisVariables';
      yield serializers.serialize(
        object.analysisVariables,
        specifiedType: const FullType(BuiltList, [FullType(AdamVariable)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamVarset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamVarsetBuilder result,
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamVarsetLinks),
          ) as AdamVarsetLinks;
          result.links.replace(valueDes);
          break;
        case r'analysisVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdamVariable)]),
          ) as BuiltList<AdamVariable>;
          result.analysisVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdamVarset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamVarsetBuilder();
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

