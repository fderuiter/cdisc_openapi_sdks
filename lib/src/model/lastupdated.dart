//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/lastupdated_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lastupdated.g.dart';

/// Lastupdated
///
/// Properties:
/// * [links] 
/// * [overall] 
/// * [dataAnalysis] 
/// * [dataCollection] 
/// * [dataTabulation] 
/// * [measure] 
/// * [terminology] 
@BuiltValue()
abstract class Lastupdated implements Built<Lastupdated, LastupdatedBuilder> {
  @BuiltValueField(wireName: r'_links')
  LastupdatedLinks? get links;

  @BuiltValueField(wireName: r'overall')
  String? get overall;

  @BuiltValueField(wireName: r'data-analysis')
  String? get dataAnalysis;

  @BuiltValueField(wireName: r'data-collection')
  String? get dataCollection;

  @BuiltValueField(wireName: r'data-tabulation')
  String? get dataTabulation;

  @BuiltValueField(wireName: r'measure')
  String? get measure;

  @BuiltValueField(wireName: r'terminology')
  String? get terminology;

  Lastupdated._();

  factory Lastupdated([void updates(LastupdatedBuilder b)]) = _$Lastupdated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LastupdatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Lastupdated> get serializer => _$LastupdatedSerializer();
}

class _$LastupdatedSerializer implements PrimitiveSerializer<Lastupdated> {
  @override
  final Iterable<Type> types = const [Lastupdated, _$Lastupdated];

  @override
  final String wireName = r'Lastupdated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Lastupdated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(LastupdatedLinks),
      );
    }
    if (object.overall != null) {
      yield r'overall';
      yield serializers.serialize(
        object.overall,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataAnalysis != null) {
      yield r'data-analysis';
      yield serializers.serialize(
        object.dataAnalysis,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataCollection != null) {
      yield r'data-collection';
      yield serializers.serialize(
        object.dataCollection,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataTabulation != null) {
      yield r'data-tabulation';
      yield serializers.serialize(
        object.dataTabulation,
        specifiedType: const FullType(String),
      );
    }
    if (object.measure != null) {
      yield r'measure';
      yield serializers.serialize(
        object.measure,
        specifiedType: const FullType(String),
      );
    }
    if (object.terminology != null) {
      yield r'terminology';
      yield serializers.serialize(
        object.terminology,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Lastupdated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LastupdatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LastupdatedLinks),
          ) as LastupdatedLinks;
          result.links.replace(valueDes);
          break;
        case r'overall':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.overall = valueDes;
          break;
        case r'data-analysis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataAnalysis = valueDes;
          break;
        case r'data-collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataCollection = valueDes;
          break;
        case r'data-tabulation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataTabulation = valueDes;
          break;
        case r'measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.measure = valueDes;
          break;
        case r'terminology':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.terminology = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Lastupdated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LastupdatedBuilder();
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

