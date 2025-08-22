//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtm_class_variables_row.g.dart';

/// ExportSdtmClassVariablesRow
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
/// * [roleDescription] 
/// * [description] 
@BuiltValue()
abstract class ExportSdtmClassVariablesRow implements Built<ExportSdtmClassVariablesRow, ExportSdtmClassVariablesRowBuilder> {
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

  @BuiltValueField(wireName: r'Role Description')
  String? get roleDescription;

  @BuiltValueField(wireName: r'Description')
  String? get description;

  ExportSdtmClassVariablesRow._();

  factory ExportSdtmClassVariablesRow([void updates(ExportSdtmClassVariablesRowBuilder b)]) = _$ExportSdtmClassVariablesRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmClassVariablesRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmClassVariablesRow> get serializer => _$ExportSdtmClassVariablesRowSerializer();
}

class _$ExportSdtmClassVariablesRowSerializer implements PrimitiveSerializer<ExportSdtmClassVariablesRow> {
  @override
  final Iterable<Type> types = const [ExportSdtmClassVariablesRow, _$ExportSdtmClassVariablesRow];

  @override
  final String wireName = r'ExportSdtmClassVariablesRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmClassVariablesRow object, {
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
    if (object.roleDescription != null) {
      yield r'Role Description';
      yield serializers.serialize(
        object.roleDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'Description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSdtmClassVariablesRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmClassVariablesRowBuilder result,
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
        case r'Role Description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleDescription = valueDes;
          break;
        case r'Description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportSdtmClassVariablesRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmClassVariablesRowBuilder();
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

