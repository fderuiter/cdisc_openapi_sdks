//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_item_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_item.g.dart';

/// QrsItem
///
/// Properties:
/// * [ordinal] 
/// * [label] 
/// * [questionText] 
/// * [links] 
@BuiltValue()
abstract class QrsItem implements Built<QrsItem, QrsItemBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'questionText')
  String? get questionText;

  @BuiltValueField(wireName: r'_links')
  QrsItemLinks? get links;

  QrsItem._();

  factory QrsItem([void updates(QrsItemBuilder b)]) = _$QrsItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsItem> get serializer => _$QrsItemSerializer();
}

class _$QrsItemSerializer implements PrimitiveSerializer<QrsItem> {
  @override
  final Iterable<Type> types = const [QrsItem, _$QrsItem];

  @override
  final String wireName = r'QrsItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ordinal != null) {
      yield r'ordinal';
      yield serializers.serialize(
        object.ordinal,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.questionText != null) {
      yield r'questionText';
      yield serializers.serialize(
        object.questionText,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(QrsItemLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ordinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ordinal = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'questionText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionText = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsItemLinks),
          ) as QrsItemLinks;
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
  QrsItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsItemBuilder();
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

