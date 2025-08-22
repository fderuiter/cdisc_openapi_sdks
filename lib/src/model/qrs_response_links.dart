//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_ct_term_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_response_links.g.dart';

/// QrsResponseLinks
///
/// Properties:
/// * [qrsResponseORRES] 
/// * [qrsResponseORRESU] 
/// * [qrsResponseSTRESC] 
/// * [qrsResponseSTRESCU] 
@BuiltValue()
abstract class QrsResponseLinks implements Built<QrsResponseLinks, QrsResponseLinksBuilder> {
  @BuiltValueField(wireName: r'qrsResponseORRES')
  RootCtTermRef? get qrsResponseORRES;

  @BuiltValueField(wireName: r'qrsResponseORRESU')
  RootCtTermRef? get qrsResponseORRESU;

  @BuiltValueField(wireName: r'qrsResponseSTRESC')
  RootCtTermRef? get qrsResponseSTRESC;

  @BuiltValueField(wireName: r'qrsResponseSTRESCU')
  RootCtTermRef? get qrsResponseSTRESCU;

  QrsResponseLinks._();

  factory QrsResponseLinks([void updates(QrsResponseLinksBuilder b)]) = _$QrsResponseLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsResponseLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsResponseLinks> get serializer => _$QrsResponseLinksSerializer();
}

class _$QrsResponseLinksSerializer implements PrimitiveSerializer<QrsResponseLinks> {
  @override
  final Iterable<Type> types = const [QrsResponseLinks, _$QrsResponseLinks];

  @override
  final String wireName = r'QrsResponseLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsResponseLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.qrsResponseORRES != null) {
      yield r'qrsResponseORRES';
      yield serializers.serialize(
        object.qrsResponseORRES,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.qrsResponseORRESU != null) {
      yield r'qrsResponseORRESU';
      yield serializers.serialize(
        object.qrsResponseORRESU,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.qrsResponseSTRESC != null) {
      yield r'qrsResponseSTRESC';
      yield serializers.serialize(
        object.qrsResponseSTRESC,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
    if (object.qrsResponseSTRESCU != null) {
      yield r'qrsResponseSTRESCU';
      yield serializers.serialize(
        object.qrsResponseSTRESCU,
        specifiedType: const FullType(RootCtTermRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsResponseLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsResponseLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'qrsResponseORRES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsResponseORRES.replace(valueDes);
          break;
        case r'qrsResponseORRESU':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsResponseORRESU.replace(valueDes);
          break;
        case r'qrsResponseSTRESC':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsResponseSTRESC.replace(valueDes);
          break;
        case r'qrsResponseSTRESCU':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtTermRef),
          ) as RootCtTermRef;
          result.qrsResponseSTRESCU.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrsResponseLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsResponseLinksBuilder();
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

