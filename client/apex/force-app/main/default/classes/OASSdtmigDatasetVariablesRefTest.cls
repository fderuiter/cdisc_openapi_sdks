@isTest
private class OASSdtmigDatasetVariablesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef1 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef2 = sdtmigDatasetVariablesRef1;
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef3 = new OASSdtmigDatasetVariablesRef();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef4 = sdtmigDatasetVariablesRef3;

        System.assert(sdtmigDatasetVariablesRef1.equals(sdtmigDatasetVariablesRef2));
        System.assert(sdtmigDatasetVariablesRef2.equals(sdtmigDatasetVariablesRef1));
        System.assert(sdtmigDatasetVariablesRef1.equals(sdtmigDatasetVariablesRef1));
        System.assert(sdtmigDatasetVariablesRef3.equals(sdtmigDatasetVariablesRef4));
        System.assert(sdtmigDatasetVariablesRef4.equals(sdtmigDatasetVariablesRef3));
        System.assert(sdtmigDatasetVariablesRef3.equals(sdtmigDatasetVariablesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef1 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef2 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef3 = new OASSdtmigDatasetVariablesRef();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef4 = new OASSdtmigDatasetVariablesRef();

        System.assert(sdtmigDatasetVariablesRef1.equals(sdtmigDatasetVariablesRef2));
        System.assert(sdtmigDatasetVariablesRef2.equals(sdtmigDatasetVariablesRef1));
        System.assert(sdtmigDatasetVariablesRef3.equals(sdtmigDatasetVariablesRef4));
        System.assert(sdtmigDatasetVariablesRef4.equals(sdtmigDatasetVariablesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef1 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef2 = new OASSdtmigDatasetVariablesRef();

        System.assertEquals(false, sdtmigDatasetVariablesRef1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariablesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef1 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef2 = new OASSdtmigDatasetVariablesRef();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef3;

        System.assertEquals(false, sdtmigDatasetVariablesRef1.equals(sdtmigDatasetVariablesRef3));
        System.assertEquals(false, sdtmigDatasetVariablesRef2.equals(sdtmigDatasetVariablesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef1 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef2 = new OASSdtmigDatasetVariablesRef();

        System.assertEquals(sdtmigDatasetVariablesRef1.hashCode(), sdtmigDatasetVariablesRef1.hashCode());
        System.assertEquals(sdtmigDatasetVariablesRef2.hashCode(), sdtmigDatasetVariablesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef1 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef2 = OASSdtmigDatasetVariablesRef.getExample();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef3 = new OASSdtmigDatasetVariablesRef();
        OASSdtmigDatasetVariablesRef sdtmigDatasetVariablesRef4 = new OASSdtmigDatasetVariablesRef();

        System.assert(sdtmigDatasetVariablesRef1.equals(sdtmigDatasetVariablesRef2));
        System.assert(sdtmigDatasetVariablesRef3.equals(sdtmigDatasetVariablesRef4));
        System.assertEquals(sdtmigDatasetVariablesRef1.hashCode(), sdtmigDatasetVariablesRef2.hashCode());
        System.assertEquals(sdtmigDatasetVariablesRef3.hashCode(), sdtmigDatasetVariablesRef4.hashCode());
    }
}
