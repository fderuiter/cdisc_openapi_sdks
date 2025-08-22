@isTest
private class OASRootCdashigDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashigDomainField rootCdashigDomainField1 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField2 = rootCdashigDomainField1;
        OASRootCdashigDomainField rootCdashigDomainField3 = new OASRootCdashigDomainField();
        OASRootCdashigDomainField rootCdashigDomainField4 = rootCdashigDomainField3;

        System.assert(rootCdashigDomainField1.equals(rootCdashigDomainField2));
        System.assert(rootCdashigDomainField2.equals(rootCdashigDomainField1));
        System.assert(rootCdashigDomainField1.equals(rootCdashigDomainField1));
        System.assert(rootCdashigDomainField3.equals(rootCdashigDomainField4));
        System.assert(rootCdashigDomainField4.equals(rootCdashigDomainField3));
        System.assert(rootCdashigDomainField3.equals(rootCdashigDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashigDomainField rootCdashigDomainField1 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField2 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField3 = new OASRootCdashigDomainField();
        OASRootCdashigDomainField rootCdashigDomainField4 = new OASRootCdashigDomainField();

        System.assert(rootCdashigDomainField1.equals(rootCdashigDomainField2));
        System.assert(rootCdashigDomainField2.equals(rootCdashigDomainField1));
        System.assert(rootCdashigDomainField3.equals(rootCdashigDomainField4));
        System.assert(rootCdashigDomainField4.equals(rootCdashigDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashigDomainField rootCdashigDomainField1 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField2 = new OASRootCdashigDomainField();

        System.assertEquals(false, rootCdashigDomainField1.equals('foo'));
        System.assertEquals(false, rootCdashigDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashigDomainField rootCdashigDomainField1 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField2 = new OASRootCdashigDomainField();
        OASRootCdashigDomainField rootCdashigDomainField3;

        System.assertEquals(false, rootCdashigDomainField1.equals(rootCdashigDomainField3));
        System.assertEquals(false, rootCdashigDomainField2.equals(rootCdashigDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashigDomainField rootCdashigDomainField1 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField2 = new OASRootCdashigDomainField();

        System.assertEquals(rootCdashigDomainField1.hashCode(), rootCdashigDomainField1.hashCode());
        System.assertEquals(rootCdashigDomainField2.hashCode(), rootCdashigDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashigDomainField rootCdashigDomainField1 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField2 = OASRootCdashigDomainField.getExample();
        OASRootCdashigDomainField rootCdashigDomainField3 = new OASRootCdashigDomainField();
        OASRootCdashigDomainField rootCdashigDomainField4 = new OASRootCdashigDomainField();

        System.assert(rootCdashigDomainField1.equals(rootCdashigDomainField2));
        System.assert(rootCdashigDomainField3.equals(rootCdashigDomainField4));
        System.assertEquals(rootCdashigDomainField1.hashCode(), rootCdashigDomainField2.hashCode());
        System.assertEquals(rootCdashigDomainField3.hashCode(), rootCdashigDomainField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootCdashigDomainField rootCdashigDomainField = new OASRootCdashigDomainField();
        Map<String, String> x-property-mappings = rootCdashigDomainField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
