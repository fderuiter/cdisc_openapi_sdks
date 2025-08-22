@isTest
private class OASCdashigScenarioFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioField cdashigScenarioField1 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField2 = cdashigScenarioField1;
        OASCdashigScenarioField cdashigScenarioField3 = new OASCdashigScenarioField();
        OASCdashigScenarioField cdashigScenarioField4 = cdashigScenarioField3;

        System.assert(cdashigScenarioField1.equals(cdashigScenarioField2));
        System.assert(cdashigScenarioField2.equals(cdashigScenarioField1));
        System.assert(cdashigScenarioField1.equals(cdashigScenarioField1));
        System.assert(cdashigScenarioField3.equals(cdashigScenarioField4));
        System.assert(cdashigScenarioField4.equals(cdashigScenarioField3));
        System.assert(cdashigScenarioField3.equals(cdashigScenarioField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioField cdashigScenarioField1 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField2 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField3 = new OASCdashigScenarioField();
        OASCdashigScenarioField cdashigScenarioField4 = new OASCdashigScenarioField();

        System.assert(cdashigScenarioField1.equals(cdashigScenarioField2));
        System.assert(cdashigScenarioField2.equals(cdashigScenarioField1));
        System.assert(cdashigScenarioField3.equals(cdashigScenarioField4));
        System.assert(cdashigScenarioField4.equals(cdashigScenarioField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioField cdashigScenarioField1 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField2 = new OASCdashigScenarioField();

        System.assertEquals(false, cdashigScenarioField1.equals('foo'));
        System.assertEquals(false, cdashigScenarioField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioField cdashigScenarioField1 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField2 = new OASCdashigScenarioField();
        OASCdashigScenarioField cdashigScenarioField3;

        System.assertEquals(false, cdashigScenarioField1.equals(cdashigScenarioField3));
        System.assertEquals(false, cdashigScenarioField2.equals(cdashigScenarioField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioField cdashigScenarioField1 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField2 = new OASCdashigScenarioField();

        System.assertEquals(cdashigScenarioField1.hashCode(), cdashigScenarioField1.hashCode());
        System.assertEquals(cdashigScenarioField2.hashCode(), cdashigScenarioField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioField cdashigScenarioField1 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField2 = OASCdashigScenarioField.getExample();
        OASCdashigScenarioField cdashigScenarioField3 = new OASCdashigScenarioField();
        OASCdashigScenarioField cdashigScenarioField4 = new OASCdashigScenarioField();

        System.assert(cdashigScenarioField1.equals(cdashigScenarioField2));
        System.assert(cdashigScenarioField3.equals(cdashigScenarioField4));
        System.assertEquals(cdashigScenarioField1.hashCode(), cdashigScenarioField2.hashCode());
        System.assertEquals(cdashigScenarioField3.hashCode(), cdashigScenarioField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigScenarioField cdashigScenarioField = new OASCdashigScenarioField();
        Map<String, String> x-property-mappings = cdashigScenarioField.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
