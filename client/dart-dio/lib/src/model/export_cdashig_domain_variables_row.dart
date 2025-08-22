//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_cdashig_domain_variables_row.g.dart';

/// ExportCdashigDomainVariablesRow
///
/// Properties:
/// * [version] 
/// * [class_] 
/// * [domain] 
/// * [dataCollectionScenario] 
/// * [variableOrder] 
/// * [cDASHIGVariable] 
/// * [cDASHIGVariableLabel] 
/// * [dRAFTCDASHIGDefinition] 
/// * [questionText] 
/// * [prompt] 
/// * [type] 
/// * [cDASHIGCore] 
/// * [caseReportFormCompletionInstructions] 
/// * [sDTMIGTarget] 
/// * [mappingInstructions] 
/// * [controlledTerminologyCodelistName] 
/// * [implementationNotes] 
@BuiltValue()
abstract class ExportCdashigDomainVariablesRow implements Built<ExportCdashigDomainVariablesRow, ExportCdashigDomainVariablesRowBuilder> {
  @BuiltValueField(wireName: r'Version')
  String? get version;

  @BuiltValueField(wireName: r'Class')
  String? get class_;

  @BuiltValueField(wireName: r'Domain')
  String? get domain;

  @BuiltValueField(wireName: r'Data Collection Scenario')
  String? get dataCollectionScenario;

  @BuiltValueField(wireName: r'Variable Order')
  String? get variableOrder;

  @BuiltValueField(wireName: r'CDASHIG Variable')
  String? get cDASHIGVariable;

  @BuiltValueField(wireName: r'CDASHIG Variable Label')
  String? get cDASHIGVariableLabel;

  @BuiltValueField(wireName: r'DRAFT CDASHIG Definition')
  String? get dRAFTCDASHIGDefinition;

  @BuiltValueField(wireName: r'Question Text')
  String? get questionText;

  @BuiltValueField(wireName: r'Prompt')
  String? get prompt;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'CDASHIG Core')
  String? get cDASHIGCore;

  @BuiltValueField(wireName: r'Case Report Form Completion Instructions')
  String? get caseReportFormCompletionInstructions;

  @BuiltValueField(wireName: r'SDTMIG Target')
  BuiltList<String>? get sDTMIGTarget;

  @BuiltValueField(wireName: r'Mapping Instructions')
  String? get mappingInstructions;

  @BuiltValueField(wireName: r'Controlled Terminology Codelist Name')
  String? get controlledTerminologyCodelistName;

  @BuiltValueField(wireName: r'Implementation Notes')
  String? get implementationNotes;

  ExportCdashigDomainVariablesRow._();

  factory ExportCdashigDomainVariablesRow([void updates(ExportCdashigDomainVariablesRowBuilder b)]) = _$ExportCdashigDomainVariablesRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportCdashigDomainVariablesRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportCdashigDomainVariablesRow> get serializer => _$ExportCdashigDomainVariablesRowSerializer();
}

class _$ExportCdashigDomainVariablesRowSerializer implements PrimitiveSerializer<ExportCdashigDomainVariablesRow> {
  @override
  final Iterable<Type> types = const [ExportCdashigDomainVariablesRow, _$ExportCdashigDomainVariablesRow];

  @override
  final String wireName = r'ExportCdashigDomainVariablesRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportCdashigDomainVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'Version';
      yield serializers.serialize(
        object.version,
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
    if (object.domain != null) {
      yield r'Domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataCollectionScenario != null) {
      yield r'Data Collection Scenario';
      yield serializers.serialize(
        object.dataCollectionScenario,
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
    if (object.cDASHIGVariable != null) {
      yield r'CDASHIG Variable';
      yield serializers.serialize(
        object.cDASHIGVariable,
        specifiedType: const FullType(String),
      );
    }
    if (object.cDASHIGVariableLabel != null) {
      yield r'CDASHIG Variable Label';
      yield serializers.serialize(
        object.cDASHIGVariableLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.dRAFTCDASHIGDefinition != null) {
      yield r'DRAFT CDASHIG Definition';
      yield serializers.serialize(
        object.dRAFTCDASHIGDefinition,
        specifiedType: const FullType(String),
      );
    }
    if (object.questionText != null) {
      yield r'Question Text';
      yield serializers.serialize(
        object.questionText,
        specifiedType: const FullType(String),
      );
    }
    if (object.prompt != null) {
      yield r'Prompt';
      yield serializers.serialize(
        object.prompt,
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
    if (object.cDASHIGCore != null) {
      yield r'CDASHIG Core';
      yield serializers.serialize(
        object.cDASHIGCore,
        specifiedType: const FullType(String),
      );
    }
    if (object.caseReportFormCompletionInstructions != null) {
      yield r'Case Report Form Completion Instructions';
      yield serializers.serialize(
        object.caseReportFormCompletionInstructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.sDTMIGTarget != null) {
      yield r'SDTMIG Target';
      yield serializers.serialize(
        object.sDTMIGTarget,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mappingInstructions != null) {
      yield r'Mapping Instructions';
      yield serializers.serialize(
        object.mappingInstructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.controlledTerminologyCodelistName != null) {
      yield r'Controlled Terminology Codelist Name';
      yield serializers.serialize(
        object.controlledTerminologyCodelistName,
        specifiedType: const FullType(String),
      );
    }
    if (object.implementationNotes != null) {
      yield r'Implementation Notes';
      yield serializers.serialize(
        object.implementationNotes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportCdashigDomainVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportCdashigDomainVariablesRowBuilder result,
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
        case r'Class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        case r'Domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'Data Collection Scenario':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataCollectionScenario = valueDes;
          break;
        case r'Variable Order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableOrder = valueDes;
          break;
        case r'CDASHIG Variable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDASHIGVariable = valueDes;
          break;
        case r'CDASHIG Variable Label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDASHIGVariableLabel = valueDes;
          break;
        case r'DRAFT CDASHIG Definition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dRAFTCDASHIGDefinition = valueDes;
          break;
        case r'Question Text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionText = valueDes;
          break;
        case r'Prompt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prompt = valueDes;
          break;
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'CDASHIG Core':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDASHIGCore = valueDes;
          break;
        case r'Case Report Form Completion Instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.caseReportFormCompletionInstructions = valueDes;
          break;
        case r'SDTMIG Target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sDTMIGTarget.replace(valueDes);
          break;
        case r'Mapping Instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mappingInstructions = valueDes;
          break;
        case r'Controlled Terminology Codelist Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.controlledTerminologyCodelistName = valueDes;
          break;
        case r'Implementation Notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.implementationNotes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportCdashigDomainVariablesRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportCdashigDomainVariablesRowBuilder();
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

