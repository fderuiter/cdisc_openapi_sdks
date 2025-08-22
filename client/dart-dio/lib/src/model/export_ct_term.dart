//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_ct_term.g.dart';

/// ExportCtTerm
///
/// Properties:
/// * [bundle1] 
/// * [cDISCSynonymLeftParenthesisSRightParenthesis] 
/// * [bundle2] 
@BuiltValue()
abstract class ExportCtTerm implements Built<ExportCtTerm, ExportCtTermBuilder> {
  @BuiltValueField(wireName: r'bundle-1')
  String? get bundle1;

  @BuiltValueField(wireName: r'CDISC Synonym(s)')
  BuiltList<String>? get cDISCSynonymLeftParenthesisSRightParenthesis;

  @BuiltValueField(wireName: r'bundle-2')
  String? get bundle2;

  ExportCtTerm._();

  factory ExportCtTerm([void updates(ExportCtTermBuilder b)]) = _$ExportCtTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportCtTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportCtTerm> get serializer => _$ExportCtTermSerializer();
}

class _$ExportCtTermSerializer implements PrimitiveSerializer<ExportCtTerm> {
  @override
  final Iterable<Type> types = const [ExportCtTerm, _$ExportCtTerm];

  @override
  final String wireName = r'ExportCtTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportCtTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bundle1 != null) {
      yield r'bundle-1';
      yield serializers.serialize(
        object.bundle1,
        specifiedType: const FullType(String),
      );
    }
    if (object.cDISCSynonymLeftParenthesisSRightParenthesis != null) {
      yield r'CDISC Synonym(s)';
      yield serializers.serialize(
        object.cDISCSynonymLeftParenthesisSRightParenthesis,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bundle2 != null) {
      yield r'bundle-2';
      yield serializers.serialize(
        object.bundle2,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportCtTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportCtTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bundle-1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bundle1 = valueDes;
          break;
        case r'CDISC Synonym(s)':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.cDISCSynonymLeftParenthesisSRightParenthesis.replace(valueDes);
          break;
        case r'bundle-2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bundle2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportCtTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportCtTermBuilder();
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

