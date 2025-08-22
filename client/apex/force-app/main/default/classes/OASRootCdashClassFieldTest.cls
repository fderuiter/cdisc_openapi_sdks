@isTest
private class OASRootCdashClassFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashClassField rootCdashClassField1 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField2 = rootCdashClassField1;
        OASRootCdashClassField rootCdashClassField3 = new OASRootCdashClassField();
        OASRootCdashClassField rootCdashClassField4 = rootCdashClassField3;

        System.assert(rootCdashClassField1.equals(rootCdashClassField2));
        System.assert(rootCdashClassField2.equals(rootCdashClassField1));
        System.assert(rootCdashClassField1.equals(rootCdashClassField1));
        System.assert(rootCdashClassField3.equals(rootCdashClassField4));
        System.assert(rootCdashClassField4.equals(rootCdashClassField3));
        System.assert(rootCdashClassField3.equals(rootCdashClassField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashClassField rootCdashClassField1 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField2 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField3 = new OASRootCdashClassField();
        OASRootCdashClassField rootCdashClassField4 = new OASRootCdashClassField();

        System.assert(rootCdashClassField1.equals(rootCdashClassField2));
        System.assert(rootCdashClassField2.equals(rootCdashClassField1));
        System.assert(rootCdashClassField3.equals(rootCdashClassField4));
        System.assert(rootCdashClassField4.equals(rootCdashClassField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashClassField rootCdashClassField1 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField2 = new OASRootCdashClassField();

        System.assertEquals(false, rootCdashClassField1.equals('foo'));
        System.assertEquals(false, rootCdashClassField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashClassField rootCdashClassField1 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField2 = new OASRootCdashClassField();
        OASRootCdashClassField rootCdashClassField3;

        System.assertEquals(false, rootCdashClassField1.equals(rootCdashClassField3));
        System.assertEquals(false, rootCdashClassField2.equals(rootCdashClassField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashClassField rootCdashClassField1 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField2 = new OASRootCdashClassField();

        System.assertEquals(rootCdashClassField1.hashCode(), rootCdashClassField1.hashCode());
        System.assertEquals(rootCdashClassField2.hashCode(), rootCdashClassField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashClassField rootCdashClassField1 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField2 = OASRootCdashClassField.getExample();
        OASRootCdashClassField rootCdashClassField3 = new OASRootCdashClassField();
        OASRootCdashClassField rootCdashClassField4 = new OASRootCdashClassField();

        System.assert(rootCdashClassField1.equals(rootCdashClassField2));
        System.assert(rootCdashClassField3.equals(rootCdashClassField4));
        System.assertEquals(rootCdashClassField1.hashCode(), rootCdashClassField2.hashCode());
        System.assertEquals(rootCdashClassField3.hashCode(), rootCdashClassField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootCdashClassField rootCdashClassField = new OASRootCdashClassField();
        Map<String, String> x-property-mappings = rootCdashClassField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
