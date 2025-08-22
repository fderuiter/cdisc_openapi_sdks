@isTest
private class OASSendigClassesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassesRef sendigClassesRef1 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef2 = sendigClassesRef1;
        OASSendigClassesRef sendigClassesRef3 = new OASSendigClassesRef();
        OASSendigClassesRef sendigClassesRef4 = sendigClassesRef3;

        System.assert(sendigClassesRef1.equals(sendigClassesRef2));
        System.assert(sendigClassesRef2.equals(sendigClassesRef1));
        System.assert(sendigClassesRef1.equals(sendigClassesRef1));
        System.assert(sendigClassesRef3.equals(sendigClassesRef4));
        System.assert(sendigClassesRef4.equals(sendigClassesRef3));
        System.assert(sendigClassesRef3.equals(sendigClassesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassesRef sendigClassesRef1 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef2 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef3 = new OASSendigClassesRef();
        OASSendigClassesRef sendigClassesRef4 = new OASSendigClassesRef();

        System.assert(sendigClassesRef1.equals(sendigClassesRef2));
        System.assert(sendigClassesRef2.equals(sendigClassesRef1));
        System.assert(sendigClassesRef3.equals(sendigClassesRef4));
        System.assert(sendigClassesRef4.equals(sendigClassesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassesRef sendigClassesRef1 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef2 = new OASSendigClassesRef();

        System.assertEquals(false, sendigClassesRef1.equals('foo'));
        System.assertEquals(false, sendigClassesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassesRef sendigClassesRef1 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef2 = new OASSendigClassesRef();
        OASSendigClassesRef sendigClassesRef3;

        System.assertEquals(false, sendigClassesRef1.equals(sendigClassesRef3));
        System.assertEquals(false, sendigClassesRef2.equals(sendigClassesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassesRef sendigClassesRef1 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef2 = new OASSendigClassesRef();

        System.assertEquals(sendigClassesRef1.hashCode(), sendigClassesRef1.hashCode());
        System.assertEquals(sendigClassesRef2.hashCode(), sendigClassesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassesRef sendigClassesRef1 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef2 = OASSendigClassesRef.getExample();
        OASSendigClassesRef sendigClassesRef3 = new OASSendigClassesRef();
        OASSendigClassesRef sendigClassesRef4 = new OASSendigClassesRef();

        System.assert(sendigClassesRef1.equals(sendigClassesRef2));
        System.assert(sendigClassesRef3.equals(sendigClassesRef4));
        System.assertEquals(sendigClassesRef1.hashCode(), sendigClassesRef2.hashCode());
        System.assertEquals(sendigClassesRef3.hashCode(), sendigClassesRef4.hashCode());
    }
}
