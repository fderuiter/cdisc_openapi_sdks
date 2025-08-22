//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_codelist_terms.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_ct_codelist_terms.g.dart';

/// XmlCtCodelistTerms
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCtCodelistTerms implements Built<XmlCtCodelistTerms, XmlCtCodelistTermsBuilder> {
  @BuiltValueField(wireName: r'self')
  CtCodelistTerms? get self;

  XmlCtCodelistTerms._();

  factory XmlCtCodelistTerms([void updates(XmlCtCodelistTermsBuilder b)]) = _$XmlCtCodelistTerms;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCtCodelistTermsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCtCodelistTerms> get serializer => _$XmlCtCodelistTermsSerializer();
}

class _$XmlCtCodelistTermsSerializer implements PrimitiveSerializer<XmlCtCodelistTerms> {
  @override
  final Iterable<Type> types = const [XmlCtCodelistTerms, _$XmlCtCodelistTerms];

  @override
  final String wireName = r'XmlCtCodelistTerms';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCtCodelistTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CtCodelistTerms),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCtCodelistTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCtCodelistTermsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtCodelistTerms),
          ) as CtCodelistTerms;
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
  XmlCtCodelistTerms deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCtCodelistTermsBuilder();
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

