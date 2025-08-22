//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdash_class_domains_ref.dart';
import 'package:openapi/src/model/cdash_domain_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_class_domains_links.g.dart';

/// CdashClassDomainsLinks
///
/// Properties:
/// * [self] 
/// * [domains] 
@BuiltValue()
abstract class CdashClassDomainsLinks implements Built<CdashClassDomainsLinks, CdashClassDomainsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashClassDomainsRef? get self;

  @BuiltValueField(wireName: r'domains')
  BuiltList<CdashDomainRefElement>? get domains;

  CdashClassDomainsLinks._();

  factory CdashClassDomainsLinks([void updates(CdashClassDomainsLinksBuilder b)]) = _$CdashClassDomainsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashClassDomainsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashClassDomainsLinks> get serializer => _$CdashClassDomainsLinksSerializer();
}

class _$CdashClassDomainsLinksSerializer implements PrimitiveSerializer<CdashClassDomainsLinks> {
  @override
  final Iterable<Type> types = const [CdashClassDomainsLinks, _$CdashClassDomainsLinks];

  @override
  final String wireName = r'CdashClassDomainsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashClassDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashClassDomainsRef),
      );
    }
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(CdashDomainRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashClassDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashClassDomainsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassDomainsRef),
          ) as CdashClassDomainsRef;
          result.self.replace(valueDes);
          break;
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashDomainRefElement)]),
          ) as BuiltList<CdashDomainRefElement>;
          result.domains.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashClassDomainsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashClassDomainsLinksBuilder();
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

