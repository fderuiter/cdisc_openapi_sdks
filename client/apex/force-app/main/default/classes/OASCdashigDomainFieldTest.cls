@isTest
private class OASCdashigDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainField cdashigDomainField1 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField2 = cdashigDomainField1;
        OASCdashigDomainField cdashigDomainField3 = new OASCdashigDomainField();
        OASCdashigDomainField cdashigDomainField4 = cdashigDomainField3;

        System.assert(cdashigDomainField1.equals(cdashigDomainField2));
        System.assert(cdashigDomainField2.equals(cdashigDomainField1));
        System.assert(cdashigDomainField1.equals(cdashigDomainField1));
        System.assert(cdashigDomainField3.equals(cdashigDomainField4));
        System.assert(cdashigDomainField4.equals(cdashigDomainField3));
        System.assert(cdashigDomainField3.equals(cdashigDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainField cdashigDomainField1 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField2 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField3 = new OASCdashigDomainField();
        OASCdashigDomainField cdashigDomainField4 = new OASCdashigDomainField();

        System.assert(cdashigDomainField1.equals(cdashigDomainField2));
        System.assert(cdashigDomainField2.equals(cdashigDomainField1));
        System.assert(cdashigDomainField3.equals(cdashigDomainField4));
        System.assert(cdashigDomainField4.equals(cdashigDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainField cdashigDomainField1 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField2 = new OASCdashigDomainField();

        System.assertEquals(false, cdashigDomainField1.equals('foo'));
        System.assertEquals(false, cdashigDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainField cdashigDomainField1 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField2 = new OASCdashigDomainField();
        OASCdashigDomainField cdashigDomainField3;

        System.assertEquals(false, cdashigDomainField1.equals(cdashigDomainField3));
        System.assertEquals(false, cdashigDomainField2.equals(cdashigDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainField cdashigDomainField1 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField2 = new OASCdashigDomainField();

        System.assertEquals(cdashigDomainField1.hashCode(), cdashigDomainField1.hashCode());
        System.assertEquals(cdashigDomainField2.hashCode(), cdashigDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainField cdashigDomainField1 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField2 = OASCdashigDomainField.getExample();
        OASCdashigDomainField cdashigDomainField3 = new OASCdashigDomainField();
        OASCdashigDomainField cdashigDomainField4 = new OASCdashigDomainField();

        System.assert(cdashigDomainField1.equals(cdashigDomainField2));
        System.assert(cdashigDomainField3.equals(cdashigDomainField4));
        System.assertEquals(cdashigDomainField1.hashCode(), cdashigDomainField2.hashCode());
        System.assertEquals(cdashigDomainField3.hashCode(), cdashigDomainField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigDomainField cdashigDomainField = new OASCdashigDomainField();
        Map<String, String> x-property-mappings = cdashigDomainField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
