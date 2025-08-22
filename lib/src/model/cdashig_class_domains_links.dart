//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_class_domains_ref.dart';
import 'package:openapi/src/model/cdashig_domain_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_class_domains_links.g.dart';

/// CdashigClassDomainsLinks
///
/// Properties:
/// * [self] 
/// * [domains] 
@BuiltValue()
abstract class CdashigClassDomainsLinks implements Built<CdashigClassDomainsLinks, CdashigClassDomainsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigClassDomainsRef? get self;

  @BuiltValueField(wireName: r'domains')
  BuiltList<CdashigDomainRefElement>? get domains;

  CdashigClassDomainsLinks._();

  factory CdashigClassDomainsLinks([void updates(CdashigClassDomainsLinksBuilder b)]) = _$CdashigClassDomainsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigClassDomainsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigClassDomainsLinks> get serializer => _$CdashigClassDomainsLinksSerializer();
}

class _$CdashigClassDomainsLinksSerializer implements PrimitiveSerializer<CdashigClassDomainsLinks> {
  @override
  final Iterable<Type> types = const [CdashigClassDomainsLinks, _$CdashigClassDomainsLinks];

  @override
  final String wireName = r'CdashigClassDomainsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigClassDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigClassDomainsRef),
      );
    }
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(CdashigDomainRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigClassDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigClassDomainsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassDomainsRef),
          ) as CdashigClassDomainsRef;
          result.self.replace(valueDes);
          break;
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigDomainRefElement)]),
          ) as BuiltList<CdashigDomainRefElement>;
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
  CdashigClassDomainsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigClassDomainsLinksBuilder();
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

