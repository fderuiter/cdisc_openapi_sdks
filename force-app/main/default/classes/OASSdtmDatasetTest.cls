@isTest
private class OASSdtmDatasetTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDataset sdtmDataset1 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset2 = sdtmDataset1;
        OASSdtmDataset sdtmDataset3 = new OASSdtmDataset();
        OASSdtmDataset sdtmDataset4 = sdtmDataset3;

        System.assert(sdtmDataset1.equals(sdtmDataset2));
        System.assert(sdtmDataset2.equals(sdtmDataset1));
        System.assert(sdtmDataset1.equals(sdtmDataset1));
        System.assert(sdtmDataset3.equals(sdtmDataset4));
        System.assert(sdtmDataset4.equals(sdtmDataset3));
        System.assert(sdtmDataset3.equals(sdtmDataset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDataset sdtmDataset1 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset2 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset3 = new OASSdtmDataset();
        OASSdtmDataset sdtmDataset4 = new OASSdtmDataset();

        System.assert(sdtmDataset1.equals(sdtmDataset2));
        System.assert(sdtmDataset2.equals(sdtmDataset1));
        System.assert(sdtmDataset3.equals(sdtmDataset4));
        System.assert(sdtmDataset4.equals(sdtmDataset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDataset sdtmDataset1 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset2 = new OASSdtmDataset();

        System.assertEquals(false, sdtmDataset1.equals('foo'));
        System.assertEquals(false, sdtmDataset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDataset sdtmDataset1 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset2 = new OASSdtmDataset();
        OASSdtmDataset sdtmDataset3;

        System.assertEquals(false, sdtmDataset1.equals(sdtmDataset3));
        System.assertEquals(false, sdtmDataset2.equals(sdtmDataset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDataset sdtmDataset1 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset2 = new OASSdtmDataset();

        System.assertEquals(sdtmDataset1.hashCode(), sdtmDataset1.hashCode());
        System.assertEquals(sdtmDataset2.hashCode(), sdtmDataset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDataset sdtmDataset1 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset2 = OASSdtmDataset.getExample();
        OASSdtmDataset sdtmDataset3 = new OASSdtmDataset();
        OASSdtmDataset sdtmDataset4 = new OASSdtmDataset();

        System.assert(sdtmDataset1.equals(sdtmDataset2));
        System.assert(sdtmDataset3.equals(sdtmDataset4));
        System.assertEquals(sdtmDataset1.hashCode(), sdtmDataset2.hashCode());
        System.assertEquals(sdtmDataset3.hashCode(), sdtmDataset4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmDataset sdtmDataset = new OASSdtmDataset();
        Map<String, String> x-property-mappings = sdtmDataset.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmDataset sdtmDataset = new OASSdtmDataset();
        System.assertEquals(new List<OASSdtmDatasetVariable>(), sdtmDataset.datasetVariables);
        System.assertEquals(null, sdtmDataset.ordinal);
        System.assertEquals(null, sdtmDataset.name);
        System.assertEquals(null, sdtmDataset.label);
        System.assertEquals(null, sdtmDataset.description);
        System.assertEquals(null, sdtmDataset.datasetStructure);
        System.assertEquals(null, sdtmDataset.links);
    }
}
