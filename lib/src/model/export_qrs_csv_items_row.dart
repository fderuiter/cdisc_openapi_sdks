//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_qrs_csv_items_row.g.dart';

/// ExportQrsCsvItemsRow
///
/// Properties:
/// * [qRSMeasureName] 
/// * [qRSMeasureLabel] 
/// * [qRSMeasureType] 
/// * [itemSequence] 
/// * [testName] 
/// * [itemText] 
/// * [testQuoteSCodelistCCode] 
/// * [testQuoteSTermCCode] 
/// * [testCodeQuoteSCodelistCCode] 
/// * [testCodeQuoteSTermCCode] 
/// * [subcategoryQuoteSCodelistCCode] 
/// * [subcategoryQuoteSTermCCode] 
/// * [evaluatorQuoteSCodelistCCode] 
/// * [evaluatorQuoteSTermCCode] 
/// * [freeFormResponseQuoteSDatatype] 
/// * [responseGroup] 
@BuiltValue()
abstract class ExportQrsCsvItemsRow implements Built<ExportQrsCsvItemsRow, ExportQrsCsvItemsRowBuilder> {
  @BuiltValueField(wireName: r'QRS Measure Name')
  String? get qRSMeasureName;

  @BuiltValueField(wireName: r'QRS Measure Label')
  String? get qRSMeasureLabel;

  @BuiltValueField(wireName: r'QRS Measure Type')
  String? get qRSMeasureType;

  @BuiltValueField(wireName: r'Item Sequence')
  String? get itemSequence;

  @BuiltValueField(wireName: r'Test Name')
  String? get testName;

  @BuiltValueField(wireName: r'Item Text')
  String? get itemText;

  @BuiltValueField(wireName: r'Test&#39;s Codelist C-Code')
  String? get testQuoteSCodelistCCode;

  @BuiltValueField(wireName: r'Test&#39;s Term C-Code')
  String? get testQuoteSTermCCode;

  @BuiltValueField(wireName: r'Test Code&#39;s Codelist C-Code')
  String? get testCodeQuoteSCodelistCCode;

  @BuiltValueField(wireName: r'Test Code&#39;s Term C-Code')
  String? get testCodeQuoteSTermCCode;

  @BuiltValueField(wireName: r'Subcategory&#39;s Codelist C-Code')
  String? get subcategoryQuoteSCodelistCCode;

  @BuiltValueField(wireName: r'Subcategory&#39;s Term C-Code')
  String? get subcategoryQuoteSTermCCode;

  @BuiltValueField(wireName: r'Evaluator&#39;s Codelist C-Code')
  String? get evaluatorQuoteSCodelistCCode;

  @BuiltValueField(wireName: r'Evaluator&#39;s Term C-Code')
  String? get evaluatorQuoteSTermCCode;

  @BuiltValueField(wireName: r'Free-form Response&#39;s Datatype')
  String? get freeFormResponseQuoteSDatatype;

  @BuiltValueField(wireName: r'Response Group')
  String? get responseGroup;

  ExportQrsCsvItemsRow._();

  factory ExportQrsCsvItemsRow([void updates(ExportQrsCsvItemsRowBuilder b)]) = _$ExportQrsCsvItemsRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportQrsCsvItemsRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportQrsCsvItemsRow> get serializer => _$ExportQrsCsvItemsRowSerializer();
}

class _$ExportQrsCsvItemsRowSerializer implements PrimitiveSerializer<ExportQrsCsvItemsRow> {
  @override
  final Iterable<Type> types = const [ExportQrsCsvItemsRow, _$ExportQrsCsvItemsRow];

