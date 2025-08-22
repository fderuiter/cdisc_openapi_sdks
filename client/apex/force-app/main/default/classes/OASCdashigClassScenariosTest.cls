@isTest
private class OASCdashigClassScenariosTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassScenarios cdashigClassScenarios1 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios2 = cdashigClassScenarios1;
        OASCdashigClassScenarios cdashigClassScenarios3 = new OASCdashigClassScenarios();
        OASCdashigClassScenarios cdashigClassScenarios4 = cdashigClassScenarios3;

        System.assert(cdashigClassScenarios1.equals(cdashigClassScenarios2));
        System.assert(cdashigClassScenarios2.equals(cdashigClassScenarios1));
        System.assert(cdashigClassScenarios1.equals(cdashigClassScenarios1));
        System.assert(cdashigClassScenarios3.equals(cdashigClassScenarios4));
        System.assert(cdashigClassScenarios4.equals(cdashigClassScenarios3));
        System.assert(cdashigClassScenarios3.equals(cdashigClassScenarios3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassScenarios cdashigClassScenarios1 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios2 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios3 = new OASCdashigClassScenarios();
        OASCdashigClassScenarios cdashigClassScenarios4 = new OASCdashigClassScenarios();

        System.assert(cdashigClassScenarios1.equals(cdashigClassScenarios2));
        System.assert(cdashigClassScenarios2.equals(cdashigClassScenarios1));
        System.assert(cdashigClassScenarios3.equals(cdashigClassScenarios4));
        System.assert(cdashigClassScenarios4.equals(cdashigClassScenarios3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassScenarios cdashigClassScenarios1 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios2 = new OASCdashigClassScenarios();

        System.assertEquals(false, cdashigClassScenarios1.equals('foo'));
        System.assertEquals(false, cdashigClassScenarios2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassScenarios cdashigClassScenarios1 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios2 = new OASCdashigClassScenarios();
        OASCdashigClassScenarios cdashigClassScenarios3;

        System.assertEquals(false, cdashigClassScenarios1.equals(cdashigClassScenarios3));
        System.assertEquals(false, cdashigClassScenarios2.equals(cdashigClassScenarios3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassScenarios cdashigClassScenarios1 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios2 = new OASCdashigClassScenarios();

        System.assertEquals(cdashigClassScenarios1.hashCode(), cdashigClassScenarios1.hashCode());
        System.assertEquals(cdashigClassScenarios2.hashCode(), cdashigClassScenarios2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassScenarios cdashigClassScenarios1 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios2 = OASCdashigClassScenarios.getExample();
        OASCdashigClassScenarios cdashigClassScenarios3 = new OASCdashigClassScenarios();
        OASCdashigClassScenarios cdashigClassScenarios4 = new OASCdashigClassScenarios();

        System.assert(cdashigClassScenarios1.equals(cdashigClassScenarios2));
        System.assert(cdashigClassScenarios3.equals(cdashigClassScenarios4));
        System.assertEquals(cdashigClassScenarios1.hashCode(), cdashigClassScenarios2.hashCode());
        System.assertEquals(cdashigClassScenarios3.hashCode(), cdashigClassScenarios4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigClassScenarios cdashigClassScenarios = new OASCdashigClassScenarios();
        Map<String, String> x-property-mappings = cdashigClassScenarios.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
