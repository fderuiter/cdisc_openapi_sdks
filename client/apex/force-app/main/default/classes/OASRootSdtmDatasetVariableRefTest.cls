@isTest
private class OASRootSdtmDatasetVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef1 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef2 = rootSdtmDatasetVariableRef1;
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef3 = new OASRootSdtmDatasetVariableRef();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef4 = rootSdtmDatasetVariableRef3;

        System.assert(rootSdtmDatasetVariableRef1.equals(rootSdtmDatasetVariableRef2));
        System.assert(rootSdtmDatasetVariableRef2.equals(rootSdtmDatasetVariableRef1));
        System.assert(rootSdtmDatasetVariableRef1.equals(rootSdtmDatasetVariableRef1));
        System.assert(rootSdtmDatasetVariableRef3.equals(rootSdtmDatasetVariableRef4));
        System.assert(rootSdtmDatasetVariableRef4.equals(rootSdtmDatasetVariableRef3));
        System.assert(rootSdtmDatasetVariableRef3.equals(rootSdtmDatasetVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef1 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef2 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef3 = new OASRootSdtmDatasetVariableRef();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef4 = new OASRootSdtmDatasetVariableRef();

        System.assert(rootSdtmDatasetVariableRef1.equals(rootSdtmDatasetVariableRef2));
        System.assert(rootSdtmDatasetVariableRef2.equals(rootSdtmDatasetVariableRef1));
        System.assert(rootSdtmDatasetVariableRef3.equals(rootSdtmDatasetVariableRef4));
        System.assert(rootSdtmDatasetVariableRef4.equals(rootSdtmDatasetVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef1 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef2 = new OASRootSdtmDatasetVariableRef();

        System.assertEquals(false, rootSdtmDatasetVariableRef1.equals('foo'));
        System.assertEquals(false, rootSdtmDatasetVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef1 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef2 = new OASRootSdtmDatasetVariableRef();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef3;

        System.assertEquals(false, rootSdtmDatasetVariableRef1.equals(rootSdtmDatasetVariableRef3));
        System.assertEquals(false, rootSdtmDatasetVariableRef2.equals(rootSdtmDatasetVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef1 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef2 = new OASRootSdtmDatasetVariableRef();

        System.assertEquals(rootSdtmDatasetVariableRef1.hashCode(), rootSdtmDatasetVariableRef1.hashCode());
        System.assertEquals(rootSdtmDatasetVariableRef2.hashCode(), rootSdtmDatasetVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef1 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef2 = OASRootSdtmDatasetVariableRef.getExample();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef3 = new OASRootSdtmDatasetVariableRef();
        OASRootSdtmDatasetVariableRef rootSdtmDatasetVariableRef4 = new OASRootSdtmDatasetVariableRef();

        System.assert(rootSdtmDatasetVariableRef1.equals(rootSdtmDatasetVariableRef2));
        System.assert(rootSdtmDatasetVariableRef3.equals(rootSdtmDatasetVariableRef4));
        System.assertEquals(rootSdtmDatasetVariableRef1.hashCode(), rootSdtmDatasetVariableRef2.hashCode());
        System.assertEquals(rootSdtmDatasetVariableRef3.hashCode(), rootSdtmDatasetVariableRef4.hashCode());
    }
}
