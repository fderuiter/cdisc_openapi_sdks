//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_package_codelists.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_ct_package_codelists.g.dart';

/// XmlCtPackageCodelists
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCtPackageCodelists implements Built<XmlCtPackageCodelists, XmlCtPackageCodelistsBuilder> {
  @BuiltValueField(wireName: r'self')
  CtPackageCodelists? get self;

  XmlCtPackageCodelists._();

  factory XmlCtPackageCodelists([void updates(XmlCtPackageCodelistsBuilder b)]) = _$XmlCtPackageCodelists;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCtPackageCodelistsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCtPackageCodelists> get serializer => _$XmlCtPackageCodelistsSerializer();
}

class _$XmlCtPackageCodelistsSerializer implements PrimitiveSerializer<XmlCtPackageCodelists> {
  @override
  final Iterable<Type> types = const [XmlCtPackageCodelists, _$XmlCtPackageCodelists];

  @override
  final String wireName = r'XmlCtPackageCodelists';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCtPackageCodelists object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtPackageCodelists),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCtPackageCodelists object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCtPackageCodelistsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtPackageCodelists),
          ) as CtPackageCodelists;
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
  XmlCtPackageCodelists deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCtPackageCodelistsBuilder();
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

