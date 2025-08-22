//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_adam_datastructures_row.g.dart';

/// ExportAdamDatastructuresRow
///
/// Properties:
/// * [version] 
/// * [dataStructureName] 
/// * [datasetName] 
/// * [datasetLabel] 
/// * [datasetDescription] 
/// * [class_] 
@BuiltValue()
abstract class ExportAdamDatastructuresRow implements Built<ExportAdamDatastructuresRow, ExportAdamDatastructuresRowBuilder> {
  @BuiltValueField(wireName: r'Version')
  String? get version;

  @BuiltValueField(wireName: r'Data Structure Name')
  String? get dataStructureName;

  @BuiltValueField(wireName: r'Dataset Name')
  String? get datasetName;

  @BuiltValueField(wireName: r'Dataset Label')
  String? get datasetLabel;

  @BuiltValueField(wireName: r'Dataset Description')
  String? get datasetDescription;

  @BuiltValueField(wireName: r'Class')
  String? get class_;

  ExportAdamDatastructuresRow._();

  factory ExportAdamDatastructuresRow([void updates(ExportAdamDatastructuresRowBuilder b)]) = _$ExportAdamDatastructuresRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportAdamDatastructuresRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportAdamDatastructuresRow> get serializer => _$ExportAdamDatastructuresRowSerializer();
}

class _$ExportAdamDatastructuresRowSerializer implements PrimitiveSerializer<ExportAdamDatastructuresRow> {
  @override
  final Iterable<Type> types = const [ExportAdamDatastructuresRow, _$ExportAdamDatastructuresRow];

  @override
  final String wireName = r'ExportAdamDatastructuresRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportAdamDatastructuresRow object, {
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
    if (object.datasetLabel != null) {
      yield r'Dataset Label';
      yield serializers.serialize(
        object.datasetLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.datasetDescription != null) {
      yield r'Dataset Description';
      yield serializers.serialize(
        object.datasetDescription,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportAdamDatastructuresRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportAdamDatastructuresRowBuilder result,
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
        case r'Dataset Label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetLabel = valueDes;
          break;
        case r'Dataset Description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetDescription = valueDes;
          break;
        case r'Class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportAdamDatastructuresRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportAdamDatastructuresRowBuilder();
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

