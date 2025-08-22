@isTest
private class OASSdtmigClassDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassDatasets sdtmigClassDatasets1 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets2 = sdtmigClassDatasets1;
        OASSdtmigClassDatasets sdtmigClassDatasets3 = new OASSdtmigClassDatasets();
        OASSdtmigClassDatasets sdtmigClassDatasets4 = sdtmigClassDatasets3;

        System.assert(sdtmigClassDatasets1.equals(sdtmigClassDatasets2));
        System.assert(sdtmigClassDatasets2.equals(sdtmigClassDatasets1));
        System.assert(sdtmigClassDatasets1.equals(sdtmigClassDatasets1));
        System.assert(sdtmigClassDatasets3.equals(sdtmigClassDatasets4));
        System.assert(sdtmigClassDatasets4.equals(sdtmigClassDatasets3));
        System.assert(sdtmigClassDatasets3.equals(sdtmigClassDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassDatasets sdtmigClassDatasets1 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets2 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets3 = new OASSdtmigClassDatasets();
        OASSdtmigClassDatasets sdtmigClassDatasets4 = new OASSdtmigClassDatasets();

        System.assert(sdtmigClassDatasets1.equals(sdtmigClassDatasets2));
        System.assert(sdtmigClassDatasets2.equals(sdtmigClassDatasets1));
        System.assert(sdtmigClassDatasets3.equals(sdtmigClassDatasets4));
        System.assert(sdtmigClassDatasets4.equals(sdtmigClassDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassDatasets sdtmigClassDatasets1 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets2 = new OASSdtmigClassDatasets();

        System.assertEquals(false, sdtmigClassDatasets1.equals('foo'));
        System.assertEquals(false, sdtmigClassDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassDatasets sdtmigClassDatasets1 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets2 = new OASSdtmigClassDatasets();
        OASSdtmigClassDatasets sdtmigClassDatasets3;

        System.assertEquals(false, sdtmigClassDatasets1.equals(sdtmigClassDatasets3));
        System.assertEquals(false, sdtmigClassDatasets2.equals(sdtmigClassDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassDatasets sdtmigClassDatasets1 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets2 = new OASSdtmigClassDatasets();

        System.assertEquals(sdtmigClassDatasets1.hashCode(), sdtmigClassDatasets1.hashCode());
        System.assertEquals(sdtmigClassDatasets2.hashCode(), sdtmigClassDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassDatasets sdtmigClassDatasets1 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets2 = OASSdtmigClassDatasets.getExample();
        OASSdtmigClassDatasets sdtmigClassDatasets3 = new OASSdtmigClassDatasets();
        OASSdtmigClassDatasets sdtmigClassDatasets4 = new OASSdtmigClassDatasets();

        System.assert(sdtmigClassDatasets1.equals(sdtmigClassDatasets2));
        System.assert(sdtmigClassDatasets3.equals(sdtmigClassDatasets4));
        System.assertEquals(sdtmigClassDatasets1.hashCode(), sdtmigClassDatasets2.hashCode());
        System.assertEquals(sdtmigClassDatasets3.hashCode(), sdtmigClassDatasets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigClassDatasets sdtmigClassDatasets = new OASSdtmigClassDatasets();
        Map<String, String> x-property-mappings = sdtmigClassDatasets.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
