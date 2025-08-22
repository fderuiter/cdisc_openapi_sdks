//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_term_ref.dart';
import 'package:openapi/src/model/ct_term_ref.dart';
import 'package:openapi/src/model/ct_package_ref.dart';
import 'package:openapi/src/model/ct_codelist_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_term_links.g.dart';

/// CtTermLinks
///
/// Properties:
/// * [self] 
/// * [parentPackage] 
/// * [parentCodelist] 
/// * [rootItem] 
/// * [priorVersion] 
@BuiltValue()
abstract class CtTermLinks implements Built<CtTermLinks, CtTermLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CtTermRef? get self;

  @BuiltValueField(wireName: r'parentPackage')
  CtPackageRef? get parentPackage;

  @BuiltValueField(wireName: r'parentCodelist')
  CtCodelistRef? get parentCodelist;

  @BuiltValueField(wireName: r'rootItem')
  RootCtTermRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  CtTermRef? get priorVersion;

  CtTermLinks._();

  factory CtTermLinks([void updates(CtTermLinksBuilder b)]) = _$CtTermLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtTermLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtTermLinks> get serializer => _$CtTermLinksSerializer();
}

class _$CtTermLinksSerializer implements PrimitiveSerializer<CtTermLinks> {
  @override
  final Iterable<Type> types = const [CtTermLinks, _$CtTermLinks];

  @override
  final String wireName = r'CtTermLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtTermLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtTermRef),
      );
    }
    if (object.parentPackage != null) {
      yield r'parentPackage';
      yield serializers.serialize(
        object.parentPackage,
        specifiedType: const FullType(CtPackageRef),
      );
    }
    if (object.parentCodelist != null) {
      yield r'parentCodelist';
      yield serializers.serialize(
        object.parentCodelist,
        specifiedType: const FullType(CtCodelistRef),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CtTermRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtTermLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtTermLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtTermRef),
          ) as CtTermRef;
          result.self.replace(valueDes);
          break;
        case r'parentPackage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackageRef),
          ) as CtPackageRef;
          result.parentPackage.replace(valueDes);
          break;
        case r'parentCodelist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtCodelistRef),
          ) as CtCodelistRef;
          result.parentCodelist.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtTermRef),
          ) as CtTermRef;
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
  CtTermLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtTermLinksBuilder();
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

