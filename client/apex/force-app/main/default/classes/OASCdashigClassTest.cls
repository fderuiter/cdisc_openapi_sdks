@isTest
private class OASCdashigClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClass cdashigClass1 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass2 = cdashigClass1;
        OASCdashigClass cdashigClass3 = new OASCdashigClass();
        OASCdashigClass cdashigClass4 = cdashigClass3;

        System.assert(cdashigClass1.equals(cdashigClass2));
        System.assert(cdashigClass2.equals(cdashigClass1));
        System.assert(cdashigClass1.equals(cdashigClass1));
        System.assert(cdashigClass3.equals(cdashigClass4));
        System.assert(cdashigClass4.equals(cdashigClass3));
        System.assert(cdashigClass3.equals(cdashigClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClass cdashigClass1 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass2 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass3 = new OASCdashigClass();
        OASCdashigClass cdashigClass4 = new OASCdashigClass();

        System.assert(cdashigClass1.equals(cdashigClass2));
        System.assert(cdashigClass2.equals(cdashigClass1));
        System.assert(cdashigClass3.equals(cdashigClass4));
        System.assert(cdashigClass4.equals(cdashigClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClass cdashigClass1 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass2 = new OASCdashigClass();

        System.assertEquals(false, cdashigClass1.equals('foo'));
        System.assertEquals(false, cdashigClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClass cdashigClass1 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass2 = new OASCdashigClass();
        OASCdashigClass cdashigClass3;

        System.assertEquals(false, cdashigClass1.equals(cdashigClass3));
        System.assertEquals(false, cdashigClass2.equals(cdashigClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClass cdashigClass1 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass2 = new OASCdashigClass();

        System.assertEquals(cdashigClass1.hashCode(), cdashigClass1.hashCode());
        System.assertEquals(cdashigClass2.hashCode(), cdashigClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClass cdashigClass1 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass2 = OASCdashigClass.getExample();
        OASCdashigClass cdashigClass3 = new OASCdashigClass();
        OASCdashigClass cdashigClass4 = new OASCdashigClass();

        System.assert(cdashigClass1.equals(cdashigClass2));
        System.assert(cdashigClass3.equals(cdashigClass4));
        System.assertEquals(cdashigClass1.hashCode(), cdashigClass2.hashCode());
        System.assertEquals(cdashigClass3.hashCode(), cdashigClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigClass cdashigClass = new OASCdashigClass();
        Map<String, String> x-property-mappings = cdashigClass.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigClass cdashigClass = new OASCdashigClass();
        System.assertEquals(new List<OASCdashigDomain>(), cdashigClass.domains);
        System.assertEquals(new List<OASCdashigScenario>(), cdashigClass.scenarios);
        System.assertEquals(null, cdashigClass.ordinal);
        System.assertEquals(null, cdashigClass.name);
        System.assertEquals(null, cdashigClass.label);
        System.assertEquals(null, cdashigClass.description);
        System.assertEquals(null, cdashigClass.links);
    }
}
