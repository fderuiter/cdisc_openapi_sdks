//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/adam_datastructure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_product.g.dart';

/// AdamProduct
///
/// Properties:
/// * [name] 
/// * [label] 
/// * [description] 
/// * [source_] 
/// * [effectiveDate] 
/// * [registrationStatus] 
/// * [version] 
/// * [links] 
/// * [dataStructures] 
@BuiltValue()
abstract class AdamProduct implements Built<AdamProduct, AdamProductBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'effectiveDate')
  String? get effectiveDate;

  @BuiltValueField(wireName: r'registrationStatus')
  String? get registrationStatus;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'_links')
  AdamProductLinks? get links;

  @BuiltValueField(wireName: r'dataStructures')
  BuiltList<AdamDatastructure>? get dataStructures;

  AdamProduct._();

  factory AdamProduct([void updates(AdamProductBuilder b)]) = _$AdamProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamProduct> get serializer => _$AdamProductSerializer();
}

class _$AdamProductSerializer implements PrimitiveSerializer<AdamProduct> {
  @override
  final Iterable<Type> types = const [AdamProduct, _$AdamProduct];

  @override
  final String wireName = r'AdamProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.effectiveDate != null) {
      yield r'effectiveDate';
      yield serializers.serialize(
        object.effectiveDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.registrationStatus != null) {
      yield r'registrationStatus';
      yield serializers.serialize(
        object.registrationStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(AdamProductLinks),
      );
    }
    if (object.dataStructures != null) {
      yield r'dataStructures';
      yield serializers.serialize(
        object.dataStructures,
        specifiedType: const FullType(BuiltList, [FullType(AdamDatastructure)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'effectiveDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effectiveDate = valueDes;
          break;
        case r'registrationStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.registrationStatus = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductLinks),
          ) as AdamProductLinks;
          result.links.replace(valueDes);
          break;
        case r'dataStructures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdamDatastructure)]),
          ) as BuiltList<AdamDatastructure>;
          result.dataStructures.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdamProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamProductBuilder();
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

