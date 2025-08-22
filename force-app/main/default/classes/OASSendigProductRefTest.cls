@isTest
private class OASSendigProductRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigProductRef sendigProductRef1 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef2 = sendigProductRef1;
        OASSendigProductRef sendigProductRef3 = new OASSendigProductRef();
        OASSendigProductRef sendigProductRef4 = sendigProductRef3;

        System.assert(sendigProductRef1.equals(sendigProductRef2));
        System.assert(sendigProductRef2.equals(sendigProductRef1));
        System.assert(sendigProductRef1.equals(sendigProductRef1));
        System.assert(sendigProductRef3.equals(sendigProductRef4));
        System.assert(sendigProductRef4.equals(sendigProductRef3));
        System.assert(sendigProductRef3.equals(sendigProductRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigProductRef sendigProductRef1 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef2 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef3 = new OASSendigProductRef();
        OASSendigProductRef sendigProductRef4 = new OASSendigProductRef();

        System.assert(sendigProductRef1.equals(sendigProductRef2));
        System.assert(sendigProductRef2.equals(sendigProductRef1));
        System.assert(sendigProductRef3.equals(sendigProductRef4));
        System.assert(sendigProductRef4.equals(sendigProductRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigProductRef sendigProductRef1 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef2 = new OASSendigProductRef();

        System.assertEquals(false, sendigProductRef1.equals('foo'));
        System.assertEquals(false, sendigProductRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigProductRef sendigProductRef1 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef2 = new OASSendigProductRef();
        OASSendigProductRef sendigProductRef3;

        System.assertEquals(false, sendigProductRef1.equals(sendigProductRef3));
        System.assertEquals(false, sendigProductRef2.equals(sendigProductRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigProductRef sendigProductRef1 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef2 = new OASSendigProductRef();

        System.assertEquals(sendigProductRef1.hashCode(), sendigProductRef1.hashCode());
        System.assertEquals(sendigProductRef2.hashCode(), sendigProductRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigProductRef sendigProductRef1 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef2 = OASSendigProductRef.getExample();
        OASSendigProductRef sendigProductRef3 = new OASSendigProductRef();
        OASSendigProductRef sendigProductRef4 = new OASSendigProductRef();

        System.assert(sendigProductRef1.equals(sendigProductRef2));
        System.assert(sendigProductRef3.equals(sendigProductRef4));
        System.assertEquals(sendigProductRef1.hashCode(), sendigProductRef2.hashCode());
        System.assertEquals(sendigProductRef3.hashCode(), sendigProductRef4.hashCode());
    }
}
