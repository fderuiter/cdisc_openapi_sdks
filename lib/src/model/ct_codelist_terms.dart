//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_codelist_terms_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ct_codelist_terms.g.dart';

/// CtCodelistTerms
///
/// Properties:
/// * [conceptId] 
/// * [extensible] 
/// * [name] 
/// * [submissionValue] 
/// * [definition] 
/// * [preferredTerm] 
/// * [synonyms] 
/// * [links] 
@BuiltValue()
abstract class CtCodelistTerms implements Built<CtCodelistTerms, CtCodelistTermsBuilder> {
  @BuiltValueField(wireName: r'conceptId')
  String? get conceptId;

  @BuiltValueField(wireName: r'extensible')
  String? get extensible;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'submissionValue')
  String? get submissionValue;

  @BuiltValueField(wireName: r'definition')
  String? get definition;

  @BuiltValueField(wireName: r'preferredTerm')
  String? get preferredTerm;

  @BuiltValueField(wireName: r'synonyms')
  BuiltList<String>? get synonyms;

  @BuiltValueField(wireName: r'_links')
  CtCodelistTermsLinks? get links;

  CtCodelistTerms._();

  factory CtCodelistTerms([void updates(CtCodelistTermsBuilder b)]) = _$CtCodelistTerms;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CtCodelistTermsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CtCodelistTerms> get serializer => _$CtCodelistTermsSerializer();
}

class _$CtCodelistTermsSerializer implements PrimitiveSerializer<CtCodelistTerms> {
  @override
  final Iterable<Type> types = const [CtCodelistTerms, _$CtCodelistTerms];

  @override
  final String wireName = r'CtCodelistTerms';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CtCodelistTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conceptId != null) {
      yield r'conceptId';
      yield serializers.serialize(
        object.conceptId,
        specifiedType: const FullType(String),
      );
    }
    if (object.extensible != null) {
      yield r'extensible';
      yield serializers.serialize(
        object.extensible,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.submissionValue != null) {
      yield r'submissionValue';
      yield serializers.serialize(
        object.submissionValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.definition != null) {
      yield r'definition';
      yield serializers.serialize(
        object.definition,
        specifiedType: const FullType(String),
      );
    }
    if (object.preferredTerm != null) {
      yield r'preferredTerm';
      yield serializers.serialize(
        object.preferredTerm,
        specifiedType: const FullType(String),
      );
    }
    if (object.synonyms != null) {
      yield r'synonyms';
      yield serializers.serialize(
        object.synonyms,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CtCodelistTermsLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CtCodelistTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CtCodelistTermsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conceptId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.conceptId = valueDes;
          break;
        case r'extensible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.extensible = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'submissionValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.submissionValue = valueDes;
          break;
        case r'definition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.definition = valueDes;
          break;
        case r'preferredTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preferredTerm = valueDes;
          break;
        case r'synonyms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.synonyms.replace(valueDes);
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CtCodelistTermsLinks),
          ) as CtCodelistTermsLinks;
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
  CtCodelistTerms deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CtCodelistTermsBuilder();
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

