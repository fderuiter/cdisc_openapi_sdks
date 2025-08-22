//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_responsegroup.dart';
import 'package:openapi/src/model/root_ct_term_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_item_links.g.dart';

/// QrsItemLinks
///
/// Properties:
/// * [qrsItemTEST] 
/// * [qrsItemTESTCD] 
/// * [qrsItemEVAL] 
/// * [qrsItemSCAT] 
/// * [responsegroup] 
@BuiltValue()
abstract class QrsItemLinks implements Built<QrsItemLinks, QrsItemLinksBuilder> {
  @BuiltValueField(wireName: r'qrsItemTEST')
  RootCtTermRef? get qrsItemTEST;

  @BuiltValueField(wireName: r'qrsItemTESTCD')
  RootCtTermRef? get qrsItemTESTCD;

  @BuiltValueField(wireName: r'qrsItemEVAL')
  RootCtTermRef? get qrsItemEVAL;

  @BuiltValueField(wireName: r'qrsItemSCAT')
  RootCtTermRef? get qrsItemSCAT;

  @BuiltValueField(wireName: r'responsegroup')
  QrsResponsegroup? get responsegroup;

  QrsItemLinks._();

  factory QrsItemLinks([void updates(QrsItemLinksBuilder b)]) = _$QrsItemLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsItemLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsItemLinks> get serializer => _$QrsItemLinksSerializer();
}

class _$QrsItemLinksSerializer implements PrimitiveSerializer<QrsItemLinks> {
  @override
  final Iterable<Type> types = const [QrsItemLinks, _$QrsItemLinks];

  @override
  final String wireName = r'QrsItemLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsItemLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.qrsItemTEST != null) {
      yield r'qrsItemTEST';
      yield serializers.serialize(
        object.qrsItemTEST,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.qrsItemTESTCD != null) {
      yield r'qrsItemTESTCD';
      yield serializers.serialize(
        object.qrsItemTESTCD,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.qrsItemEVAL != null) {
      yield r'qrsItemEVAL';
      yield serializers.serialize(
        object.qrsItemEVAL,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.qrsItemSCAT != null) {
      yield r'qrsItemSCAT';
      yield serializers.serialize(
        object.qrsItemSCAT,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.responsegroup != null) {
      yield r'responsegroup';
      yield serializers.serialize(
        object.responsegroup,
        specifiedType: const FullType(QrsResponsegroup),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsItemLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsItemLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'qrsItemTEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsItemTEST.replace(valueDes);
          break;
        case r'qrsItemTESTCD':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsItemTESTCD.replace(valueDes);
          break;
        case r'qrsItemEVAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsItemEVAL.replace(valueDes);
          break;
        case r'qrsItemSCAT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsItemSCAT.replace(valueDes);
          break;
        case r'responsegroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsResponsegroup),
          ) as QrsResponsegroup;
          result.responsegroup.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrsItemLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsItemLinksBuilder();
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

