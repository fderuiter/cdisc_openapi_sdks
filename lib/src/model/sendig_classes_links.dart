//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_classes_ref.dart';
import 'package:openapi/src/model/sendig_class_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_classes_links.g.dart';

/// SendigClassesLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
/// * [classes] 
@BuiltValue()
abstract class SendigClassesLinks implements Built<SendigClassesLinks, SendigClassesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigClassesRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  SendigClassesRef? get priorVersion;

  @BuiltValueField(wireName: r'classes')
  BuiltList<SendigClassRefElement>? get classes;

  SendigClassesLinks._();

  factory SendigClassesLinks([void updates(SendigClassesLinksBuilder b)]) = _$SendigClassesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigClassesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigClassesLinks> get serializer => _$SendigClassesLinksSerializer();
}

class _$SendigClassesLinksSerializer implements PrimitiveSerializer<SendigClassesLinks> {
  @override
  final Iterable<Type> types = const [SendigClassesLinks, _$SendigClassesLinks];

  @override
  final String wireName = r'SendigClassesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigClassesRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SendigClassesRef),
      );
    }
    if (object.classes != null) {
      yield r'classes';
      yield serializers.serialize(
        object.classes,
        specifiedType: const FullType(BuiltList, [FullType(SendigClassRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigClassesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassesRef),
          ) as SendigClassesRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassesRef),
          ) as SendigClassesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'classes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigClassRefElement)]),
          ) as BuiltList<SendigClassRefElement>;
          result.classes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendigClassesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigClassesLinksBuilder();
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

