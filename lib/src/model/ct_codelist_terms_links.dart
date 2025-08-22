//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_term_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/ct_codelist_terms_ref.dart';
import 'package:openapi/src/model/root_ct_codelist_ref.dart';
import 'package:openapi/src/model/ct_package_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_codelist_terms_links.g.dart';

/// CtCodelistTermsLinks
///
/// Properties:
/// * [self] 
/// * [parentPackage] 
/// * [rootItem] 
/// * [priorVersion] 
/// * [terms] 
@BuiltValue()
abstract class CtCodelistTermsLinks implements Built<CtCodelistTermsLinks, CtCodelistTermsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CtCodelistTermsRef? get self;

  @BuiltValueField(wireName: r'parentPackage')
  CtPackageRef? get parentPackage;

  @BuiltValueField(wireName: r'rootItem')
  RootCtCodelistRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  CtCodelistTermsRef? get priorVersion;

  @BuiltValueField(wireName: r'terms')
  BuiltList<CtTermRefElement>? get terms;

  CtCodelistTermsLinks._();

  factory CtCodelistTermsLinks([void updates(CtCodelistTermsLinksBuilder b)]) = _$CtCodelistTermsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtCodelistTermsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtCodelistTermsLinks> get serializer => _$CtCodelistTermsLinksSerializer();
}

class _$CtCodelistTermsLinksSerializer implements PrimitiveSerializer<CtCodelistTermsLinks> {
  @override
  final Iterable<Type> types = const [CtCodelistTermsLinks, _$CtCodelistTermsLinks];

  @override
  final String wireName = r'CtCodelistTermsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtCodelistTermsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtCodelistTermsRef),
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
        specifiedType: const FullType(CtCodelistTermsRef),
      );
    }
    if (object.terms != null) {
      yield r'terms';
      yield serializers.serialize(
        object.terms,
        specifiedType: const FullType(BuiltList, [FullType(CtTermRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtCodelistTermsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtCodelistTermsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtCodelistTermsRef),
          ) as CtCodelistTermsRef;
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
            specifiedType: const FullType(CtCodelistTermsRef),
          ) as CtCodelistTermsRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'terms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CtTermRefElement)]),
          ) as BuiltList<CtTermRefElement>;
          result.terms.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CtCodelistTermsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtCodelistTermsLinksBuilder();
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

