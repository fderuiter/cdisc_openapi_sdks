//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_class.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sendig_product_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_product.g.dart';

/// SendigProduct
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
/// * [classes] 
@BuiltValue()
abstract class SendigProduct implements Built<SendigProduct, SendigProductBuilder> {
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
  SendigProductLinks? get links;

  @BuiltValueField(wireName: r'classes')
  BuiltList<SendigClass>? get classes;

  SendigProduct._();

  factory SendigProduct([void updates(SendigProductBuilder b)]) = _$SendigProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigProduct> get serializer => _$SendigProductSerializer();
}

class _$SendigProductSerializer implements PrimitiveSerializer<SendigProduct> {
  @override
  final Iterable<Type> types = const [SendigProduct, _$SendigProduct];

  @override
  final String wireName = r'SendigProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigProduct object, {
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
        specifiedType: const FullType(SendigProductLinks),
      );
    }
    if (object.classes != null) {
      yield r'classes';
      yield serializers.serialize(
        object.classes,
        specifiedType: const FullType(BuiltList, [FullType(SendigClass)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigProductBuilder result,
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
            specifiedType: const FullType(SendigProductLinks),
          ) as SendigProductLinks;
          result.links.replace(valueDes);
          break;
        case r'classes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigClass)]),
          ) as BuiltList<SendigClass>;
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
  SendigProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigProductBuilder();
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

