@isTest
private class OASSendigDatasetsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetsRef sendigDatasetsRef1 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef2 = sendigDatasetsRef1;
        OASSendigDatasetsRef sendigDatasetsRef3 = new OASSendigDatasetsRef();
        OASSendigDatasetsRef sendigDatasetsRef4 = sendigDatasetsRef3;

        System.assert(sendigDatasetsRef1.equals(sendigDatasetsRef2));
        System.assert(sendigDatasetsRef2.equals(sendigDatasetsRef1));
        System.assert(sendigDatasetsRef1.equals(sendigDatasetsRef1));
        System.assert(sendigDatasetsRef3.equals(sendigDatasetsRef4));
        System.assert(sendigDatasetsRef4.equals(sendigDatasetsRef3));
        System.assert(sendigDatasetsRef3.equals(sendigDatasetsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetsRef sendigDatasetsRef1 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef2 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef3 = new OASSendigDatasetsRef();
        OASSendigDatasetsRef sendigDatasetsRef4 = new OASSendigDatasetsRef();

        System.assert(sendigDatasetsRef1.equals(sendigDatasetsRef2));
        System.assert(sendigDatasetsRef2.equals(sendigDatasetsRef1));
        System.assert(sendigDatasetsRef3.equals(sendigDatasetsRef4));
        System.assert(sendigDatasetsRef4.equals(sendigDatasetsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetsRef sendigDatasetsRef1 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef2 = new OASSendigDatasetsRef();

        System.assertEquals(false, sendigDatasetsRef1.equals('foo'));
        System.assertEquals(false, sendigDatasetsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetsRef sendigDatasetsRef1 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef2 = new OASSendigDatasetsRef();
        OASSendigDatasetsRef sendigDatasetsRef3;

        System.assertEquals(false, sendigDatasetsRef1.equals(sendigDatasetsRef3));
        System.assertEquals(false, sendigDatasetsRef2.equals(sendigDatasetsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetsRef sendigDatasetsRef1 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef2 = new OASSendigDatasetsRef();

        System.assertEquals(sendigDatasetsRef1.hashCode(), sendigDatasetsRef1.hashCode());
        System.assertEquals(sendigDatasetsRef2.hashCode(), sendigDatasetsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetsRef sendigDatasetsRef1 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef2 = OASSendigDatasetsRef.getExample();
        OASSendigDatasetsRef sendigDatasetsRef3 = new OASSendigDatasetsRef();
        OASSendigDatasetsRef sendigDatasetsRef4 = new OASSendigDatasetsRef();

        System.assert(sendigDatasetsRef1.equals(sendigDatasetsRef2));
        System.assert(sendigDatasetsRef3.equals(sendigDatasetsRef4));
        System.assertEquals(sendigDatasetsRef1.hashCode(), sendigDatasetsRef2.hashCode());
        System.assertEquals(sendigDatasetsRef3.hashCode(), sendigDatasetsRef4.hashCode());
    }
}
