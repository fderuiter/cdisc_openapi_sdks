@isTest
private class OASCdashigProductScenariosTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductScenarios cdashigProductScenarios1 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios2 = cdashigProductScenarios1;
        OASCdashigProductScenarios cdashigProductScenarios3 = new OASCdashigProductScenarios();
        OASCdashigProductScenarios cdashigProductScenarios4 = cdashigProductScenarios3;

        System.assert(cdashigProductScenarios1.equals(cdashigProductScenarios2));
        System.assert(cdashigProductScenarios2.equals(cdashigProductScenarios1));
        System.assert(cdashigProductScenarios1.equals(cdashigProductScenarios1));
        System.assert(cdashigProductScenarios3.equals(cdashigProductScenarios4));
        System.assert(cdashigProductScenarios4.equals(cdashigProductScenarios3));
        System.assert(cdashigProductScenarios3.equals(cdashigProductScenarios3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductScenarios cdashigProductScenarios1 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios2 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios3 = new OASCdashigProductScenarios();
        OASCdashigProductScenarios cdashigProductScenarios4 = new OASCdashigProductScenarios();

        System.assert(cdashigProductScenarios1.equals(cdashigProductScenarios2));
        System.assert(cdashigProductScenarios2.equals(cdashigProductScenarios1));
        System.assert(cdashigProductScenarios3.equals(cdashigProductScenarios4));
        System.assert(cdashigProductScenarios4.equals(cdashigProductScenarios3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductScenarios cdashigProductScenarios1 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios2 = new OASCdashigProductScenarios();

        System.assertEquals(false, cdashigProductScenarios1.equals('foo'));
        System.assertEquals(false, cdashigProductScenarios2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductScenarios cdashigProductScenarios1 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios2 = new OASCdashigProductScenarios();
        OASCdashigProductScenarios cdashigProductScenarios3;

        System.assertEquals(false, cdashigProductScenarios1.equals(cdashigProductScenarios3));
        System.assertEquals(false, cdashigProductScenarios2.equals(cdashigProductScenarios3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductScenarios cdashigProductScenarios1 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios2 = new OASCdashigProductScenarios();

        System.assertEquals(cdashigProductScenarios1.hashCode(), cdashigProductScenarios1.hashCode());
        System.assertEquals(cdashigProductScenarios2.hashCode(), cdashigProductScenarios2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductScenarios cdashigProductScenarios1 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios2 = OASCdashigProductScenarios.getExample();
        OASCdashigProductScenarios cdashigProductScenarios3 = new OASCdashigProductScenarios();
        OASCdashigProductScenarios cdashigProductScenarios4 = new OASCdashigProductScenarios();

        System.assert(cdashigProductScenarios1.equals(cdashigProductScenarios2));
        System.assert(cdashigProductScenarios3.equals(cdashigProductScenarios4));
        System.assertEquals(cdashigProductScenarios1.hashCode(), cdashigProductScenarios2.hashCode());
        System.assertEquals(cdashigProductScenarios3.hashCode(), cdashigProductScenarios4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigProductScenarios cdashigProductScenarios = new OASCdashigProductScenarios();
        Map<String, String> x-property-mappings = cdashigProductScenarios.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
