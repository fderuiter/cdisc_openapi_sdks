@isTest
private class OASSendigDatasetVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariables sendigDatasetVariables1 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables2 = sendigDatasetVariables1;
        OASSendigDatasetVariables sendigDatasetVariables3 = new OASSendigDatasetVariables();
        OASSendigDatasetVariables sendigDatasetVariables4 = sendigDatasetVariables3;

        System.assert(sendigDatasetVariables1.equals(sendigDatasetVariables2));
        System.assert(sendigDatasetVariables2.equals(sendigDatasetVariables1));
        System.assert(sendigDatasetVariables1.equals(sendigDatasetVariables1));
        System.assert(sendigDatasetVariables3.equals(sendigDatasetVariables4));
        System.assert(sendigDatasetVariables4.equals(sendigDatasetVariables3));
        System.assert(sendigDatasetVariables3.equals(sendigDatasetVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariables sendigDatasetVariables1 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables2 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables3 = new OASSendigDatasetVariables();
        OASSendigDatasetVariables sendigDatasetVariables4 = new OASSendigDatasetVariables();

        System.assert(sendigDatasetVariables1.equals(sendigDatasetVariables2));
        System.assert(sendigDatasetVariables2.equals(sendigDatasetVariables1));
        System.assert(sendigDatasetVariables3.equals(sendigDatasetVariables4));
        System.assert(sendigDatasetVariables4.equals(sendigDatasetVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariables sendigDatasetVariables1 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables2 = new OASSendigDatasetVariables();

        System.assertEquals(false, sendigDatasetVariables1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariables sendigDatasetVariables1 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables2 = new OASSendigDatasetVariables();
        OASSendigDatasetVariables sendigDatasetVariables3;

        System.assertEquals(false, sendigDatasetVariables1.equals(sendigDatasetVariables3));
        System.assertEquals(false, sendigDatasetVariables2.equals(sendigDatasetVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariables sendigDatasetVariables1 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables2 = new OASSendigDatasetVariables();

        System.assertEquals(sendigDatasetVariables1.hashCode(), sendigDatasetVariables1.hashCode());
        System.assertEquals(sendigDatasetVariables2.hashCode(), sendigDatasetVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariables sendigDatasetVariables1 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables2 = OASSendigDatasetVariables.getExample();
        OASSendigDatasetVariables sendigDatasetVariables3 = new OASSendigDatasetVariables();
        OASSendigDatasetVariables sendigDatasetVariables4 = new OASSendigDatasetVariables();

        System.assert(sendigDatasetVariables1.equals(sendigDatasetVariables2));
        System.assert(sendigDatasetVariables3.equals(sendigDatasetVariables4));
        System.assertEquals(sendigDatasetVariables1.hashCode(), sendigDatasetVariables2.hashCode());
        System.assertEquals(sendigDatasetVariables3.hashCode(), sendigDatasetVariables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigDatasetVariables sendigDatasetVariables = new OASSendigDatasetVariables();
        Map<String, String> x-property-mappings = sendigDatasetVariables.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
