@isTest
private class OASCdashigScenarioRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioRef cdashigScenarioRef1 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef2 = cdashigScenarioRef1;
        OASCdashigScenarioRef cdashigScenarioRef3 = new OASCdashigScenarioRef();
        OASCdashigScenarioRef cdashigScenarioRef4 = cdashigScenarioRef3;

        System.assert(cdashigScenarioRef1.equals(cdashigScenarioRef2));
        System.assert(cdashigScenarioRef2.equals(cdashigScenarioRef1));
        System.assert(cdashigScenarioRef1.equals(cdashigScenarioRef1));
        System.assert(cdashigScenarioRef3.equals(cdashigScenarioRef4));
        System.assert(cdashigScenarioRef4.equals(cdashigScenarioRef3));
        System.assert(cdashigScenarioRef3.equals(cdashigScenarioRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioRef cdashigScenarioRef1 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef2 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef3 = new OASCdashigScenarioRef();
        OASCdashigScenarioRef cdashigScenarioRef4 = new OASCdashigScenarioRef();

        System.assert(cdashigScenarioRef1.equals(cdashigScenarioRef2));
        System.assert(cdashigScenarioRef2.equals(cdashigScenarioRef1));
        System.assert(cdashigScenarioRef3.equals(cdashigScenarioRef4));
        System.assert(cdashigScenarioRef4.equals(cdashigScenarioRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioRef cdashigScenarioRef1 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef2 = new OASCdashigScenarioRef();

        System.assertEquals(false, cdashigScenarioRef1.equals('foo'));
        System.assertEquals(false, cdashigScenarioRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioRef cdashigScenarioRef1 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef2 = new OASCdashigScenarioRef();
        OASCdashigScenarioRef cdashigScenarioRef3;

        System.assertEquals(false, cdashigScenarioRef1.equals(cdashigScenarioRef3));
        System.assertEquals(false, cdashigScenarioRef2.equals(cdashigScenarioRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioRef cdashigScenarioRef1 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef2 = new OASCdashigScenarioRef();

        System.assertEquals(cdashigScenarioRef1.hashCode(), cdashigScenarioRef1.hashCode());
        System.assertEquals(cdashigScenarioRef2.hashCode(), cdashigScenarioRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioRef cdashigScenarioRef1 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef2 = OASCdashigScenarioRef.getExample();
        OASCdashigScenarioRef cdashigScenarioRef3 = new OASCdashigScenarioRef();
        OASCdashigScenarioRef cdashigScenarioRef4 = new OASCdashigScenarioRef();

        System.assert(cdashigScenarioRef1.equals(cdashigScenarioRef2));
        System.assert(cdashigScenarioRef3.equals(cdashigScenarioRef4));
        System.assertEquals(cdashigScenarioRef1.hashCode(), cdashigScenarioRef2.hashCode());
        System.assertEquals(cdashigScenarioRef3.hashCode(), cdashigScenarioRef4.hashCode());
    }
}
