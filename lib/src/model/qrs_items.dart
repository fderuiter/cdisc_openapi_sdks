//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_items_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_items.g.dart';

/// QrsItems
///
/// Properties:
/// * [name] 
/// * [label] 
/// * [description] 
/// * [effectiveDate] 
/// * [untilDate] 
/// * [registrationStatus] 
/// * [version] 
/// * [qrsType] 
/// * [links] 
@BuiltValue()
abstract class QrsItems implements Built<QrsItems, QrsItemsBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'effectiveDate')
  String? get effectiveDate;

  @BuiltValueField(wireName: r'untilDate')
  String? get untilDate;

  @BuiltValueField(wireName: r'registrationStatus')
  String? get registrationStatus;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'qrsType')
  String? get qrsType;

  @BuiltValueField(wireName: r'_links')
  QrsItemsLinks? get links;

  QrsItems._();

  factory QrsItems([void updates(QrsItemsBuilder b)]) = _$QrsItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsItems> get serializer => _$QrsItemsSerializer();
}

class _$QrsItemsSerializer implements PrimitiveSerializer<QrsItems> {
  @override
  final Iterable<Type> types = const [QrsItems, _$QrsItems];

  @override
  final String wireName = r'QrsItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsItems object, {
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
    if (object.effectiveDate != null) {
      yield r'effectiveDate';
      yield serializers.serialize(
        object.effectiveDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.untilDate != null) {
      yield r'untilDate';
      yield serializers.serialize(
        object.untilDate,
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
    if (object.qrsType != null) {
      yield r'qrsType';
      yield serializers.serialize(
        object.qrsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(QrsItemsLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsItems object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsItemsBuilder result,
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
        case r'effectiveDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effectiveDate = valueDes;
          break;
        case r'untilDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.untilDate = valueDes;
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
        case r'qrsType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.qrsType = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsItemsLinks),
          ) as QrsItemsLinks;
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
  QrsItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsItemsBuilder();
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

