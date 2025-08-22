//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_packages_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_packages.g.dart';

/// CtPackages
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class CtPackages implements Built<CtPackages, CtPackagesBuilder> {
  @BuiltValueField(wireName: r'_links')
  CtPackagesLinks? get links;

  CtPackages._();

  factory CtPackages([void updates(CtPackagesBuilder b)]) = _$CtPackages;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtPackagesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtPackages> get serializer => _$CtPackagesSerializer();
}

class _$CtPackagesSerializer implements PrimitiveSerializer<CtPackages> {
  @override
  final Iterable<Type> types = const [CtPackages, _$CtPackages];

  @override
  final String wireName = r'CtPackages';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtPackages object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CtPackagesLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtPackages object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtPackagesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackagesLinks),
          ) as CtPackagesLinks;
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
  CtPackages deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtPackagesBuilder();
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

