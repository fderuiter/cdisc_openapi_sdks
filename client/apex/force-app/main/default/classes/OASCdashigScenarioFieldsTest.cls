@isTest
private class OASCdashigScenarioFieldsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioFields cdashigScenarioFields1 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields2 = cdashigScenarioFields1;
        OASCdashigScenarioFields cdashigScenarioFields3 = new OASCdashigScenarioFields();
        OASCdashigScenarioFields cdashigScenarioFields4 = cdashigScenarioFields3;

        System.assert(cdashigScenarioFields1.equals(cdashigScenarioFields2));
        System.assert(cdashigScenarioFields2.equals(cdashigScenarioFields1));
        System.assert(cdashigScenarioFields1.equals(cdashigScenarioFields1));
        System.assert(cdashigScenarioFields3.equals(cdashigScenarioFields4));
        System.assert(cdashigScenarioFields4.equals(cdashigScenarioFields3));
        System.assert(cdashigScenarioFields3.equals(cdashigScenarioFields3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioFields cdashigScenarioFields1 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields2 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields3 = new OASCdashigScenarioFields();
        OASCdashigScenarioFields cdashigScenarioFields4 = new OASCdashigScenarioFields();

        System.assert(cdashigScenarioFields1.equals(cdashigScenarioFields2));
        System.assert(cdashigScenarioFields2.equals(cdashigScenarioFields1));
        System.assert(cdashigScenarioFields3.equals(cdashigScenarioFields4));
        System.assert(cdashigScenarioFields4.equals(cdashigScenarioFields3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioFields cdashigScenarioFields1 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields2 = new OASCdashigScenarioFields();

        System.assertEquals(false, cdashigScenarioFields1.equals('foo'));
        System.assertEquals(false, cdashigScenarioFields2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioFields cdashigScenarioFields1 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields2 = new OASCdashigScenarioFields();
        OASCdashigScenarioFields cdashigScenarioFields3;

        System.assertEquals(false, cdashigScenarioFields1.equals(cdashigScenarioFields3));
        System.assertEquals(false, cdashigScenarioFields2.equals(cdashigScenarioFields3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioFields cdashigScenarioFields1 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields2 = new OASCdashigScenarioFields();

        System.assertEquals(cdashigScenarioFields1.hashCode(), cdashigScenarioFields1.hashCode());
        System.assertEquals(cdashigScenarioFields2.hashCode(), cdashigScenarioFields2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioFields cdashigScenarioFields1 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields2 = OASCdashigScenarioFields.getExample();
        OASCdashigScenarioFields cdashigScenarioFields3 = new OASCdashigScenarioFields();
        OASCdashigScenarioFields cdashigScenarioFields4 = new OASCdashigScenarioFields();

        System.assert(cdashigScenarioFields1.equals(cdashigScenarioFields2));
        System.assert(cdashigScenarioFields3.equals(cdashigScenarioFields4));
        System.assertEquals(cdashigScenarioFields1.hashCode(), cdashigScenarioFields2.hashCode());
        System.assertEquals(cdashigScenarioFields3.hashCode(), cdashigScenarioFields4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigScenarioFields cdashigScenarioFields = new OASCdashigScenarioFields();
        Map<String, String> x-property-mappings = cdashigScenarioFields.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
