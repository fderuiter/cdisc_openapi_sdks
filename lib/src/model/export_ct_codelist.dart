//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_ct_term.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_ct_codelist.g.dart';

/// ExportCtCodelist
///
/// Properties:
/// * [code] 
/// * [codelistCode] 
/// * [codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis] 
/// * [codelistName] 
/// * [cDISCSubmissionValue] 
/// * [cDISCSynonymLeftParenthesisSRightParenthesis] 
/// * [cDISCDefinition] 
/// * [nCIPreferredTerm] 
/// * [standardAndDate] 
/// * [] 
@BuiltValue()
abstract class ExportCtCodelist implements Built<ExportCtCodelist, ExportCtCodelistBuilder> {
  @BuiltValueField(wireName: r'Code')
  String? get code;

  @BuiltValueField(wireName: r'Codelist Code')
  String? get codelistCode;

  @BuiltValueField(wireName: r'Codelist Extensible (Yes/No)')
  String? get codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis;

  @BuiltValueField(wireName: r'Codelist Name')
  String? get codelistName;

  @BuiltValueField(wireName: r'CDISC Submission Value')
  String? get cDISCSubmissionValue;

  @BuiltValueField(wireName: r'CDISC Synonym(s)')
  BuiltList<String>? get cDISCSynonymLeftParenthesisSRightParenthesis;

  @BuiltValueField(wireName: r'CDISC Definition')
  String? get cDISCDefinition;

  @BuiltValueField(wireName: r'NCI Preferred Term')
  String? get nCIPreferredTerm;

  @BuiltValueField(wireName: r'Standard and Date')
  String? get standardAndDate;

  @BuiltValueField(wireName: r'')
  BuiltList<ExportCtTerm>? get ;

  ExportCtCodelist._();

  factory ExportCtCodelist([void updates(ExportCtCodelistBuilder b)]) = _$ExportCtCodelist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportCtCodelistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportCtCodelist> get serializer => _$ExportCtCodelistSerializer();
}

class _$ExportCtCodelistSerializer implements PrimitiveSerializer<ExportCtCodelist> {
  @override
  final Iterable<Type> types = const [ExportCtCodelist, _$ExportCtCodelist];

  @override
  final String wireName = r'ExportCtCodelist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'Code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.codelistCode != null) {
      yield r'Codelist Code';
      yield serializers.serialize(
        object.codelistCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis != null) {
      yield r'Codelist Extensible (Yes/No)';
      yield serializers.serialize(
        object.codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis,
        specifiedType: const FullType(String),
      );
    }
    if (object.codelistName != null) {
      yield r'Codelist Name';
      yield serializers.serialize(
        object.codelistName,
        specifiedType: const FullType(String),
      );
    }
    if (object.cDISCSubmissionValue != null) {
      yield r'CDISC Submission Value';
      yield serializers.serialize(
        object.cDISCSubmissionValue,
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
    if (object.cDISCDefinition != null) {
      yield r'CDISC Definition';
      yield serializers.serialize(
        object.cDISCDefinition,
        specifiedType: const FullType(String),
      );
    }
    if (object.nCIPreferredTerm != null) {
      yield r'NCI Preferred Term';
      yield serializers.serialize(
        object.nCIPreferredTerm,
        specifiedType: const FullType(String),
      );
    }
    if (object.standardAndDate != null) {
      yield r'Standard and Date';
      yield serializers.serialize(
        object.standardAndDate,
        specifiedType: const FullType(String),
      );
    }
    if (object. != null) {
      yield r'';
      yield serializers.serialize(
        object.,
        specifiedType: const FullType(BuiltList, [FullType(ExportCtTerm)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportCtCodelist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportCtCodelistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'Codelist Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codelistCode = valueDes;
          break;
        case r'Codelist Extensible (Yes/No)':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codelistExtensibleLeftParenthesisYesSlashNoRightParenthesis = valueDes;
          break;
        case r'Codelist Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codelistName = valueDes;
          break;
        case r'CDISC Submission Value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDISCSubmissionValue = valueDes;
          break;
        case r'CDISC Synonym(s)':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.cDISCSynonymLeftParenthesisSRightParenthesis.replace(valueDes);
          break;
        case r'CDISC Definition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cDISCDefinition = valueDes;
          break;
        case r'NCI Preferred Term':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nCIPreferredTerm = valueDes;
          break;
        case r'Standard and Date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.standardAndDate = valueDes;
          break;
        case r'':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportCtTerm)]),
          ) as BuiltList<ExportCtTerm>;
          result..replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportCtCodelist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportCtCodelistBuilder();
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

