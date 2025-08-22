@isTest
private class OASSendigClassDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassDatasets sendigClassDatasets1 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets2 = sendigClassDatasets1;
        OASSendigClassDatasets sendigClassDatasets3 = new OASSendigClassDatasets();
        OASSendigClassDatasets sendigClassDatasets4 = sendigClassDatasets3;

        System.assert(sendigClassDatasets1.equals(sendigClassDatasets2));
        System.assert(sendigClassDatasets2.equals(sendigClassDatasets1));
        System.assert(sendigClassDatasets1.equals(sendigClassDatasets1));
        System.assert(sendigClassDatasets3.equals(sendigClassDatasets4));
        System.assert(sendigClassDatasets4.equals(sendigClassDatasets3));
        System.assert(sendigClassDatasets3.equals(sendigClassDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassDatasets sendigClassDatasets1 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets2 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets3 = new OASSendigClassDatasets();
        OASSendigClassDatasets sendigClassDatasets4 = new OASSendigClassDatasets();

        System.assert(sendigClassDatasets1.equals(sendigClassDatasets2));
        System.assert(sendigClassDatasets2.equals(sendigClassDatasets1));
        System.assert(sendigClassDatasets3.equals(sendigClassDatasets4));
        System.assert(sendigClassDatasets4.equals(sendigClassDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassDatasets sendigClassDatasets1 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets2 = new OASSendigClassDatasets();

        System.assertEquals(false, sendigClassDatasets1.equals('foo'));
        System.assertEquals(false, sendigClassDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassDatasets sendigClassDatasets1 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets2 = new OASSendigClassDatasets();
        OASSendigClassDatasets sendigClassDatasets3;

        System.assertEquals(false, sendigClassDatasets1.equals(sendigClassDatasets3));
        System.assertEquals(false, sendigClassDatasets2.equals(sendigClassDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassDatasets sendigClassDatasets1 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets2 = new OASSendigClassDatasets();

        System.assertEquals(sendigClassDatasets1.hashCode(), sendigClassDatasets1.hashCode());
        System.assertEquals(sendigClassDatasets2.hashCode(), sendigClassDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassDatasets sendigClassDatasets1 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets2 = OASSendigClassDatasets.getExample();
        OASSendigClassDatasets sendigClassDatasets3 = new OASSendigClassDatasets();
        OASSendigClassDatasets sendigClassDatasets4 = new OASSendigClassDatasets();

        System.assert(sendigClassDatasets1.equals(sendigClassDatasets2));
        System.assert(sendigClassDatasets3.equals(sendigClassDatasets4));
        System.assertEquals(sendigClassDatasets1.hashCode(), sendigClassDatasets2.hashCode());
        System.assertEquals(sendigClassDatasets3.hashCode(), sendigClassDatasets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigClassDatasets sendigClassDatasets = new OASSendigClassDatasets();
        Map<String, String> x-property-mappings = sendigClassDatasets.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
