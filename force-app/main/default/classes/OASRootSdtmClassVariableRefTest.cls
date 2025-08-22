@isTest
private class OASRootSdtmClassVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef1 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef2 = rootSdtmClassVariableRef1;
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef3 = new OASRootSdtmClassVariableRef();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef4 = rootSdtmClassVariableRef3;

        System.assert(rootSdtmClassVariableRef1.equals(rootSdtmClassVariableRef2));
        System.assert(rootSdtmClassVariableRef2.equals(rootSdtmClassVariableRef1));
        System.assert(rootSdtmClassVariableRef1.equals(rootSdtmClassVariableRef1));
        System.assert(rootSdtmClassVariableRef3.equals(rootSdtmClassVariableRef4));
        System.assert(rootSdtmClassVariableRef4.equals(rootSdtmClassVariableRef3));
        System.assert(rootSdtmClassVariableRef3.equals(rootSdtmClassVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef1 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef2 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef3 = new OASRootSdtmClassVariableRef();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef4 = new OASRootSdtmClassVariableRef();

        System.assert(rootSdtmClassVariableRef1.equals(rootSdtmClassVariableRef2));
        System.assert(rootSdtmClassVariableRef2.equals(rootSdtmClassVariableRef1));
        System.assert(rootSdtmClassVariableRef3.equals(rootSdtmClassVariableRef4));
        System.assert(rootSdtmClassVariableRef4.equals(rootSdtmClassVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef1 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef2 = new OASRootSdtmClassVariableRef();

        System.assertEquals(false, rootSdtmClassVariableRef1.equals('foo'));
        System.assertEquals(false, rootSdtmClassVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef1 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef2 = new OASRootSdtmClassVariableRef();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef3;

        System.assertEquals(false, rootSdtmClassVariableRef1.equals(rootSdtmClassVariableRef3));
        System.assertEquals(false, rootSdtmClassVariableRef2.equals(rootSdtmClassVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef1 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef2 = new OASRootSdtmClassVariableRef();

        System.assertEquals(rootSdtmClassVariableRef1.hashCode(), rootSdtmClassVariableRef1.hashCode());
        System.assertEquals(rootSdtmClassVariableRef2.hashCode(), rootSdtmClassVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef1 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef2 = OASRootSdtmClassVariableRef.getExample();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef3 = new OASRootSdtmClassVariableRef();
        OASRootSdtmClassVariableRef rootSdtmClassVariableRef4 = new OASRootSdtmClassVariableRef();

        System.assert(rootSdtmClassVariableRef1.equals(rootSdtmClassVariableRef2));
        System.assert(rootSdtmClassVariableRef3.equals(rootSdtmClassVariableRef4));
        System.assertEquals(rootSdtmClassVariableRef1.hashCode(), rootSdtmClassVariableRef2.hashCode());
        System.assertEquals(rootSdtmClassVariableRef3.hashCode(), rootSdtmClassVariableRef4.hashCode());
    }
}
