@isTest
private class OASRootCdashigScenarioFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashigScenarioField rootCdashigScenarioField1 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField2 = rootCdashigScenarioField1;
        OASRootCdashigScenarioField rootCdashigScenarioField3 = new OASRootCdashigScenarioField();
        OASRootCdashigScenarioField rootCdashigScenarioField4 = rootCdashigScenarioField3;

        System.assert(rootCdashigScenarioField1.equals(rootCdashigScenarioField2));
        System.assert(rootCdashigScenarioField2.equals(rootCdashigScenarioField1));
        System.assert(rootCdashigScenarioField1.equals(rootCdashigScenarioField1));
        System.assert(rootCdashigScenarioField3.equals(rootCdashigScenarioField4));
        System.assert(rootCdashigScenarioField4.equals(rootCdashigScenarioField3));
        System.assert(rootCdashigScenarioField3.equals(rootCdashigScenarioField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashigScenarioField rootCdashigScenarioField1 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField2 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField3 = new OASRootCdashigScenarioField();
        OASRootCdashigScenarioField rootCdashigScenarioField4 = new OASRootCdashigScenarioField();

        System.assert(rootCdashigScenarioField1.equals(rootCdashigScenarioField2));
        System.assert(rootCdashigScenarioField2.equals(rootCdashigScenarioField1));
        System.assert(rootCdashigScenarioField3.equals(rootCdashigScenarioField4));
        System.assert(rootCdashigScenarioField4.equals(rootCdashigScenarioField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashigScenarioField rootCdashigScenarioField1 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField2 = new OASRootCdashigScenarioField();

        System.assertEquals(false, rootCdashigScenarioField1.equals('foo'));
        System.assertEquals(false, rootCdashigScenarioField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashigScenarioField rootCdashigScenarioField1 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField2 = new OASRootCdashigScenarioField();
        OASRootCdashigScenarioField rootCdashigScenarioField3;

        System.assertEquals(false, rootCdashigScenarioField1.equals(rootCdashigScenarioField3));
        System.assertEquals(false, rootCdashigScenarioField2.equals(rootCdashigScenarioField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashigScenarioField rootCdashigScenarioField1 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField2 = new OASRootCdashigScenarioField();

        System.assertEquals(rootCdashigScenarioField1.hashCode(), rootCdashigScenarioField1.hashCode());
        System.assertEquals(rootCdashigScenarioField2.hashCode(), rootCdashigScenarioField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashigScenarioField rootCdashigScenarioField1 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField2 = OASRootCdashigScenarioField.getExample();
        OASRootCdashigScenarioField rootCdashigScenarioField3 = new OASRootCdashigScenarioField();
        OASRootCdashigScenarioField rootCdashigScenarioField4 = new OASRootCdashigScenarioField();

        System.assert(rootCdashigScenarioField1.equals(rootCdashigScenarioField2));
        System.assert(rootCdashigScenarioField3.equals(rootCdashigScenarioField4));
        System.assertEquals(rootCdashigScenarioField1.hashCode(), rootCdashigScenarioField2.hashCode());
        System.assertEquals(rootCdashigScenarioField3.hashCode(), rootCdashigScenarioField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootCdashigScenarioField rootCdashigScenarioField = new OASRootCdashigScenarioField();
        Map<String, String> x-property-mappings = rootCdashigScenarioField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
