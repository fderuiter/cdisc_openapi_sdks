//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sendig_datasets_row.g.dart';

/// ExportSendigDatasetsRow
///
/// Properties:
/// * [version] 
/// * [class_] 
/// * [datasetName] 
/// * [datasetLabel] 
/// * [structure] 
@BuiltValue()
abstract class ExportSendigDatasetsRow implements Built<ExportSendigDatasetsRow, ExportSendigDatasetsRowBuilder> {
  @BuiltValueField(wireName: r'Version')
  String? get version;

  @BuiltValueField(wireName: r'Class')
  String? get class_;

  @BuiltValueField(wireName: r'Dataset Name')
  String? get datasetName;

  @BuiltValueField(wireName: r'Dataset Label')
  String? get datasetLabel;

  @BuiltValueField(wireName: r'Structure')
  String? get structure;

  ExportSendigDatasetsRow._();

  factory ExportSendigDatasetsRow([void updates(ExportSendigDatasetsRowBuilder b)]) = _$ExportSendigDatasetsRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSendigDatasetsRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSendigDatasetsRow> get serializer => _$ExportSendigDatasetsRowSerializer();
}

class _$ExportSendigDatasetsRowSerializer implements PrimitiveSerializer<ExportSendigDatasetsRow> {
  @override
  final Iterable<Type> types = const [ExportSendigDatasetsRow, _$ExportSendigDatasetsRow];

  @override
  final String wireName = r'ExportSendigDatasetsRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSendigDatasetsRow object, {
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
    if (object.datasetName != null) {
      yield r'Dataset Name';
      yield serializers.serialize(
        object.datasetName,
        specifiedType: const FullType(String),
      );
    }
    if (object.datasetLabel != null) {
      yield r'Dataset Label';
      yield serializers.serialize(
        object.datasetLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.structure != null) {
      yield r'Structure';
      yield serializers.serialize(
        object.structure,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSendigDatasetsRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSendigDatasetsRowBuilder result,
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
        case r'Dataset Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetName = valueDes;
          break;
        case r'Dataset Label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetLabel = valueDes;
          break;
        case r'Structure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.structure = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportSendigDatasetsRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSendigDatasetsRowBuilder();
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