  @override
  final String wireName = r'ExportQrsCsvItemsRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportQrsCsvItemsRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.qRSMeasureName != null) {
      yield r'QRS Measure Name';
      yield serializers.serialize(
        object.qRSMeasureName,
        specifiedType: const FullType(String),
      );
    }
    if (object.qRSMeasureLabel != null) {
      yield r'QRS Measure Label';
      yield serializers.serialize(
        object.qRSMeasureLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.qRSMeasureType != null) {
      yield r'QRS Measure Type';
      yield serializers.serialize(
        object.qRSMeasureType,
        specifiedType: const FullType(String),
      );
    }
    if (object.itemSequence != null) {
      yield r'Item Sequence';
      yield serializers.serialize(
        object.itemSequence,
        specifiedType: const FullType(String),
      );
    }
    if (object.testName != null) {
      yield r'Test Name';
      yield serializers.serialize(
        object.testName,
        specifiedType: const FullType(String),
      );
    }
    if (object.itemText != null) {
      yield r'Item Text';
      yield serializers.serialize(
        object.itemText,
        specifiedType: const FullType(String),
      );
    }
    if (object.testQuoteSCodelistCCode != null) {
      yield r'Test&#39;s Codelist C-Code';
      yield serializers.serialize(
        object.testQuoteSCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.testQuoteSTermCCode != null) {
      yield r'Test&#39;s Term C-Code';
      yield serializers.serialize(
        object.testQuoteSTermCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.testCodeQuoteSCodelistCCode != null) {
      yield r'Test Code&#39;s Codelist C-Code';
      yield serializers.serialize(
        object.testCodeQuoteSCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.testCodeQuoteSTermCCode != null) {
      yield r'Test Code&#39;s Term C-Code';
      yield serializers.serialize(
        object.testCodeQuoteSTermCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.subcategoryQuoteSCodelistCCode != null) {
      yield r'Subcategory&#39;s Codelist C-Code';
      yield serializers.serialize(
        object.subcategoryQuoteSCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.subcategoryQuoteSTermCCode != null) {
      yield r'Subcategory&#39;s Term C-Code';
      yield serializers.serialize(
        object.subcategoryQuoteSTermCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.evaluatorQuoteSCodelistCCode != null) {
      yield r'Evaluator&#39;s Codelist C-Code';
      yield serializers.serialize(
        object.evaluatorQuoteSCodelistCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.evaluatorQuoteSTermCCode != null) {
      yield r'Evaluator&#39;s Term C-Code';
      yield serializers.serialize(
        object.evaluatorQuoteSTermCCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.freeFormResponseQuoteSDatatype != null) {
      yield r'Free-form Response&#39;s Datatype';
      yield serializers.serialize(
        object.freeFormResponseQuoteSDatatype,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseGroup != null) {
      yield r'Response Group';
      yield serializers.serialize(
        object.responseGroup,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportQrsCsvItemsRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportQrsCsvItemsRowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'QRS Measure Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.qRSMeasureName = valueDes;
          break;
        case r'QRS Measure Label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.qRSMeasureLabel = valueDes;
          break;
        case r'QRS Measure Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.qRSMeasureType = valueDes;
          break;
        case r'Item Sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemSequence = valueDes;
          break;
        case r'Test Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testName = valueDes;
          break;
        case r'Item Text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemText = valueDes;
          break;
        case r'Test&#39;s Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testQuoteSCodelistCCode = valueDes;
          break;
        case r'Test&#39;s Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testQuoteSTermCCode = valueDes;
          break;
        case r'Test Code&#39;s Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testCodeQuoteSCodelistCCode = valueDes;
          break;
        case r'Test Code&#39;s Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testCodeQuoteSTermCCode = valueDes;
          break;
        case r'Subcategory&#39;s Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subcategoryQuoteSCodelistCCode = valueDes;
          break;
        case r'Subcategory&#39;s Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subcategoryQuoteSTermCCode = valueDes;
          break;
        case r'Evaluator&#39;s Codelist C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.evaluatorQuoteSCodelistCCode = valueDes;
          break;
        case r'Evaluator&#39;s Term C-Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.evaluatorQuoteSTermCCode = valueDes;
          break;
        case r'Free-form Response&#39;s Datatype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.freeFormResponseQuoteSDatatype = valueDes;
          break;
        case r'Response Group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseGroup = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportQrsCsvItemsRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportQrsCsvItemsRowBuilder();
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

