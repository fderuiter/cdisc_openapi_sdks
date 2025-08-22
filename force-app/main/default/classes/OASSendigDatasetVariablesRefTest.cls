@isTest
private class OASSendigDatasetVariablesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef1 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef2 = sendigDatasetVariablesRef1;
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef3 = new OASSendigDatasetVariablesRef();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef4 = sendigDatasetVariablesRef3;

        System.assert(sendigDatasetVariablesRef1.equals(sendigDatasetVariablesRef2));
        System.assert(sendigDatasetVariablesRef2.equals(sendigDatasetVariablesRef1));
        System.assert(sendigDatasetVariablesRef1.equals(sendigDatasetVariablesRef1));
        System.assert(sendigDatasetVariablesRef3.equals(sendigDatasetVariablesRef4));
        System.assert(sendigDatasetVariablesRef4.equals(sendigDatasetVariablesRef3));
        System.assert(sendigDatasetVariablesRef3.equals(sendigDatasetVariablesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef1 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef2 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef3 = new OASSendigDatasetVariablesRef();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef4 = new OASSendigDatasetVariablesRef();

        System.assert(sendigDatasetVariablesRef1.equals(sendigDatasetVariablesRef2));
        System.assert(sendigDatasetVariablesRef2.equals(sendigDatasetVariablesRef1));
        System.assert(sendigDatasetVariablesRef3.equals(sendigDatasetVariablesRef4));
        System.assert(sendigDatasetVariablesRef4.equals(sendigDatasetVariablesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef1 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef2 = new OASSendigDatasetVariablesRef();

        System.assertEquals(false, sendigDatasetVariablesRef1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariablesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef1 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef2 = new OASSendigDatasetVariablesRef();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef3;

        System.assertEquals(false, sendigDatasetVariablesRef1.equals(sendigDatasetVariablesRef3));
        System.assertEquals(false, sendigDatasetVariablesRef2.equals(sendigDatasetVariablesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef1 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef2 = new OASSendigDatasetVariablesRef();

        System.assertEquals(sendigDatasetVariablesRef1.hashCode(), sendigDatasetVariablesRef1.hashCode());
        System.assertEquals(sendigDatasetVariablesRef2.hashCode(), sendigDatasetVariablesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef1 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef2 = OASSendigDatasetVariablesRef.getExample();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef3 = new OASSendigDatasetVariablesRef();
        OASSendigDatasetVariablesRef sendigDatasetVariablesRef4 = new OASSendigDatasetVariablesRef();

        System.assert(sendigDatasetVariablesRef1.equals(sendigDatasetVariablesRef2));
        System.assert(sendigDatasetVariablesRef3.equals(sendigDatasetVariablesRef4));
        System.assertEquals(sendigDatasetVariablesRef1.hashCode(), sendigDatasetVariablesRef2.hashCode());
        System.assertEquals(sendigDatasetVariablesRef3.hashCode(), sendigDatasetVariablesRef4.hashCode());
    }
}
