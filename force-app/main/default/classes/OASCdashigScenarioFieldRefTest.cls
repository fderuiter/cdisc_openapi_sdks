@isTest
private class OASCdashigScenarioFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef1 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef2 = cdashigScenarioFieldRef1;
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef3 = new OASCdashigScenarioFieldRef();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef4 = cdashigScenarioFieldRef3;

        System.assert(cdashigScenarioFieldRef1.equals(cdashigScenarioFieldRef2));
        System.assert(cdashigScenarioFieldRef2.equals(cdashigScenarioFieldRef1));
        System.assert(cdashigScenarioFieldRef1.equals(cdashigScenarioFieldRef1));
        System.assert(cdashigScenarioFieldRef3.equals(cdashigScenarioFieldRef4));
        System.assert(cdashigScenarioFieldRef4.equals(cdashigScenarioFieldRef3));
        System.assert(cdashigScenarioFieldRef3.equals(cdashigScenarioFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef1 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef2 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef3 = new OASCdashigScenarioFieldRef();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef4 = new OASCdashigScenarioFieldRef();

        System.assert(cdashigScenarioFieldRef1.equals(cdashigScenarioFieldRef2));
        System.assert(cdashigScenarioFieldRef2.equals(cdashigScenarioFieldRef1));
        System.assert(cdashigScenarioFieldRef3.equals(cdashigScenarioFieldRef4));
        System.assert(cdashigScenarioFieldRef4.equals(cdashigScenarioFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef1 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef2 = new OASCdashigScenarioFieldRef();

        System.assertEquals(false, cdashigScenarioFieldRef1.equals('foo'));
        System.assertEquals(false, cdashigScenarioFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef1 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef2 = new OASCdashigScenarioFieldRef();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef3;

        System.assertEquals(false, cdashigScenarioFieldRef1.equals(cdashigScenarioFieldRef3));
        System.assertEquals(false, cdashigScenarioFieldRef2.equals(cdashigScenarioFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef1 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef2 = new OASCdashigScenarioFieldRef();

        System.assertEquals(cdashigScenarioFieldRef1.hashCode(), cdashigScenarioFieldRef1.hashCode());
        System.assertEquals(cdashigScenarioFieldRef2.hashCode(), cdashigScenarioFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef1 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef2 = OASCdashigScenarioFieldRef.getExample();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef3 = new OASCdashigScenarioFieldRef();
        OASCdashigScenarioFieldRef cdashigScenarioFieldRef4 = new OASCdashigScenarioFieldRef();

        System.assert(cdashigScenarioFieldRef1.equals(cdashigScenarioFieldRef2));
        System.assert(cdashigScenarioFieldRef3.equals(cdashigScenarioFieldRef4));
        System.assertEquals(cdashigScenarioFieldRef1.hashCode(), cdashigScenarioFieldRef2.hashCode());
        System.assertEquals(cdashigScenarioFieldRef3.hashCode(), cdashigScenarioFieldRef4.hashCode());
    }
}
