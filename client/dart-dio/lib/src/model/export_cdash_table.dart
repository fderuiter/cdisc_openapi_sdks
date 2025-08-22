//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_cdash_class_variables_row.dart';
import 'package:openapi/src/model/export_cdash_domain_variables_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_cdash_table.g.dart';

/// ExportCdashTable
///
/// Properties:
/// * [classVariables] 
/// * [domainVariables] 
@BuiltValue()
abstract class ExportCdashTable implements Built<ExportCdashTable, ExportCdashTableBuilder> {
  @BuiltValueField(wireName: r'class-variables')
  BuiltList<ExportCdashClassVariablesRow>? get classVariables;

  @BuiltValueField(wireName: r'domain-variables')
  BuiltList<ExportCdashDomainVariablesRow>? get domainVariables;

  ExportCdashTable._();

  factory ExportCdashTable([void updates(ExportCdashTableBuilder b)]) = _$ExportCdashTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportCdashTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportCdashTable> get serializer => _$ExportCdashTableSerializer();
}

class _$ExportCdashTableSerializer implements PrimitiveSerializer<ExportCdashTable> {
  @override
  final Iterable<Type> types = const [ExportCdashTable, _$ExportCdashTable];

  @override
  final String wireName = r'ExportCdashTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportCdashTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.classVariables != null) {
      yield r'class-variables';
      yield serializers.serialize(
        object.classVariables,
        specifiedType: const FullType(BuiltList, [FullType(ExportCdashClassVariablesRow)]),
      );
    }
    if (object.domainVariables != null) {
      yield r'domain-variables';
      yield serializers.serialize(
        object.domainVariables,
        specifiedType: const FullType(BuiltList, [FullType(ExportCdashDomainVariablesRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportCdashTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportCdashTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'class-variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportCdashClassVariablesRow)]),
          ) as BuiltList<ExportCdashClassVariablesRow>;
          result.classVariables.replace(valueDes);
          break;
        case r'domain-variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportCdashDomainVariablesRow)]),
          ) as BuiltList<ExportCdashDomainVariablesRow>;
          result.domainVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportCdashTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportCdashTableBuilder();
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

