//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_codelist_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/ct_package_codelists_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_package_codelists_links.g.dart';

/// CtPackageCodelistsLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
/// * [codelists] 
@BuiltValue()
abstract class CtPackageCodelistsLinks implements Built<CtPackageCodelistsLinks, CtPackageCodelistsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CtPackageCodelistsRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  CtPackageCodelistsRef? get priorVersion;

  @BuiltValueField(wireName: r'codelists')
  BuiltList<CtCodelistRefElement>? get codelists;

  CtPackageCodelistsLinks._();

  factory CtPackageCodelistsLinks([void updates(CtPackageCodelistsLinksBuilder b)]) = _$CtPackageCodelistsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtPackageCodelistsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtPackageCodelistsLinks> get serializer => _$CtPackageCodelistsLinksSerializer();
}

class _$CtPackageCodelistsLinksSerializer implements PrimitiveSerializer<CtPackageCodelistsLinks> {
  @override
  final Iterable<Type> types = const [CtPackageCodelistsLinks, _$CtPackageCodelistsLinks];

  @override
  final String wireName = r'CtPackageCodelistsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtPackageCodelistsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtPackageCodelistsRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CtPackageCodelistsRef),
      );
    }
    if (object.codelists != null) {
      yield r'codelists';
      yield serializers.serialize(
        object.codelists,
        specifiedType: const FullType(BuiltList, [FullType(CtCodelistRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtPackageCodelistsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtPackageCodelistsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackageCodelistsRef),
          ) as CtPackageCodelistsRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackageCodelistsRef),
          ) as CtPackageCodelistsRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'codelists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CtCodelistRefElement)]),
          ) as BuiltList<CtCodelistRefElement>;
          result.codelists.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CtPackageCodelistsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtPackageCodelistsLinksBuilder();
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

