//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_adam_variables_row.g.dart';

/// ExportAdamVariablesRow
///
/// Properties:
/// * [version] 
/// * [dataStructureName] 
/// * [datasetName] 
/// * [variableGroup] 
/// * [variableName] 
/// * [variableLabel] 
/// * [type] 
/// * [codelistSlashControlledTerms] 
/// * [core] 
/// * [cDISCNotes] 
@BuiltValue()
abstract class ExportAdamVariablesRow implements Built<ExportAdamVariablesRow, ExportAdamVariablesRowBuilder> {
  @BuiltValueField(wireName: r'Version')
  String? get version;

  @BuiltValueField(wireName: r'Data Structure Name')
  String? get dataStructureName;

  @BuiltValueField(wireName: r'Dataset Name')
  String? get datasetName;

  @BuiltValueField(wireName: r'Variable Group')
  String? get variableGroup;

  @BuiltValueField(wireName: r'Variable Name')
  String? get variableName;

  @BuiltValueField(wireName: r'Variable Label')
  String? get variableLabel;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'Codelist/Controlled Terms')
  String? get codelistSlashControlledTerms;

  @BuiltValueField(wireName: r'Core')
  String? get core;

  @BuiltValueField(wireName: r'CDISC Notes')
  String? get cDISCNotes;

  ExportAdamVariablesRow._();

  factory ExportAdamVariablesRow([void updates(ExportAdamVariablesRowBuilder b)]) = _$ExportAdamVariablesRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportAdamVariablesRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportAdamVariablesRow> get serializer => _$ExportAdamVariablesRowSerializer();
}

class _$ExportAdamVariablesRowSerializer implements PrimitiveSerializer<ExportAdamVariablesRow> {
  @override
  final Iterable<Type> types = const [ExportAdamVariablesRow, _$ExportAdamVariablesRow];

  @override
  final String wireName = r'ExportAdamVariablesRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportAdamVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'Version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataStructureName != null) {
      yield r'Data Structure Name';
      yield serializers.serialize(
        object.dataStructureName,
        specifiedType: const FullType(String),
      );
    }
    if (object.datasetName != null) {
      yield r'Dataset Name';
      yield serializers.serialize(
        object.datasetName,
        specifiedType: const FullType(String),
      );
    }
    if (object.variableGroup != null) {
      yield r'Variable Group';
      yield serializers.serialize(
        object.variableGroup,
        specifiedType: const FullType(String),
      );
    }
    if (object.variableName != null) {
      yield r'Variable Name';
      yield serializers.serialize(
        object.variableName,
        specifiedType: const FullType(String),
      );
    }
    if (object.variableLabel != null) {
      yield r'Variable Label';
      yield serializers.serialize(
        object.variableLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.codelistSlashControlledTerms != null) {
      yield r'Codelist/Controlled Terms';
      yield serializers.serialize(
        object.codelistSlashControlledTerms,
        specifiedType: const FullType(String),
      );
    }
    if (object.core != null) {
      yield r'Core';
      yield serializers.serialize(
        object.core,
        specifiedType: const FullType(String),
      );
    }
    if (object.cDISCNotes != null) {
      yield r'CDISC Notes';
      yield serializers.serialize(
        object.cDISCNotes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportAdamVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportAdamVariablesRowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'Data Structure Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataStructureName = valueDes;
          break;
        case r'Dataset Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetName = valueDes;
          break;
        case r'Variable Group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableGroup = valueDes;
          break;
        case r'Variable Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableName = valueDes;
          break;
        case r'Variable Label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableLabel = valueDes;
          break;
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'Codelist/Controlled Terms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codelistSlashControlledTerms = valueDes;
          break;
        case r'Core':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.core = valueDes;
          break;
        case r'CDISC Notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDISCNotes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportAdamVariablesRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportAdamVariablesRowBuilder();
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

