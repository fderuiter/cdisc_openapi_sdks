@isTest
private class OASCdashigScenarioFieldsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef1 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef2 = cdashigScenarioFieldsRef1;
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef3 = new OASCdashigScenarioFieldsRef();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef4 = cdashigScenarioFieldsRef3;

        System.assert(cdashigScenarioFieldsRef1.equals(cdashigScenarioFieldsRef2));
        System.assert(cdashigScenarioFieldsRef2.equals(cdashigScenarioFieldsRef1));
        System.assert(cdashigScenarioFieldsRef1.equals(cdashigScenarioFieldsRef1));
        System.assert(cdashigScenarioFieldsRef3.equals(cdashigScenarioFieldsRef4));
        System.assert(cdashigScenarioFieldsRef4.equals(cdashigScenarioFieldsRef3));
        System.assert(cdashigScenarioFieldsRef3.equals(cdashigScenarioFieldsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef1 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef2 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef3 = new OASCdashigScenarioFieldsRef();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef4 = new OASCdashigScenarioFieldsRef();

        System.assert(cdashigScenarioFieldsRef1.equals(cdashigScenarioFieldsRef2));
        System.assert(cdashigScenarioFieldsRef2.equals(cdashigScenarioFieldsRef1));
        System.assert(cdashigScenarioFieldsRef3.equals(cdashigScenarioFieldsRef4));
        System.assert(cdashigScenarioFieldsRef4.equals(cdashigScenarioFieldsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef1 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef2 = new OASCdashigScenarioFieldsRef();

        System.assertEquals(false, cdashigScenarioFieldsRef1.equals('foo'));
        System.assertEquals(false, cdashigScenarioFieldsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef1 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef2 = new OASCdashigScenarioFieldsRef();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef3;

        System.assertEquals(false, cdashigScenarioFieldsRef1.equals(cdashigScenarioFieldsRef3));
        System.assertEquals(false, cdashigScenarioFieldsRef2.equals(cdashigScenarioFieldsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef1 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef2 = new OASCdashigScenarioFieldsRef();

        System.assertEquals(cdashigScenarioFieldsRef1.hashCode(), cdashigScenarioFieldsRef1.hashCode());
        System.assertEquals(cdashigScenarioFieldsRef2.hashCode(), cdashigScenarioFieldsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef1 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef2 = OASCdashigScenarioFieldsRef.getExample();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef3 = new OASCdashigScenarioFieldsRef();
        OASCdashigScenarioFieldsRef cdashigScenarioFieldsRef4 = new OASCdashigScenarioFieldsRef();

        System.assert(cdashigScenarioFieldsRef1.equals(cdashigScenarioFieldsRef2));
        System.assert(cdashigScenarioFieldsRef3.equals(cdashigScenarioFieldsRef4));
        System.assertEquals(cdashigScenarioFieldsRef1.hashCode(), cdashigScenarioFieldsRef2.hashCode());
        System.assertEquals(cdashigScenarioFieldsRef3.hashCode(), cdashigScenarioFieldsRef4.hashCode());
    }
}
