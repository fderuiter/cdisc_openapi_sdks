@isTest
private class OASSdtmClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClass sdtmClass1 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass2 = sdtmClass1;
        OASSdtmClass sdtmClass3 = new OASSdtmClass();
        OASSdtmClass sdtmClass4 = sdtmClass3;

        System.assert(sdtmClass1.equals(sdtmClass2));
        System.assert(sdtmClass2.equals(sdtmClass1));
        System.assert(sdtmClass1.equals(sdtmClass1));
        System.assert(sdtmClass3.equals(sdtmClass4));
        System.assert(sdtmClass4.equals(sdtmClass3));
        System.assert(sdtmClass3.equals(sdtmClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClass sdtmClass1 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass2 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass3 = new OASSdtmClass();
        OASSdtmClass sdtmClass4 = new OASSdtmClass();

        System.assert(sdtmClass1.equals(sdtmClass2));
        System.assert(sdtmClass2.equals(sdtmClass1));
        System.assert(sdtmClass3.equals(sdtmClass4));
        System.assert(sdtmClass4.equals(sdtmClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClass sdtmClass1 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass2 = new OASSdtmClass();

        System.assertEquals(false, sdtmClass1.equals('foo'));
        System.assertEquals(false, sdtmClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClass sdtmClass1 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass2 = new OASSdtmClass();
        OASSdtmClass sdtmClass3;

        System.assertEquals(false, sdtmClass1.equals(sdtmClass3));
        System.assertEquals(false, sdtmClass2.equals(sdtmClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClass sdtmClass1 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass2 = new OASSdtmClass();

        System.assertEquals(sdtmClass1.hashCode(), sdtmClass1.hashCode());
        System.assertEquals(sdtmClass2.hashCode(), sdtmClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClass sdtmClass1 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass2 = OASSdtmClass.getExample();
        OASSdtmClass sdtmClass3 = new OASSdtmClass();
        OASSdtmClass sdtmClass4 = new OASSdtmClass();

        System.assert(sdtmClass1.equals(sdtmClass2));
        System.assert(sdtmClass3.equals(sdtmClass4));
        System.assertEquals(sdtmClass1.hashCode(), sdtmClass2.hashCode());
        System.assertEquals(sdtmClass3.hashCode(), sdtmClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmClass sdtmClass = new OASSdtmClass();
        Map<String, String> x-property-mappings = sdtmClass.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmClass sdtmClass = new OASSdtmClass();
        System.assertEquals(new List<OASSdtmClassVariable>(), sdtmClass.classVariables);
        System.assertEquals(new List<OASSdtmDataset>(), sdtmClass.datasets);
        System.assertEquals(null, sdtmClass.ordinal);
        System.assertEquals(null, sdtmClass.name);
        System.assertEquals(null, sdtmClass.label);
        System.assertEquals(null, sdtmClass.description);
        System.assertEquals(null, sdtmClass.links);
    }
}
