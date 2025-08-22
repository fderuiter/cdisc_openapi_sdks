@isTest
private class OASSdtmigDatasetTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDataset sdtmigDataset1 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset2 = sdtmigDataset1;
        OASSdtmigDataset sdtmigDataset3 = new OASSdtmigDataset();
        OASSdtmigDataset sdtmigDataset4 = sdtmigDataset3;

        System.assert(sdtmigDataset1.equals(sdtmigDataset2));
        System.assert(sdtmigDataset2.equals(sdtmigDataset1));
        System.assert(sdtmigDataset1.equals(sdtmigDataset1));
        System.assert(sdtmigDataset3.equals(sdtmigDataset4));
        System.assert(sdtmigDataset4.equals(sdtmigDataset3));
        System.assert(sdtmigDataset3.equals(sdtmigDataset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDataset sdtmigDataset1 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset2 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset3 = new OASSdtmigDataset();
        OASSdtmigDataset sdtmigDataset4 = new OASSdtmigDataset();

        System.assert(sdtmigDataset1.equals(sdtmigDataset2));
        System.assert(sdtmigDataset2.equals(sdtmigDataset1));
        System.assert(sdtmigDataset3.equals(sdtmigDataset4));
        System.assert(sdtmigDataset4.equals(sdtmigDataset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDataset sdtmigDataset1 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset2 = new OASSdtmigDataset();

        System.assertEquals(false, sdtmigDataset1.equals('foo'));
        System.assertEquals(false, sdtmigDataset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDataset sdtmigDataset1 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset2 = new OASSdtmigDataset();
        OASSdtmigDataset sdtmigDataset3;

        System.assertEquals(false, sdtmigDataset1.equals(sdtmigDataset3));
        System.assertEquals(false, sdtmigDataset2.equals(sdtmigDataset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDataset sdtmigDataset1 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset2 = new OASSdtmigDataset();

        System.assertEquals(sdtmigDataset1.hashCode(), sdtmigDataset1.hashCode());
        System.assertEquals(sdtmigDataset2.hashCode(), sdtmigDataset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDataset sdtmigDataset1 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset2 = OASSdtmigDataset.getExample();
        OASSdtmigDataset sdtmigDataset3 = new OASSdtmigDataset();
        OASSdtmigDataset sdtmigDataset4 = new OASSdtmigDataset();

        System.assert(sdtmigDataset1.equals(sdtmigDataset2));
        System.assert(sdtmigDataset3.equals(sdtmigDataset4));
        System.assertEquals(sdtmigDataset1.hashCode(), sdtmigDataset2.hashCode());
        System.assertEquals(sdtmigDataset3.hashCode(), sdtmigDataset4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigDataset sdtmigDataset = new OASSdtmigDataset();
        Map<String, String> x-property-mappings = sdtmigDataset.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigDataset sdtmigDataset = new OASSdtmigDataset();
        System.assertEquals(new List<OASSdtmigDatasetVariable>(), sdtmigDataset.datasetVariables);
        System.assertEquals(null, sdtmigDataset.ordinal);
        System.assertEquals(null, sdtmigDataset.name);
        System.assertEquals(null, sdtmigDataset.label);
        System.assertEquals(null, sdtmigDataset.description);
        System.assertEquals(null, sdtmigDataset.datasetStructure);
        System.assertEquals(null, sdtmigDataset.links);
    }
}
