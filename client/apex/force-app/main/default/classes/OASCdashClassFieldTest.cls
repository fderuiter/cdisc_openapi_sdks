@isTest
private class OASCdashClassFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassField cdashClassField1 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField2 = cdashClassField1;
        OASCdashClassField cdashClassField3 = new OASCdashClassField();
        OASCdashClassField cdashClassField4 = cdashClassField3;

        System.assert(cdashClassField1.equals(cdashClassField2));
        System.assert(cdashClassField2.equals(cdashClassField1));
        System.assert(cdashClassField1.equals(cdashClassField1));
        System.assert(cdashClassField3.equals(cdashClassField4));
        System.assert(cdashClassField4.equals(cdashClassField3));
        System.assert(cdashClassField3.equals(cdashClassField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassField cdashClassField1 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField2 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField3 = new OASCdashClassField();
        OASCdashClassField cdashClassField4 = new OASCdashClassField();

        System.assert(cdashClassField1.equals(cdashClassField2));
        System.assert(cdashClassField2.equals(cdashClassField1));
        System.assert(cdashClassField3.equals(cdashClassField4));
        System.assert(cdashClassField4.equals(cdashClassField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassField cdashClassField1 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField2 = new OASCdashClassField();

        System.assertEquals(false, cdashClassField1.equals('foo'));
        System.assertEquals(false, cdashClassField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassField cdashClassField1 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField2 = new OASCdashClassField();
        OASCdashClassField cdashClassField3;

        System.assertEquals(false, cdashClassField1.equals(cdashClassField3));
        System.assertEquals(false, cdashClassField2.equals(cdashClassField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassField cdashClassField1 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField2 = new OASCdashClassField();

        System.assertEquals(cdashClassField1.hashCode(), cdashClassField1.hashCode());
        System.assertEquals(cdashClassField2.hashCode(), cdashClassField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassField cdashClassField1 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField2 = OASCdashClassField.getExample();
        OASCdashClassField cdashClassField3 = new OASCdashClassField();
        OASCdashClassField cdashClassField4 = new OASCdashClassField();

        System.assert(cdashClassField1.equals(cdashClassField2));
        System.assert(cdashClassField3.equals(cdashClassField4));
        System.assertEquals(cdashClassField1.hashCode(), cdashClassField2.hashCode());
        System.assertEquals(cdashClassField3.hashCode(), cdashClassField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashClassField cdashClassField = new OASCdashClassField();
        Map<String, String> x-property-mappings = cdashClassField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
