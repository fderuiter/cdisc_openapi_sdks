@isTest
private class OASCdashDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainField cdashDomainField1 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField2 = cdashDomainField1;
        OASCdashDomainField cdashDomainField3 = new OASCdashDomainField();
        OASCdashDomainField cdashDomainField4 = cdashDomainField3;

        System.assert(cdashDomainField1.equals(cdashDomainField2));
        System.assert(cdashDomainField2.equals(cdashDomainField1));
        System.assert(cdashDomainField1.equals(cdashDomainField1));
        System.assert(cdashDomainField3.equals(cdashDomainField4));
        System.assert(cdashDomainField4.equals(cdashDomainField3));
        System.assert(cdashDomainField3.equals(cdashDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainField cdashDomainField1 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField2 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField3 = new OASCdashDomainField();
        OASCdashDomainField cdashDomainField4 = new OASCdashDomainField();

        System.assert(cdashDomainField1.equals(cdashDomainField2));
        System.assert(cdashDomainField2.equals(cdashDomainField1));
        System.assert(cdashDomainField3.equals(cdashDomainField4));
        System.assert(cdashDomainField4.equals(cdashDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainField cdashDomainField1 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField2 = new OASCdashDomainField();

        System.assertEquals(false, cdashDomainField1.equals('foo'));
        System.assertEquals(false, cdashDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainField cdashDomainField1 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField2 = new OASCdashDomainField();
        OASCdashDomainField cdashDomainField3;

        System.assertEquals(false, cdashDomainField1.equals(cdashDomainField3));
        System.assertEquals(false, cdashDomainField2.equals(cdashDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainField cdashDomainField1 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField2 = new OASCdashDomainField();

        System.assertEquals(cdashDomainField1.hashCode(), cdashDomainField1.hashCode());
        System.assertEquals(cdashDomainField2.hashCode(), cdashDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainField cdashDomainField1 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField2 = OASCdashDomainField.getExample();
        OASCdashDomainField cdashDomainField3 = new OASCdashDomainField();
        OASCdashDomainField cdashDomainField4 = new OASCdashDomainField();

        System.assert(cdashDomainField1.equals(cdashDomainField2));
        System.assert(cdashDomainField3.equals(cdashDomainField4));
        System.assertEquals(cdashDomainField1.hashCode(), cdashDomainField2.hashCode());
        System.assertEquals(cdashDomainField3.hashCode(), cdashDomainField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashDomainField cdashDomainField = new OASCdashDomainField();
        Map<String, String> x-property-mappings = cdashDomainField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
