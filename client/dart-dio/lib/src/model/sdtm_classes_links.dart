//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_class_ref_element.dart';
import 'package:openapi/src/model/sdtm_classes_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_classes_links.g.dart';

/// SdtmClassesLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
/// * [classes] 
@BuiltValue()
abstract class SdtmClassesLinks implements Built<SdtmClassesLinks, SdtmClassesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClassesRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmClassesRef? get priorVersion;

  @BuiltValueField(wireName: r'classes')
  BuiltList<SdtmClassRefElement>? get classes;

  SdtmClassesLinks._();

  factory SdtmClassesLinks([void updates(SdtmClassesLinksBuilder b)]) = _$SdtmClassesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmClassesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmClassesLinks> get serializer => _$SdtmClassesLinksSerializer();
}

class _$SdtmClassesLinksSerializer implements PrimitiveSerializer<SdtmClassesLinks> {
  @override
  final Iterable<Type> types = const [SdtmClassesLinks, _$SdtmClassesLinks];

  @override
  final String wireName = r'SdtmClassesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClassesRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmClassesRef),
      );
    }
    if (object.classes != null) {
      yield r'classes';
      yield serializers.serialize(
        object.classes,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmClassesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassesRef),
          ) as SdtmClassesRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassesRef),
          ) as SdtmClassesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'classes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassRefElement)]),
          ) as BuiltList<SdtmClassRefElement>;
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
  SdtmClassesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmClassesLinksBuilder();
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

