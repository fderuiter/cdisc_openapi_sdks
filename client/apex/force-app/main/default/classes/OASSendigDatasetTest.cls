@isTest
private class OASSendigDatasetTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDataset sendigDataset1 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset2 = sendigDataset1;
        OASSendigDataset sendigDataset3 = new OASSendigDataset();
        OASSendigDataset sendigDataset4 = sendigDataset3;

        System.assert(sendigDataset1.equals(sendigDataset2));
        System.assert(sendigDataset2.equals(sendigDataset1));
        System.assert(sendigDataset1.equals(sendigDataset1));
        System.assert(sendigDataset3.equals(sendigDataset4));
        System.assert(sendigDataset4.equals(sendigDataset3));
        System.assert(sendigDataset3.equals(sendigDataset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDataset sendigDataset1 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset2 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset3 = new OASSendigDataset();
        OASSendigDataset sendigDataset4 = new OASSendigDataset();

        System.assert(sendigDataset1.equals(sendigDataset2));
        System.assert(sendigDataset2.equals(sendigDataset1));
        System.assert(sendigDataset3.equals(sendigDataset4));
        System.assert(sendigDataset4.equals(sendigDataset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDataset sendigDataset1 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset2 = new OASSendigDataset();

        System.assertEquals(false, sendigDataset1.equals('foo'));
        System.assertEquals(false, sendigDataset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDataset sendigDataset1 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset2 = new OASSendigDataset();
        OASSendigDataset sendigDataset3;

        System.assertEquals(false, sendigDataset1.equals(sendigDataset3));
        System.assertEquals(false, sendigDataset2.equals(sendigDataset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDataset sendigDataset1 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset2 = new OASSendigDataset();

        System.assertEquals(sendigDataset1.hashCode(), sendigDataset1.hashCode());
        System.assertEquals(sendigDataset2.hashCode(), sendigDataset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDataset sendigDataset1 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset2 = OASSendigDataset.getExample();
        OASSendigDataset sendigDataset3 = new OASSendigDataset();
        OASSendigDataset sendigDataset4 = new OASSendigDataset();

        System.assert(sendigDataset1.equals(sendigDataset2));
        System.assert(sendigDataset3.equals(sendigDataset4));
        System.assertEquals(sendigDataset1.hashCode(), sendigDataset2.hashCode());
        System.assertEquals(sendigDataset3.hashCode(), sendigDataset4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigDataset sendigDataset = new OASSendigDataset();
        Map<String, String> x-property-mappings = sendigDataset.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigDataset sendigDataset = new OASSendigDataset();
        System.assertEquals(new List<OASSendigDatasetVariable>(), sendigDataset.datasetVariables);
        System.assertEquals(null, sendigDataset.ordinal);
        System.assertEquals(null, sendigDataset.name);
        System.assertEquals(null, sendigDataset.label);
        System.assertEquals(null, sendigDataset.description);
        System.assertEquals(null, sendigDataset.datasetStructure);
        System.assertEquals(null, sendigDataset.links);
    }
}
