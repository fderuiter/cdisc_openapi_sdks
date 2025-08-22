//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_cdashig_scenario_variables_row.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_cdashig_domain_variables_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_cdashig_table.g.dart';

/// ExportCdashigTable
///
/// Properties:
/// * [domainVariables] 
/// * [scenarioVariables] 
@BuiltValue()
abstract class ExportCdashigTable implements Built<ExportCdashigTable, ExportCdashigTableBuilder> {
  @BuiltValueField(wireName: r'domain-variables')
  BuiltList<ExportCdashigDomainVariablesRow>? get domainVariables;

  @BuiltValueField(wireName: r'scenario-variables')
  BuiltList<ExportCdashigScenarioVariablesRow>? get scenarioVariables;

  ExportCdashigTable._();

  factory ExportCdashigTable([void updates(ExportCdashigTableBuilder b)]) = _$ExportCdashigTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportCdashigTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportCdashigTable> get serializer => _$ExportCdashigTableSerializer();
}

class _$ExportCdashigTableSerializer implements PrimitiveSerializer<ExportCdashigTable> {
  @override
  final Iterable<Type> types = const [ExportCdashigTable, _$ExportCdashigTable];

  @override
  final String wireName = r'ExportCdashigTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportCdashigTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domainVariables != null) {
      yield r'domain-variables';
      yield serializers.serialize(
        object.domainVariables,
        specifiedType: const FullType(BuiltList, [FullType(ExportCdashigDomainVariablesRow)]),
      );
    }
    if (object.scenarioVariables != null) {
      yield r'scenario-variables';
      yield serializers.serialize(
        object.scenarioVariables,
        specifiedType: const FullType(BuiltList, [FullType(ExportCdashigScenarioVariablesRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportCdashigTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportCdashigTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain-variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportCdashigDomainVariablesRow)]),
          ) as BuiltList<ExportCdashigDomainVariablesRow>;
          result.domainVariables.replace(valueDes);
          break;
        case r'scenario-variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportCdashigScenarioVariablesRow)]),
          ) as BuiltList<ExportCdashigScenarioVariablesRow>;
          result.scenarioVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportCdashigTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportCdashigTableBuilder();
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

