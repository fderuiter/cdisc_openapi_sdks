//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_dataset_variable_ref_version.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/root_sendig_dataset_variable_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_sendig_dataset_variable_links.g.dart';

/// RootSendigDatasetVariableLinks
///
/// Properties:
/// * [self] 
/// * [versions] 
@BuiltValue()
abstract class RootSendigDatasetVariableLinks implements Built<RootSendigDatasetVariableLinks, RootSendigDatasetVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  RootSendigDatasetVariableRef? get self;

  @BuiltValueField(wireName: r'versions')
  BuiltList<SendigDatasetVariableRefVersion>? get versions;

  RootSendigDatasetVariableLinks._();

  factory RootSendigDatasetVariableLinks([void updates(RootSendigDatasetVariableLinksBuilder b)]) = _$RootSendigDatasetVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootSendigDatasetVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootSendigDatasetVariableLinks> get serializer => _$RootSendigDatasetVariableLinksSerializer();
}

class _$RootSendigDatasetVariableLinksSerializer implements PrimitiveSerializer<RootSendigDatasetVariableLinks> {
  @override
  final Iterable<Type> types = const [RootSendigDatasetVariableLinks, _$RootSendigDatasetVariableLinks];

  @override
  final String wireName = r'RootSendigDatasetVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootSendigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootSendigDatasetVariableRef),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(BuiltList, [FullType(SendigDatasetVariableRefVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootSendigDatasetVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RootSendigDatasetVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSendigDatasetVariableRef),
          ) as RootSendigDatasetVariableRef;
          result.self.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigDatasetVariableRefVersion)]),
          ) as BuiltList<SendigDatasetVariableRefVersion>;
          result.versions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RootSendigDatasetVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootSendigDatasetVariableLinksBuilder();
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

