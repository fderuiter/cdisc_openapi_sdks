@isTest
private class OASSdtmDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasets sdtmDatasets1 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets2 = sdtmDatasets1;
        OASSdtmDatasets sdtmDatasets3 = new OASSdtmDatasets();
        OASSdtmDatasets sdtmDatasets4 = sdtmDatasets3;

        System.assert(sdtmDatasets1.equals(sdtmDatasets2));
        System.assert(sdtmDatasets2.equals(sdtmDatasets1));
        System.assert(sdtmDatasets1.equals(sdtmDatasets1));
        System.assert(sdtmDatasets3.equals(sdtmDatasets4));
        System.assert(sdtmDatasets4.equals(sdtmDatasets3));
        System.assert(sdtmDatasets3.equals(sdtmDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasets sdtmDatasets1 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets2 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets3 = new OASSdtmDatasets();
        OASSdtmDatasets sdtmDatasets4 = new OASSdtmDatasets();

        System.assert(sdtmDatasets1.equals(sdtmDatasets2));
        System.assert(sdtmDatasets2.equals(sdtmDatasets1));
        System.assert(sdtmDatasets3.equals(sdtmDatasets4));
        System.assert(sdtmDatasets4.equals(sdtmDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasets sdtmDatasets1 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets2 = new OASSdtmDatasets();

        System.assertEquals(false, sdtmDatasets1.equals('foo'));
        System.assertEquals(false, sdtmDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasets sdtmDatasets1 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets2 = new OASSdtmDatasets();
        OASSdtmDatasets sdtmDatasets3;

        System.assertEquals(false, sdtmDatasets1.equals(sdtmDatasets3));
        System.assertEquals(false, sdtmDatasets2.equals(sdtmDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasets sdtmDatasets1 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets2 = new OASSdtmDatasets();

        System.assertEquals(sdtmDatasets1.hashCode(), sdtmDatasets1.hashCode());
        System.assertEquals(sdtmDatasets2.hashCode(), sdtmDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasets sdtmDatasets1 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets2 = OASSdtmDatasets.getExample();
        OASSdtmDatasets sdtmDatasets3 = new OASSdtmDatasets();
        OASSdtmDatasets sdtmDatasets4 = new OASSdtmDatasets();

        System.assert(sdtmDatasets1.equals(sdtmDatasets2));
        System.assert(sdtmDatasets3.equals(sdtmDatasets4));
        System.assertEquals(sdtmDatasets1.hashCode(), sdtmDatasets2.hashCode());
        System.assertEquals(sdtmDatasets3.hashCode(), sdtmDatasets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmDatasets sdtmDatasets = new OASSdtmDatasets();
        Map<String, String> x-property-mappings = sdtmDatasets.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
