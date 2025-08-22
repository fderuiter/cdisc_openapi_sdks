@isTest
private class OASRootSdtmigDatasetVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef1 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef2 = rootSdtmigDatasetVariableRef1;
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef3 = new OASRootSdtmigDatasetVariableRef();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef4 = rootSdtmigDatasetVariableRef3;

        System.assert(rootSdtmigDatasetVariableRef1.equals(rootSdtmigDatasetVariableRef2));
        System.assert(rootSdtmigDatasetVariableRef2.equals(rootSdtmigDatasetVariableRef1));
        System.assert(rootSdtmigDatasetVariableRef1.equals(rootSdtmigDatasetVariableRef1));
        System.assert(rootSdtmigDatasetVariableRef3.equals(rootSdtmigDatasetVariableRef4));
        System.assert(rootSdtmigDatasetVariableRef4.equals(rootSdtmigDatasetVariableRef3));
        System.assert(rootSdtmigDatasetVariableRef3.equals(rootSdtmigDatasetVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef1 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef2 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef3 = new OASRootSdtmigDatasetVariableRef();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef4 = new OASRootSdtmigDatasetVariableRef();

        System.assert(rootSdtmigDatasetVariableRef1.equals(rootSdtmigDatasetVariableRef2));
        System.assert(rootSdtmigDatasetVariableRef2.equals(rootSdtmigDatasetVariableRef1));
        System.assert(rootSdtmigDatasetVariableRef3.equals(rootSdtmigDatasetVariableRef4));
        System.assert(rootSdtmigDatasetVariableRef4.equals(rootSdtmigDatasetVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef1 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef2 = new OASRootSdtmigDatasetVariableRef();

        System.assertEquals(false, rootSdtmigDatasetVariableRef1.equals('foo'));
        System.assertEquals(false, rootSdtmigDatasetVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef1 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef2 = new OASRootSdtmigDatasetVariableRef();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef3;

        System.assertEquals(false, rootSdtmigDatasetVariableRef1.equals(rootSdtmigDatasetVariableRef3));
        System.assertEquals(false, rootSdtmigDatasetVariableRef2.equals(rootSdtmigDatasetVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef1 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef2 = new OASRootSdtmigDatasetVariableRef();

        System.assertEquals(rootSdtmigDatasetVariableRef1.hashCode(), rootSdtmigDatasetVariableRef1.hashCode());
        System.assertEquals(rootSdtmigDatasetVariableRef2.hashCode(), rootSdtmigDatasetVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef1 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef2 = OASRootSdtmigDatasetVariableRef.getExample();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef3 = new OASRootSdtmigDatasetVariableRef();
        OASRootSdtmigDatasetVariableRef rootSdtmigDatasetVariableRef4 = new OASRootSdtmigDatasetVariableRef();

        System.assert(rootSdtmigDatasetVariableRef1.equals(rootSdtmigDatasetVariableRef2));
        System.assert(rootSdtmigDatasetVariableRef3.equals(rootSdtmigDatasetVariableRef4));
        System.assertEquals(rootSdtmigDatasetVariableRef1.hashCode(), rootSdtmigDatasetVariableRef2.hashCode());
        System.assertEquals(rootSdtmigDatasetVariableRef3.hashCode(), rootSdtmigDatasetVariableRef4.hashCode());
    }
}
