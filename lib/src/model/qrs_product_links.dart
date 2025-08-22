//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_term_ref.dart';
import 'package:openapi/src/model/qrs_items_ref.dart';
import 'package:openapi/src/model/qrs_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_product_links.g.dart';

/// QrsProductLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
/// * [qrsTermCAT] 
/// * [qrsItems] 
@BuiltValue()
abstract class QrsProductLinks implements Built<QrsProductLinks, QrsProductLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsProductRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  QrsProductRef? get priorVersion;

  @BuiltValueField(wireName: r'qrsTermCAT')
  RootCtTermRef? get qrsTermCAT;

  @BuiltValueField(wireName: r'qrsItems')
  QrsItemsRef? get qrsItems;

  QrsProductLinks._();

  factory QrsProductLinks([void updates(QrsProductLinksBuilder b)]) = _$QrsProductLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsProductLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsProductLinks> get serializer => _$QrsProductLinksSerializer();
}

class _$QrsProductLinksSerializer implements PrimitiveSerializer<QrsProductLinks> {
  @override
  final Iterable<Type> types = const [QrsProductLinks, _$QrsProductLinks];

  @override
  final String wireName = r'QrsProductLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(QrsProductRef),
      );
    }
    if (object.qrsTermCAT != null) {
      yield r'qrsTermCAT';
      yield serializers.serialize(
        object.qrsTermCAT,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.qrsItems != null) {
      yield r'qrsItems';
      yield serializers.serialize(
        object.qrsItems,
        specifiedType: const FullType(QrsItemsRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsProductLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsProductLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsProductRef),
          ) as QrsProductRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsProductRef),
          ) as QrsProductRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'qrsTermCAT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsTermCAT.replace(valueDes);
          break;
        case r'qrsItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsItemsRef),
          ) as QrsItemsRef;
          result.qrsItems.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrsProductLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsProductLinksBuilder();
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

