//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtmig_variables_row.g.dart';

/// ExportSdtmigVariablesRow
///
/// Properties:
/// * [version] 
/// * [variableOrder] 
/// * [class_] 
/// * [datasetName] 
/// * [variableName] 
/// * [variableLabel] 
/// * [type] 
/// * [controlledTermsCommaCodelistOrFormat] 
/// * [role] 
/// * [cDISCNotes] 
/// * [core] 
@BuiltValue()
abstract class ExportSdtmigVariablesRow implements Built<ExportSdtmigVariablesRow, ExportSdtmigVariablesRowBuilder> {
  @BuiltValueField(wireName: r'Version')
  String? get version;

  @BuiltValueField(wireName: r'Variable Order')
  String? get variableOrder;

  @BuiltValueField(wireName: r'Class')
  String? get class_;

  @BuiltValueField(wireName: r'Dataset Name')
  String? get datasetName;

  @BuiltValueField(wireName: r'Variable Name')
  String? get variableName;

  @BuiltValueField(wireName: r'Variable Label')
  String? get variableLabel;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'Controlled Terms, Codelist or Format')
  String? get controlledTermsCommaCodelistOrFormat;

  @BuiltValueField(wireName: r'Role')
  String? get role;

  @BuiltValueField(wireName: r'CDISC Notes')
  String? get cDISCNotes;

  @BuiltValueField(wireName: r'Core')
  String? get core;

  ExportSdtmigVariablesRow._();

  factory ExportSdtmigVariablesRow([void updates(ExportSdtmigVariablesRowBuilder b)]) = _$ExportSdtmigVariablesRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmigVariablesRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmigVariablesRow> get serializer => _$ExportSdtmigVariablesRowSerializer();
}

class _$ExportSdtmigVariablesRowSerializer implements PrimitiveSerializer<ExportSdtmigVariablesRow> {
  @override
  final Iterable<Type> types = const [ExportSdtmigVariablesRow, _$ExportSdtmigVariablesRow];

  @override
  final String wireName = r'ExportSdtmigVariablesRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmigVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'Version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.variableOrder != null) {
      yield r'Variable Order';
      yield serializers.serialize(
        object.variableOrder,
        specifiedType: const FullType(String),
      );
    }
    if (object.class_ != null) {
      yield r'Class';
      yield serializers.serialize(
        object.class_,
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
    if (object.controlledTermsCommaCodelistOrFormat != null) {
      yield r'Controlled Terms, Codelist or Format';
      yield serializers.serialize(
        object.controlledTermsCommaCodelistOrFormat,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'Role';
      yield serializers.serialize(
        object.role,
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
    if (object.core != null) {
      yield r'Core';
      yield serializers.serialize(
        object.core,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSdtmigVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmigVariablesRowBuilder result,
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
        case r'Variable Order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableOrder = valueDes;
          break;
        case r'Class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        case r'Dataset Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetName = valueDes;
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
        case r'Controlled Terms, Codelist or Format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.controlledTermsCommaCodelistOrFormat = valueDes;
          break;
        case r'Role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'CDISC Notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDISCNotes = valueDes;
          break;
        case r'Core':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.core = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportSdtmigVariablesRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmigVariablesRowBuilder();
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

