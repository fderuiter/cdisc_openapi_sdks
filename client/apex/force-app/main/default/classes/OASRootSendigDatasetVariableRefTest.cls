@isTest
private class OASRootSendigDatasetVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef1 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef2 = rootSendigDatasetVariableRef1;
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef3 = new OASRootSendigDatasetVariableRef();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef4 = rootSendigDatasetVariableRef3;

        System.assert(rootSendigDatasetVariableRef1.equals(rootSendigDatasetVariableRef2));
        System.assert(rootSendigDatasetVariableRef2.equals(rootSendigDatasetVariableRef1));
        System.assert(rootSendigDatasetVariableRef1.equals(rootSendigDatasetVariableRef1));
        System.assert(rootSendigDatasetVariableRef3.equals(rootSendigDatasetVariableRef4));
        System.assert(rootSendigDatasetVariableRef4.equals(rootSendigDatasetVariableRef3));
        System.assert(rootSendigDatasetVariableRef3.equals(rootSendigDatasetVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef1 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef2 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef3 = new OASRootSendigDatasetVariableRef();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef4 = new OASRootSendigDatasetVariableRef();

        System.assert(rootSendigDatasetVariableRef1.equals(rootSendigDatasetVariableRef2));
        System.assert(rootSendigDatasetVariableRef2.equals(rootSendigDatasetVariableRef1));
        System.assert(rootSendigDatasetVariableRef3.equals(rootSendigDatasetVariableRef4));
        System.assert(rootSendigDatasetVariableRef4.equals(rootSendigDatasetVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef1 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef2 = new OASRootSendigDatasetVariableRef();

        System.assertEquals(false, rootSendigDatasetVariableRef1.equals('foo'));
        System.assertEquals(false, rootSendigDatasetVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef1 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef2 = new OASRootSendigDatasetVariableRef();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef3;

        System.assertEquals(false, rootSendigDatasetVariableRef1.equals(rootSendigDatasetVariableRef3));
        System.assertEquals(false, rootSendigDatasetVariableRef2.equals(rootSendigDatasetVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef1 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef2 = new OASRootSendigDatasetVariableRef();

        System.assertEquals(rootSendigDatasetVariableRef1.hashCode(), rootSendigDatasetVariableRef1.hashCode());
        System.assertEquals(rootSendigDatasetVariableRef2.hashCode(), rootSendigDatasetVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef1 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef2 = OASRootSendigDatasetVariableRef.getExample();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef3 = new OASRootSendigDatasetVariableRef();
        OASRootSendigDatasetVariableRef rootSendigDatasetVariableRef4 = new OASRootSendigDatasetVariableRef();

        System.assert(rootSendigDatasetVariableRef1.equals(rootSendigDatasetVariableRef2));
        System.assert(rootSendigDatasetVariableRef3.equals(rootSendigDatasetVariableRef4));
        System.assertEquals(rootSendigDatasetVariableRef1.hashCode(), rootSendigDatasetVariableRef2.hashCode());
        System.assertEquals(rootSendigDatasetVariableRef3.hashCode(), rootSendigDatasetVariableRef4.hashCode());
    }
}
