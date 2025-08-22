@isTest
private class OASRootCdashDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashDomainField rootCdashDomainField1 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField2 = rootCdashDomainField1;
        OASRootCdashDomainField rootCdashDomainField3 = new OASRootCdashDomainField();
        OASRootCdashDomainField rootCdashDomainField4 = rootCdashDomainField3;

        System.assert(rootCdashDomainField1.equals(rootCdashDomainField2));
        System.assert(rootCdashDomainField2.equals(rootCdashDomainField1));
        System.assert(rootCdashDomainField1.equals(rootCdashDomainField1));
        System.assert(rootCdashDomainField3.equals(rootCdashDomainField4));
        System.assert(rootCdashDomainField4.equals(rootCdashDomainField3));
        System.assert(rootCdashDomainField3.equals(rootCdashDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashDomainField rootCdashDomainField1 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField2 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField3 = new OASRootCdashDomainField();
        OASRootCdashDomainField rootCdashDomainField4 = new OASRootCdashDomainField();

        System.assert(rootCdashDomainField1.equals(rootCdashDomainField2));
        System.assert(rootCdashDomainField2.equals(rootCdashDomainField1));
        System.assert(rootCdashDomainField3.equals(rootCdashDomainField4));
        System.assert(rootCdashDomainField4.equals(rootCdashDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashDomainField rootCdashDomainField1 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField2 = new OASRootCdashDomainField();

        System.assertEquals(false, rootCdashDomainField1.equals('foo'));
        System.assertEquals(false, rootCdashDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashDomainField rootCdashDomainField1 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField2 = new OASRootCdashDomainField();
        OASRootCdashDomainField rootCdashDomainField3;

        System.assertEquals(false, rootCdashDomainField1.equals(rootCdashDomainField3));
        System.assertEquals(false, rootCdashDomainField2.equals(rootCdashDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashDomainField rootCdashDomainField1 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField2 = new OASRootCdashDomainField();

        System.assertEquals(rootCdashDomainField1.hashCode(), rootCdashDomainField1.hashCode());
        System.assertEquals(rootCdashDomainField2.hashCode(), rootCdashDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashDomainField rootCdashDomainField1 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField2 = OASRootCdashDomainField.getExample();
        OASRootCdashDomainField rootCdashDomainField3 = new OASRootCdashDomainField();
        OASRootCdashDomainField rootCdashDomainField4 = new OASRootCdashDomainField();

        System.assert(rootCdashDomainField1.equals(rootCdashDomainField2));
        System.assert(rootCdashDomainField3.equals(rootCdashDomainField4));
        System.assertEquals(rootCdashDomainField1.hashCode(), rootCdashDomainField2.hashCode());
        System.assertEquals(rootCdashDomainField3.hashCode(), rootCdashDomainField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootCdashDomainField rootCdashDomainField = new OASRootCdashDomainField();
        Map<String, String> x-property-mappings = rootCdashDomainField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
