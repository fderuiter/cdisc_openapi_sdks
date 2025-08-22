@isTest
private class OASSdtmigDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasets sdtmigDatasets1 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets2 = sdtmigDatasets1;
        OASSdtmigDatasets sdtmigDatasets3 = new OASSdtmigDatasets();
        OASSdtmigDatasets sdtmigDatasets4 = sdtmigDatasets3;

        System.assert(sdtmigDatasets1.equals(sdtmigDatasets2));
        System.assert(sdtmigDatasets2.equals(sdtmigDatasets1));
        System.assert(sdtmigDatasets1.equals(sdtmigDatasets1));
        System.assert(sdtmigDatasets3.equals(sdtmigDatasets4));
        System.assert(sdtmigDatasets4.equals(sdtmigDatasets3));
        System.assert(sdtmigDatasets3.equals(sdtmigDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasets sdtmigDatasets1 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets2 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets3 = new OASSdtmigDatasets();
        OASSdtmigDatasets sdtmigDatasets4 = new OASSdtmigDatasets();

        System.assert(sdtmigDatasets1.equals(sdtmigDatasets2));
        System.assert(sdtmigDatasets2.equals(sdtmigDatasets1));
        System.assert(sdtmigDatasets3.equals(sdtmigDatasets4));
        System.assert(sdtmigDatasets4.equals(sdtmigDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasets sdtmigDatasets1 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets2 = new OASSdtmigDatasets();

        System.assertEquals(false, sdtmigDatasets1.equals('foo'));
        System.assertEquals(false, sdtmigDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasets sdtmigDatasets1 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets2 = new OASSdtmigDatasets();
        OASSdtmigDatasets sdtmigDatasets3;

        System.assertEquals(false, sdtmigDatasets1.equals(sdtmigDatasets3));
        System.assertEquals(false, sdtmigDatasets2.equals(sdtmigDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasets sdtmigDatasets1 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets2 = new OASSdtmigDatasets();

        System.assertEquals(sdtmigDatasets1.hashCode(), sdtmigDatasets1.hashCode());
        System.assertEquals(sdtmigDatasets2.hashCode(), sdtmigDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasets sdtmigDatasets1 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets2 = OASSdtmigDatasets.getExample();
        OASSdtmigDatasets sdtmigDatasets3 = new OASSdtmigDatasets();
        OASSdtmigDatasets sdtmigDatasets4 = new OASSdtmigDatasets();

        System.assert(sdtmigDatasets1.equals(sdtmigDatasets2));
        System.assert(sdtmigDatasets3.equals(sdtmigDatasets4));
        System.assertEquals(sdtmigDatasets1.hashCode(), sdtmigDatasets2.hashCode());
        System.assertEquals(sdtmigDatasets3.hashCode(), sdtmigDatasets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigDatasets sdtmigDatasets = new OASSdtmigDatasets();
        Map<String, String> x-property-mappings = sdtmigDatasets.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
