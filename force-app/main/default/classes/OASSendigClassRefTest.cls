@isTest
private class OASSendigClassRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassRef sendigClassRef1 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef2 = sendigClassRef1;
        OASSendigClassRef sendigClassRef3 = new OASSendigClassRef();
        OASSendigClassRef sendigClassRef4 = sendigClassRef3;

        System.assert(sendigClassRef1.equals(sendigClassRef2));
        System.assert(sendigClassRef2.equals(sendigClassRef1));
        System.assert(sendigClassRef1.equals(sendigClassRef1));
        System.assert(sendigClassRef3.equals(sendigClassRef4));
        System.assert(sendigClassRef4.equals(sendigClassRef3));
        System.assert(sendigClassRef3.equals(sendigClassRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassRef sendigClassRef1 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef2 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef3 = new OASSendigClassRef();
        OASSendigClassRef sendigClassRef4 = new OASSendigClassRef();

        System.assert(sendigClassRef1.equals(sendigClassRef2));
        System.assert(sendigClassRef2.equals(sendigClassRef1));
        System.assert(sendigClassRef3.equals(sendigClassRef4));
        System.assert(sendigClassRef4.equals(sendigClassRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassRef sendigClassRef1 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef2 = new OASSendigClassRef();

        System.assertEquals(false, sendigClassRef1.equals('foo'));
        System.assertEquals(false, sendigClassRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassRef sendigClassRef1 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef2 = new OASSendigClassRef();
        OASSendigClassRef sendigClassRef3;

        System.assertEquals(false, sendigClassRef1.equals(sendigClassRef3));
        System.assertEquals(false, sendigClassRef2.equals(sendigClassRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassRef sendigClassRef1 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef2 = new OASSendigClassRef();

        System.assertEquals(sendigClassRef1.hashCode(), sendigClassRef1.hashCode());
        System.assertEquals(sendigClassRef2.hashCode(), sendigClassRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassRef sendigClassRef1 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef2 = OASSendigClassRef.getExample();
        OASSendigClassRef sendigClassRef3 = new OASSendigClassRef();
        OASSendigClassRef sendigClassRef4 = new OASSendigClassRef();

        System.assert(sendigClassRef1.equals(sendigClassRef2));
        System.assert(sendigClassRef3.equals(sendigClassRef4));
        System.assertEquals(sendigClassRef1.hashCode(), sendigClassRef2.hashCode());
        System.assertEquals(sendigClassRef3.hashCode(), sendigClassRef4.hashCode());
    }
}
