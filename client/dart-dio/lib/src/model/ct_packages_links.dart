//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_package_ref_element.dart';
import 'package:openapi/src/model/ct_packages_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_packages_links.g.dart';

/// CtPackagesLinks
///
/// Properties:
/// * [self] 
/// * [packages] 
@BuiltValue()
abstract class CtPackagesLinks implements Built<CtPackagesLinks, CtPackagesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CtPackagesRef? get self;

  @BuiltValueField(wireName: r'packages')
  BuiltList<CtPackageRefElement>? get packages;

  CtPackagesLinks._();

  factory CtPackagesLinks([void updates(CtPackagesLinksBuilder b)]) = _$CtPackagesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtPackagesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtPackagesLinks> get serializer => _$CtPackagesLinksSerializer();
}

class _$CtPackagesLinksSerializer implements PrimitiveSerializer<CtPackagesLinks> {
  @override
  final Iterable<Type> types = const [CtPackagesLinks, _$CtPackagesLinks];

  @override
  final String wireName = r'CtPackagesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtPackagesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtPackagesRef),
      );
    }
    if (object.packages != null) {
      yield r'packages';
      yield serializers.serialize(
        object.packages,
        specifiedType: const FullType(BuiltList, [FullType(CtPackageRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtPackagesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtPackagesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackagesRef),
          ) as CtPackagesRef;
          result.self.replace(valueDes);
          break;
        case r'packages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CtPackageRefElement)]),
          ) as BuiltList<CtPackageRefElement>;
          result.packages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CtPackagesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtPackagesLinksBuilder();
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

