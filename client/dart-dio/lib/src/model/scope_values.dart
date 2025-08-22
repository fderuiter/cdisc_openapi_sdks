//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scope_values.g.dart';

/// ScopeValues
///
/// Properties:
/// * [total] 
/// * [hasMore] 
/// * [values] 
@BuiltValue()
abstract class ScopeValues implements Built<ScopeValues, ScopeValuesBuilder> {
  @BuiltValueField(wireName: r'total')
  num? get total;

  @BuiltValueField(wireName: r'hasMore')
  bool? get hasMore;

  @BuiltValueField(wireName: r'values')
  BuiltList<String>? get values;

  ScopeValues._();

  factory ScopeValues([void updates(ScopeValuesBuilder b)]) = _$ScopeValues;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScopeValuesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScopeValues> get serializer => _$ScopeValuesSerializer();
}

class _$ScopeValuesSerializer implements PrimitiveSerializer<ScopeValues> {
  @override
  final Iterable<Type> types = const [ScopeValues, _$ScopeValues];

  @override
  final String wireName = r'ScopeValues';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScopeValues object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(num),
      );
    }
    if (object.hasMore != null) {
      yield r'hasMore';
      yield serializers.serialize(
        object.hasMore,
        specifiedType: const FullType(bool),
      );
    }
    if (object.values != null) {
      yield r'values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScopeValues object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScopeValuesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'hasMore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasMore = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScopeValues deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScopeValuesBuilder();
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

