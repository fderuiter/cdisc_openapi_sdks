//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_qrs_item.g.dart';

/// XmlQrsItem
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlQrsItem implements Built<XmlQrsItem, XmlQrsItemBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsItem? get self;

  XmlQrsItem._();

  factory XmlQrsItem([void updates(XmlQrsItemBuilder b)]) = _$XmlQrsItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlQrsItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlQrsItem> get serializer => _$XmlQrsItemSerializer();
}

class _$XmlQrsItemSerializer implements PrimitiveSerializer<XmlQrsItem> {
  @override
  final Iterable<Type> types = const [XmlQrsItem, _$XmlQrsItem];

  @override
  final String wireName = r'XmlQrsItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlQrsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsItem),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlQrsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlQrsItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsItem),
          ) as QrsItem;
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
  XmlQrsItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlQrsItemBuilder();
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

