@isTest
private class OASSendigDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasets sendigDatasets1 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets2 = sendigDatasets1;
        OASSendigDatasets sendigDatasets3 = new OASSendigDatasets();
        OASSendigDatasets sendigDatasets4 = sendigDatasets3;

        System.assert(sendigDatasets1.equals(sendigDatasets2));
        System.assert(sendigDatasets2.equals(sendigDatasets1));
        System.assert(sendigDatasets1.equals(sendigDatasets1));
        System.assert(sendigDatasets3.equals(sendigDatasets4));
        System.assert(sendigDatasets4.equals(sendigDatasets3));
        System.assert(sendigDatasets3.equals(sendigDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasets sendigDatasets1 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets2 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets3 = new OASSendigDatasets();
        OASSendigDatasets sendigDatasets4 = new OASSendigDatasets();

        System.assert(sendigDatasets1.equals(sendigDatasets2));
        System.assert(sendigDatasets2.equals(sendigDatasets1));
        System.assert(sendigDatasets3.equals(sendigDatasets4));
        System.assert(sendigDatasets4.equals(sendigDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasets sendigDatasets1 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets2 = new OASSendigDatasets();

        System.assertEquals(false, sendigDatasets1.equals('foo'));
        System.assertEquals(false, sendigDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasets sendigDatasets1 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets2 = new OASSendigDatasets();
        OASSendigDatasets sendigDatasets3;

        System.assertEquals(false, sendigDatasets1.equals(sendigDatasets3));
        System.assertEquals(false, sendigDatasets2.equals(sendigDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasets sendigDatasets1 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets2 = new OASSendigDatasets();

        System.assertEquals(sendigDatasets1.hashCode(), sendigDatasets1.hashCode());
        System.assertEquals(sendigDatasets2.hashCode(), sendigDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasets sendigDatasets1 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets2 = OASSendigDatasets.getExample();
        OASSendigDatasets sendigDatasets3 = new OASSendigDatasets();
        OASSendigDatasets sendigDatasets4 = new OASSendigDatasets();

        System.assert(sendigDatasets1.equals(sendigDatasets2));
        System.assert(sendigDatasets3.equals(sendigDatasets4));
        System.assertEquals(sendigDatasets1.hashCode(), sendigDatasets2.hashCode());
        System.assertEquals(sendigDatasets3.hashCode(), sendigDatasets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigDatasets sendigDatasets = new OASSendigDatasets();
        Map<String, String> x-property-mappings = sendigDatasets.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
