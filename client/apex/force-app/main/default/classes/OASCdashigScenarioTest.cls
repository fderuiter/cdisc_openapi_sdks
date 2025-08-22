@isTest
private class OASCdashigScenarioTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenario cdashigScenario1 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario2 = cdashigScenario1;
        OASCdashigScenario cdashigScenario3 = new OASCdashigScenario();
        OASCdashigScenario cdashigScenario4 = cdashigScenario3;

        System.assert(cdashigScenario1.equals(cdashigScenario2));
        System.assert(cdashigScenario2.equals(cdashigScenario1));
        System.assert(cdashigScenario1.equals(cdashigScenario1));
        System.assert(cdashigScenario3.equals(cdashigScenario4));
        System.assert(cdashigScenario4.equals(cdashigScenario3));
        System.assert(cdashigScenario3.equals(cdashigScenario3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenario cdashigScenario1 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario2 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario3 = new OASCdashigScenario();
        OASCdashigScenario cdashigScenario4 = new OASCdashigScenario();

        System.assert(cdashigScenario1.equals(cdashigScenario2));
        System.assert(cdashigScenario2.equals(cdashigScenario1));
        System.assert(cdashigScenario3.equals(cdashigScenario4));
        System.assert(cdashigScenario4.equals(cdashigScenario3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenario cdashigScenario1 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario2 = new OASCdashigScenario();

        System.assertEquals(false, cdashigScenario1.equals('foo'));
        System.assertEquals(false, cdashigScenario2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenario cdashigScenario1 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario2 = new OASCdashigScenario();
        OASCdashigScenario cdashigScenario3;

        System.assertEquals(false, cdashigScenario1.equals(cdashigScenario3));
        System.assertEquals(false, cdashigScenario2.equals(cdashigScenario3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenario cdashigScenario1 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario2 = new OASCdashigScenario();

        System.assertEquals(cdashigScenario1.hashCode(), cdashigScenario1.hashCode());
        System.assertEquals(cdashigScenario2.hashCode(), cdashigScenario2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenario cdashigScenario1 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario2 = OASCdashigScenario.getExample();
        OASCdashigScenario cdashigScenario3 = new OASCdashigScenario();
        OASCdashigScenario cdashigScenario4 = new OASCdashigScenario();

        System.assert(cdashigScenario1.equals(cdashigScenario2));
        System.assert(cdashigScenario3.equals(cdashigScenario4));
        System.assertEquals(cdashigScenario1.hashCode(), cdashigScenario2.hashCode());
        System.assertEquals(cdashigScenario3.hashCode(), cdashigScenario4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigScenario cdashigScenario = new OASCdashigScenario();
        Map<String, String> x-property-mappings = cdashigScenario.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigScenario cdashigScenario = new OASCdashigScenario();
        System.assertEquals(new List<OASCdashigScenarioField>(), cdashigScenario.fields);
        System.assertEquals(null, cdashigScenario.ordinal);
        System.assertEquals(null, cdashigScenario.domain);
        System.assertEquals(null, cdashigScenario.scenario);
        System.assertEquals(null, cdashigScenario.links);
    }
}
