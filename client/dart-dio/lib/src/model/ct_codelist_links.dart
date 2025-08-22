//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_codelist_ref.dart';
import 'package:openapi/src/model/ct_package_ref.dart';
import 'package:openapi/src/model/ct_codelist_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_codelist_links.g.dart';

/// CtCodelistLinks
///
/// Properties:
/// * [self] 
/// * [parentPackage] 
/// * [rootItem] 
/// * [priorVersion] 
@BuiltValue()
abstract class CtCodelistLinks implements Built<CtCodelistLinks, CtCodelistLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CtCodelistRef? get self;

  @BuiltValueField(wireName: r'parentPackage')
  CtPackageRef? get parentPackage;

  @BuiltValueField(wireName: r'rootItem')
  RootCtCodelistRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  CtCodelistRef? get priorVersion;

  CtCodelistLinks._();

  factory CtCodelistLinks([void updates(CtCodelistLinksBuilder b)]) = _$CtCodelistLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtCodelistLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtCodelistLinks> get serializer => _$CtCodelistLinksSerializer();
}

class _$CtCodelistLinksSerializer implements PrimitiveSerializer<CtCodelistLinks> {
  @override
  final Iterable<Type> types = const [CtCodelistLinks, _$CtCodelistLinks];

  @override
  final String wireName = r'CtCodelistLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtCodelistLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtCodelistRef),
      );
    }
    if (object.parentPackage != null) {
      yield r'parentPackage';
      yield serializers.serialize(
        object.parentPackage,
        specifiedType: const FullType(CtPackageRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootCtCodelistRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CtCodelistRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtCodelistLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtCodelistLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtCodelistRef),
          ) as CtCodelistRef;
          result.self.replace(valueDes);
          break;
        case r'parentPackage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackageRef),
          ) as CtPackageRef;
          result.parentPackage.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtCodelistRef),
          ) as RootCtCodelistRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtCodelistRef),
          ) as CtCodelistRef;
          result.priorVersion.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CtCodelistLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtCodelistLinksBuilder();
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

