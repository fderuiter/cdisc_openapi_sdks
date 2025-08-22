@isTest
private class OASSdtmClassDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassDatasets sdtmClassDatasets1 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets2 = sdtmClassDatasets1;
        OASSdtmClassDatasets sdtmClassDatasets3 = new OASSdtmClassDatasets();
        OASSdtmClassDatasets sdtmClassDatasets4 = sdtmClassDatasets3;

        System.assert(sdtmClassDatasets1.equals(sdtmClassDatasets2));
        System.assert(sdtmClassDatasets2.equals(sdtmClassDatasets1));
        System.assert(sdtmClassDatasets1.equals(sdtmClassDatasets1));
        System.assert(sdtmClassDatasets3.equals(sdtmClassDatasets4));
        System.assert(sdtmClassDatasets4.equals(sdtmClassDatasets3));
        System.assert(sdtmClassDatasets3.equals(sdtmClassDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassDatasets sdtmClassDatasets1 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets2 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets3 = new OASSdtmClassDatasets();
        OASSdtmClassDatasets sdtmClassDatasets4 = new OASSdtmClassDatasets();

        System.assert(sdtmClassDatasets1.equals(sdtmClassDatasets2));
        System.assert(sdtmClassDatasets2.equals(sdtmClassDatasets1));
        System.assert(sdtmClassDatasets3.equals(sdtmClassDatasets4));
        System.assert(sdtmClassDatasets4.equals(sdtmClassDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassDatasets sdtmClassDatasets1 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets2 = new OASSdtmClassDatasets();

        System.assertEquals(false, sdtmClassDatasets1.equals('foo'));
        System.assertEquals(false, sdtmClassDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassDatasets sdtmClassDatasets1 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets2 = new OASSdtmClassDatasets();
        OASSdtmClassDatasets sdtmClassDatasets3;

        System.assertEquals(false, sdtmClassDatasets1.equals(sdtmClassDatasets3));
        System.assertEquals(false, sdtmClassDatasets2.equals(sdtmClassDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassDatasets sdtmClassDatasets1 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets2 = new OASSdtmClassDatasets();

        System.assertEquals(sdtmClassDatasets1.hashCode(), sdtmClassDatasets1.hashCode());
        System.assertEquals(sdtmClassDatasets2.hashCode(), sdtmClassDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassDatasets sdtmClassDatasets1 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets2 = OASSdtmClassDatasets.getExample();
        OASSdtmClassDatasets sdtmClassDatasets3 = new OASSdtmClassDatasets();
        OASSdtmClassDatasets sdtmClassDatasets4 = new OASSdtmClassDatasets();

        System.assert(sdtmClassDatasets1.equals(sdtmClassDatasets2));
        System.assert(sdtmClassDatasets3.equals(sdtmClassDatasets4));
        System.assertEquals(sdtmClassDatasets1.hashCode(), sdtmClassDatasets2.hashCode());
        System.assertEquals(sdtmClassDatasets3.hashCode(), sdtmClassDatasets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmClassDatasets sdtmClassDatasets = new OASSdtmClassDatasets();
        Map<String, String> x-property-mappings = sdtmClassDatasets.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
