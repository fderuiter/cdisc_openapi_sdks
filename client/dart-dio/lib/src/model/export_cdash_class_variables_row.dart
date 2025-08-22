//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_cdash_class_variables_row.g.dart';

/// ExportCdashClassVariablesRow
///
/// Properties:
/// * [version] 
/// * [class_] 
/// * [domain] 
/// * [variableOrder] 
/// * [cDASHVariable] 
/// * [cDASHVariableLabel] 
/// * [dRAFTCDASHDefinition] 
/// * [domainSpecific] 
/// * [questionText] 
/// * [prompt] 
/// * [type] 
/// * [sDTMTarget] 
/// * [mappingInstructions] 
/// * [controlledTerminologyCodelistName] 
/// * [implementationNotes] 
@BuiltValue()
abstract class ExportCdashClassVariablesRow implements Built<ExportCdashClassVariablesRow, ExportCdashClassVariablesRowBuilder> {
  @BuiltValueField(wireName: r'Version')
  String? get version;

  @BuiltValueField(wireName: r'Class')
  String? get class_;

  @BuiltValueField(wireName: r'Domain')
  String? get domain;

  @BuiltValueField(wireName: r'Variable Order')
  String? get variableOrder;

  @BuiltValueField(wireName: r'CDASH Variable')
  String? get cDASHVariable;

  @BuiltValueField(wireName: r'CDASH Variable Label')
  String? get cDASHVariableLabel;

  @BuiltValueField(wireName: r'DRAFT CDASH Definition')
  String? get dRAFTCDASHDefinition;

  @BuiltValueField(wireName: r'Domain Specific')
  String? get domainSpecific;

  @BuiltValueField(wireName: r'Question Text')
  String? get questionText;

  @BuiltValueField(wireName: r'Prompt')
  String? get prompt;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'SDTM Target')
  BuiltList<String>? get sDTMTarget;

  @BuiltValueField(wireName: r'Mapping Instructions')
  String? get mappingInstructions;

  @BuiltValueField(wireName: r'Controlled Terminology Codelist Name')
  String? get controlledTerminologyCodelistName;

  @BuiltValueField(wireName: r'Implementation Notes')
  String? get implementationNotes;

  ExportCdashClassVariablesRow._();

  factory ExportCdashClassVariablesRow([void updates(ExportCdashClassVariablesRowBuilder b)]) = _$ExportCdashClassVariablesRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportCdashClassVariablesRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportCdashClassVariablesRow> get serializer => _$ExportCdashClassVariablesRowSerializer();
}

class _$ExportCdashClassVariablesRowSerializer implements PrimitiveSerializer<ExportCdashClassVariablesRow> {
  @override
  final Iterable<Type> types = const [ExportCdashClassVariablesRow, _$ExportCdashClassVariablesRow];

  @override
  final String wireName = r'ExportCdashClassVariablesRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportCdashClassVariablesRow object, {
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
    if (object.variableOrder != null) {
      yield r'Variable Order';
      yield serializers.serialize(
        object.variableOrder,
        specifiedType: const FullType(String),
      );
    }
    if (object.cDASHVariable != null) {
      yield r'CDASH Variable';
      yield serializers.serialize(
        object.cDASHVariable,
        specifiedType: const FullType(String),
      );
    }
    if (object.cDASHVariableLabel != null) {
      yield r'CDASH Variable Label';
      yield serializers.serialize(
        object.cDASHVariableLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.dRAFTCDASHDefinition != null) {
      yield r'DRAFT CDASH Definition';
      yield serializers.serialize(
        object.dRAFTCDASHDefinition,
        specifiedType: const FullType(String),
      );
    }
    if (object.domainSpecific != null) {
      yield r'Domain Specific';
      yield serializers.serialize(
        object.domainSpecific,
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
    if (object.sDTMTarget != null) {
      yield r'SDTM Target';
      yield serializers.serialize(
        object.sDTMTarget,
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
    ExportCdashClassVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportCdashClassVariablesRowBuilder result,
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
        case r'Variable Order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableOrder = valueDes;
          break;
        case r'CDASH Variable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDASHVariable = valueDes;
          break;
        case r'CDASH Variable Label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDASHVariableLabel = valueDes;
          break;
        case r'DRAFT CDASH Definition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dRAFTCDASHDefinition = valueDes;
          break;
        case r'Domain Specific':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainSpecific = valueDes;
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
        case r'SDTM Target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sDTMTarget.replace(valueDes);
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
  ExportCdashClassVariablesRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportCdashClassVariablesRowBuilder();
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

