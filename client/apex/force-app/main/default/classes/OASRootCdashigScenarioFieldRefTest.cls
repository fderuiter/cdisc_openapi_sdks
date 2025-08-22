@isTest
private class OASRootCdashigScenarioFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef1 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef2 = rootCdashigScenarioFieldRef1;
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef3 = new OASRootCdashigScenarioFieldRef();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef4 = rootCdashigScenarioFieldRef3;

        System.assert(rootCdashigScenarioFieldRef1.equals(rootCdashigScenarioFieldRef2));
        System.assert(rootCdashigScenarioFieldRef2.equals(rootCdashigScenarioFieldRef1));
        System.assert(rootCdashigScenarioFieldRef1.equals(rootCdashigScenarioFieldRef1));
        System.assert(rootCdashigScenarioFieldRef3.equals(rootCdashigScenarioFieldRef4));
        System.assert(rootCdashigScenarioFieldRef4.equals(rootCdashigScenarioFieldRef3));
        System.assert(rootCdashigScenarioFieldRef3.equals(rootCdashigScenarioFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef1 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef2 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef3 = new OASRootCdashigScenarioFieldRef();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef4 = new OASRootCdashigScenarioFieldRef();

        System.assert(rootCdashigScenarioFieldRef1.equals(rootCdashigScenarioFieldRef2));
        System.assert(rootCdashigScenarioFieldRef2.equals(rootCdashigScenarioFieldRef1));
        System.assert(rootCdashigScenarioFieldRef3.equals(rootCdashigScenarioFieldRef4));
        System.assert(rootCdashigScenarioFieldRef4.equals(rootCdashigScenarioFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef1 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef2 = new OASRootCdashigScenarioFieldRef();

        System.assertEquals(false, rootCdashigScenarioFieldRef1.equals('foo'));
        System.assertEquals(false, rootCdashigScenarioFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef1 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef2 = new OASRootCdashigScenarioFieldRef();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef3;

        System.assertEquals(false, rootCdashigScenarioFieldRef1.equals(rootCdashigScenarioFieldRef3));
        System.assertEquals(false, rootCdashigScenarioFieldRef2.equals(rootCdashigScenarioFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef1 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef2 = new OASRootCdashigScenarioFieldRef();

        System.assertEquals(rootCdashigScenarioFieldRef1.hashCode(), rootCdashigScenarioFieldRef1.hashCode());
        System.assertEquals(rootCdashigScenarioFieldRef2.hashCode(), rootCdashigScenarioFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef1 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef2 = OASRootCdashigScenarioFieldRef.getExample();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef3 = new OASRootCdashigScenarioFieldRef();
        OASRootCdashigScenarioFieldRef rootCdashigScenarioFieldRef4 = new OASRootCdashigScenarioFieldRef();

        System.assert(rootCdashigScenarioFieldRef1.equals(rootCdashigScenarioFieldRef2));
        System.assert(rootCdashigScenarioFieldRef3.equals(rootCdashigScenarioFieldRef4));
        System.assertEquals(rootCdashigScenarioFieldRef1.hashCode(), rootCdashigScenarioFieldRef2.hashCode());
        System.assertEquals(rootCdashigScenarioFieldRef3.hashCode(), rootCdashigScenarioFieldRef4.hashCode());
    }
}
