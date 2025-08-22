@isTest
private class OASSendigClassDatasetsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassDatasetsRef sendigClassDatasetsRef1 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef2 = sendigClassDatasetsRef1;
        OASSendigClassDatasetsRef sendigClassDatasetsRef3 = new OASSendigClassDatasetsRef();
        OASSendigClassDatasetsRef sendigClassDatasetsRef4 = sendigClassDatasetsRef3;

        System.assert(sendigClassDatasetsRef1.equals(sendigClassDatasetsRef2));
        System.assert(sendigClassDatasetsRef2.equals(sendigClassDatasetsRef1));
        System.assert(sendigClassDatasetsRef1.equals(sendigClassDatasetsRef1));
        System.assert(sendigClassDatasetsRef3.equals(sendigClassDatasetsRef4));
        System.assert(sendigClassDatasetsRef4.equals(sendigClassDatasetsRef3));
        System.assert(sendigClassDatasetsRef3.equals(sendigClassDatasetsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassDatasetsRef sendigClassDatasetsRef1 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef2 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef3 = new OASSendigClassDatasetsRef();
        OASSendigClassDatasetsRef sendigClassDatasetsRef4 = new OASSendigClassDatasetsRef();

        System.assert(sendigClassDatasetsRef1.equals(sendigClassDatasetsRef2));
        System.assert(sendigClassDatasetsRef2.equals(sendigClassDatasetsRef1));
        System.assert(sendigClassDatasetsRef3.equals(sendigClassDatasetsRef4));
        System.assert(sendigClassDatasetsRef4.equals(sendigClassDatasetsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassDatasetsRef sendigClassDatasetsRef1 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef2 = new OASSendigClassDatasetsRef();

        System.assertEquals(false, sendigClassDatasetsRef1.equals('foo'));
        System.assertEquals(false, sendigClassDatasetsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassDatasetsRef sendigClassDatasetsRef1 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef2 = new OASSendigClassDatasetsRef();
        OASSendigClassDatasetsRef sendigClassDatasetsRef3;

        System.assertEquals(false, sendigClassDatasetsRef1.equals(sendigClassDatasetsRef3));
        System.assertEquals(false, sendigClassDatasetsRef2.equals(sendigClassDatasetsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassDatasetsRef sendigClassDatasetsRef1 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef2 = new OASSendigClassDatasetsRef();

        System.assertEquals(sendigClassDatasetsRef1.hashCode(), sendigClassDatasetsRef1.hashCode());
        System.assertEquals(sendigClassDatasetsRef2.hashCode(), sendigClassDatasetsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassDatasetsRef sendigClassDatasetsRef1 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef2 = OASSendigClassDatasetsRef.getExample();
        OASSendigClassDatasetsRef sendigClassDatasetsRef3 = new OASSendigClassDatasetsRef();
        OASSendigClassDatasetsRef sendigClassDatasetsRef4 = new OASSendigClassDatasetsRef();

        System.assert(sendigClassDatasetsRef1.equals(sendigClassDatasetsRef2));
        System.assert(sendigClassDatasetsRef3.equals(sendigClassDatasetsRef4));
        System.assertEquals(sendigClassDatasetsRef1.hashCode(), sendigClassDatasetsRef2.hashCode());
        System.assertEquals(sendigClassDatasetsRef3.hashCode(), sendigClassDatasetsRef4.hashCode());
    }
}
