//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_class_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_classes_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_classes_links.g.dart';

/// SdtmigClassesLinks
///
/// Properties:
/// * [self] 
/// * [priorVersion] 
/// * [classes] 
@BuiltValue()
abstract class SdtmigClassesLinks implements Built<SdtmigClassesLinks, SdtmigClassesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigClassesRef? get self;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmigClassesRef? get priorVersion;

  @BuiltValueField(wireName: r'classes')
  BuiltList<SdtmigClassRefElement>? get classes;

  SdtmigClassesLinks._();

  factory SdtmigClassesLinks([void updates(SdtmigClassesLinksBuilder b)]) = _$SdtmigClassesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigClassesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigClassesLinks> get serializer => _$SdtmigClassesLinksSerializer();
}

class _$SdtmigClassesLinksSerializer implements PrimitiveSerializer<SdtmigClassesLinks> {
  @override
  final Iterable<Type> types = const [SdtmigClassesLinks, _$SdtmigClassesLinks];

  @override
  final String wireName = r'SdtmigClassesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigClassesRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmigClassesRef),
      );
    }
    if (object.classes != null) {
      yield r'classes';
      yield serializers.serialize(
        object.classes,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigClassRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigClassesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassesRef),
          ) as SdtmigClassesRef;
          result.self.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassesRef),
          ) as SdtmigClassesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'classes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigClassRefElement)]),
          ) as BuiltList<SdtmigClassRefElement>;
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
  SdtmigClassesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigClassesLinksBuilder();
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

