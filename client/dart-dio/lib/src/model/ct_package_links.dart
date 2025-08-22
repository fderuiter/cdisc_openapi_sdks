//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_package_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_package_links.g.dart';

/// CtPackageLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
@BuiltValue()
abstract class CtPackageLinks implements Built<CtPackageLinks, CtPackageLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CtPackageRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  CtPackageRef? get priorVersion;

  CtPackageLinks._();

  factory CtPackageLinks([void updates(CtPackageLinksBuilder b)]) = _$CtPackageLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtPackageLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtPackageLinks> get serializer => _$CtPackageLinksSerializer();
}

class _$CtPackageLinksSerializer implements PrimitiveSerializer<CtPackageLinks> {
  @override
  final Iterable<Type> types = const [CtPackageLinks, _$CtPackageLinks];

  @override
  final String wireName = r'CtPackageLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtPackageLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtPackageRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CtPackageRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtPackageLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtPackageLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackageRef),
          ) as CtPackageRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackageRef),
          ) as CtPackageRef;
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
  CtPackageLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtPackageLinksBuilder();
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

