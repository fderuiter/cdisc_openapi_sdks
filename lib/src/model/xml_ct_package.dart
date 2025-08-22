//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_package.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_ct_package.g.dart';

/// XmlCtPackage
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCtPackage implements Built<XmlCtPackage, XmlCtPackageBuilder> {
  @BuiltValueField(wireName: r'self')
  CtPackage? get self;

  XmlCtPackage._();

  factory XmlCtPackage([void updates(XmlCtPackageBuilder b)]) = _$XmlCtPackage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCtPackageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCtPackage> get serializer => _$XmlCtPackageSerializer();
}

class _$XmlCtPackageSerializer implements PrimitiveSerializer<XmlCtPackage> {
  @override
  final Iterable<Type> types = const [XmlCtPackage, _$XmlCtPackage];

  @override
  final String wireName = r'XmlCtPackage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCtPackage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtPackage),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCtPackage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCtPackageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackage),
          ) as CtPackage;
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
  XmlCtPackage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCtPackageBuilder();
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

