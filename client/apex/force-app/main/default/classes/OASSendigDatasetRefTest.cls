@isTest
private class OASSendigDatasetRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetRef sendigDatasetRef1 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef2 = sendigDatasetRef1;
        OASSendigDatasetRef sendigDatasetRef3 = new OASSendigDatasetRef();
        OASSendigDatasetRef sendigDatasetRef4 = sendigDatasetRef3;

        System.assert(sendigDatasetRef1.equals(sendigDatasetRef2));
        System.assert(sendigDatasetRef2.equals(sendigDatasetRef1));
        System.assert(sendigDatasetRef1.equals(sendigDatasetRef1));
        System.assert(sendigDatasetRef3.equals(sendigDatasetRef4));
        System.assert(sendigDatasetRef4.equals(sendigDatasetRef3));
        System.assert(sendigDatasetRef3.equals(sendigDatasetRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetRef sendigDatasetRef1 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef2 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef3 = new OASSendigDatasetRef();
        OASSendigDatasetRef sendigDatasetRef4 = new OASSendigDatasetRef();

        System.assert(sendigDatasetRef1.equals(sendigDatasetRef2));
        System.assert(sendigDatasetRef2.equals(sendigDatasetRef1));
        System.assert(sendigDatasetRef3.equals(sendigDatasetRef4));
        System.assert(sendigDatasetRef4.equals(sendigDatasetRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetRef sendigDatasetRef1 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef2 = new OASSendigDatasetRef();

        System.assertEquals(false, sendigDatasetRef1.equals('foo'));
        System.assertEquals(false, sendigDatasetRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetRef sendigDatasetRef1 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef2 = new OASSendigDatasetRef();
        OASSendigDatasetRef sendigDatasetRef3;

        System.assertEquals(false, sendigDatasetRef1.equals(sendigDatasetRef3));
        System.assertEquals(false, sendigDatasetRef2.equals(sendigDatasetRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetRef sendigDatasetRef1 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef2 = new OASSendigDatasetRef();

        System.assertEquals(sendigDatasetRef1.hashCode(), sendigDatasetRef1.hashCode());
        System.assertEquals(sendigDatasetRef2.hashCode(), sendigDatasetRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetRef sendigDatasetRef1 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef2 = OASSendigDatasetRef.getExample();
        OASSendigDatasetRef sendigDatasetRef3 = new OASSendigDatasetRef();
        OASSendigDatasetRef sendigDatasetRef4 = new OASSendigDatasetRef();

        System.assert(sendigDatasetRef1.equals(sendigDatasetRef2));
        System.assert(sendigDatasetRef3.equals(sendigDatasetRef4));
        System.assertEquals(sendigDatasetRef1.hashCode(), sendigDatasetRef2.hashCode());
        System.assertEquals(sendigDatasetRef3.hashCode(), sendigDatasetRef4.hashCode());
    }
}
