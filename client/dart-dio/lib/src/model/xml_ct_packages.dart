//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_packages.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_ct_packages.g.dart';

/// XmlCtPackages
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCtPackages implements Built<XmlCtPackages, XmlCtPackagesBuilder> {
  @BuiltValueField(wireName: r'self')
  CtPackages? get self;

  XmlCtPackages._();

  factory XmlCtPackages([void updates(XmlCtPackagesBuilder b)]) = _$XmlCtPackages;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCtPackagesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCtPackages> get serializer => _$XmlCtPackagesSerializer();
}

class _$XmlCtPackagesSerializer implements PrimitiveSerializer<XmlCtPackages> {
  @override
  final Iterable<Type> types = const [XmlCtPackages, _$XmlCtPackages];

  @override
  final String wireName = r'XmlCtPackages';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCtPackages object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtPackages),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCtPackages object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCtPackagesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackages),
          ) as CtPackages;
          result.self.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  XmlCtPackages deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCtPackagesBuilder();
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

