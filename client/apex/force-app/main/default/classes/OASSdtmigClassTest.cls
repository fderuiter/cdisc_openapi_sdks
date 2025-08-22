@isTest
private class OASSdtmigClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClass sdtmigClass1 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass2 = sdtmigClass1;
        OASSdtmigClass sdtmigClass3 = new OASSdtmigClass();
        OASSdtmigClass sdtmigClass4 = sdtmigClass3;

        System.assert(sdtmigClass1.equals(sdtmigClass2));
        System.assert(sdtmigClass2.equals(sdtmigClass1));
        System.assert(sdtmigClass1.equals(sdtmigClass1));
        System.assert(sdtmigClass3.equals(sdtmigClass4));
        System.assert(sdtmigClass4.equals(sdtmigClass3));
        System.assert(sdtmigClass3.equals(sdtmigClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClass sdtmigClass1 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass2 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass3 = new OASSdtmigClass();
        OASSdtmigClass sdtmigClass4 = new OASSdtmigClass();

        System.assert(sdtmigClass1.equals(sdtmigClass2));
        System.assert(sdtmigClass2.equals(sdtmigClass1));
        System.assert(sdtmigClass3.equals(sdtmigClass4));
        System.assert(sdtmigClass4.equals(sdtmigClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClass sdtmigClass1 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass2 = new OASSdtmigClass();

        System.assertEquals(false, sdtmigClass1.equals('foo'));
        System.assertEquals(false, sdtmigClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClass sdtmigClass1 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass2 = new OASSdtmigClass();
        OASSdtmigClass sdtmigClass3;

        System.assertEquals(false, sdtmigClass1.equals(sdtmigClass3));
        System.assertEquals(false, sdtmigClass2.equals(sdtmigClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClass sdtmigClass1 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass2 = new OASSdtmigClass();

        System.assertEquals(sdtmigClass1.hashCode(), sdtmigClass1.hashCode());
        System.assertEquals(sdtmigClass2.hashCode(), sdtmigClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClass sdtmigClass1 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass2 = OASSdtmigClass.getExample();
        OASSdtmigClass sdtmigClass3 = new OASSdtmigClass();
        OASSdtmigClass sdtmigClass4 = new OASSdtmigClass();

        System.assert(sdtmigClass1.equals(sdtmigClass2));
        System.assert(sdtmigClass3.equals(sdtmigClass4));
        System.assertEquals(sdtmigClass1.hashCode(), sdtmigClass2.hashCode());
        System.assertEquals(sdtmigClass3.hashCode(), sdtmigClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigClass sdtmigClass = new OASSdtmigClass();
        Map<String, String> x-property-mappings = sdtmigClass.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigClass sdtmigClass = new OASSdtmigClass();
        System.assertEquals(new List<OASSdtmigDataset>(), sdtmigClass.datasets);
        System.assertEquals(null, sdtmigClass.ordinal);
        System.assertEquals(null, sdtmigClass.name);
        System.assertEquals(null, sdtmigClass.label);
        System.assertEquals(null, sdtmigClass.description);
        System.assertEquals(null, sdtmigClass.links);
    }
}
