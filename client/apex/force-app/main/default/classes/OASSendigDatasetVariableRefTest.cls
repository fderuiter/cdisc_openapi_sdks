@isTest
private class OASSendigDatasetVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariableRef sendigDatasetVariableRef1 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef2 = sendigDatasetVariableRef1;
        OASSendigDatasetVariableRef sendigDatasetVariableRef3 = new OASSendigDatasetVariableRef();
        OASSendigDatasetVariableRef sendigDatasetVariableRef4 = sendigDatasetVariableRef3;

        System.assert(sendigDatasetVariableRef1.equals(sendigDatasetVariableRef2));
        System.assert(sendigDatasetVariableRef2.equals(sendigDatasetVariableRef1));
        System.assert(sendigDatasetVariableRef1.equals(sendigDatasetVariableRef1));
        System.assert(sendigDatasetVariableRef3.equals(sendigDatasetVariableRef4));
        System.assert(sendigDatasetVariableRef4.equals(sendigDatasetVariableRef3));
        System.assert(sendigDatasetVariableRef3.equals(sendigDatasetVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariableRef sendigDatasetVariableRef1 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef2 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef3 = new OASSendigDatasetVariableRef();
        OASSendigDatasetVariableRef sendigDatasetVariableRef4 = new OASSendigDatasetVariableRef();

        System.assert(sendigDatasetVariableRef1.equals(sendigDatasetVariableRef2));
        System.assert(sendigDatasetVariableRef2.equals(sendigDatasetVariableRef1));
        System.assert(sendigDatasetVariableRef3.equals(sendigDatasetVariableRef4));
        System.assert(sendigDatasetVariableRef4.equals(sendigDatasetVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariableRef sendigDatasetVariableRef1 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef2 = new OASSendigDatasetVariableRef();

        System.assertEquals(false, sendigDatasetVariableRef1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariableRef sendigDatasetVariableRef1 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef2 = new OASSendigDatasetVariableRef();
        OASSendigDatasetVariableRef sendigDatasetVariableRef3;

        System.assertEquals(false, sendigDatasetVariableRef1.equals(sendigDatasetVariableRef3));
        System.assertEquals(false, sendigDatasetVariableRef2.equals(sendigDatasetVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariableRef sendigDatasetVariableRef1 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef2 = new OASSendigDatasetVariableRef();

        System.assertEquals(sendigDatasetVariableRef1.hashCode(), sendigDatasetVariableRef1.hashCode());
        System.assertEquals(sendigDatasetVariableRef2.hashCode(), sendigDatasetVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariableRef sendigDatasetVariableRef1 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef2 = OASSendigDatasetVariableRef.getExample();
        OASSendigDatasetVariableRef sendigDatasetVariableRef3 = new OASSendigDatasetVariableRef();
        OASSendigDatasetVariableRef sendigDatasetVariableRef4 = new OASSendigDatasetVariableRef();

        System.assert(sendigDatasetVariableRef1.equals(sendigDatasetVariableRef2));
        System.assert(sendigDatasetVariableRef3.equals(sendigDatasetVariableRef4));
        System.assertEquals(sendigDatasetVariableRef1.hashCode(), sendigDatasetVariableRef2.hashCode());
        System.assertEquals(sendigDatasetVariableRef3.hashCode(), sendigDatasetVariableRef4.hashCode());
    }
}
