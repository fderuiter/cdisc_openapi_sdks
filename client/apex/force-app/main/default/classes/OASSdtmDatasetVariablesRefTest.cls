@isTest
private class OASSdtmDatasetVariablesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef1 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef2 = sdtmDatasetVariablesRef1;
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef3 = new OASSdtmDatasetVariablesRef();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef4 = sdtmDatasetVariablesRef3;

        System.assert(sdtmDatasetVariablesRef1.equals(sdtmDatasetVariablesRef2));
        System.assert(sdtmDatasetVariablesRef2.equals(sdtmDatasetVariablesRef1));
        System.assert(sdtmDatasetVariablesRef1.equals(sdtmDatasetVariablesRef1));
        System.assert(sdtmDatasetVariablesRef3.equals(sdtmDatasetVariablesRef4));
        System.assert(sdtmDatasetVariablesRef4.equals(sdtmDatasetVariablesRef3));
        System.assert(sdtmDatasetVariablesRef3.equals(sdtmDatasetVariablesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef1 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef2 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef3 = new OASSdtmDatasetVariablesRef();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef4 = new OASSdtmDatasetVariablesRef();

        System.assert(sdtmDatasetVariablesRef1.equals(sdtmDatasetVariablesRef2));
        System.assert(sdtmDatasetVariablesRef2.equals(sdtmDatasetVariablesRef1));
        System.assert(sdtmDatasetVariablesRef3.equals(sdtmDatasetVariablesRef4));
        System.assert(sdtmDatasetVariablesRef4.equals(sdtmDatasetVariablesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef1 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef2 = new OASSdtmDatasetVariablesRef();

        System.assertEquals(false, sdtmDatasetVariablesRef1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariablesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef1 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef2 = new OASSdtmDatasetVariablesRef();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef3;

        System.assertEquals(false, sdtmDatasetVariablesRef1.equals(sdtmDatasetVariablesRef3));
        System.assertEquals(false, sdtmDatasetVariablesRef2.equals(sdtmDatasetVariablesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef1 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef2 = new OASSdtmDatasetVariablesRef();

        System.assertEquals(sdtmDatasetVariablesRef1.hashCode(), sdtmDatasetVariablesRef1.hashCode());
        System.assertEquals(sdtmDatasetVariablesRef2.hashCode(), sdtmDatasetVariablesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef1 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef2 = OASSdtmDatasetVariablesRef.getExample();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef3 = new OASSdtmDatasetVariablesRef();
        OASSdtmDatasetVariablesRef sdtmDatasetVariablesRef4 = new OASSdtmDatasetVariablesRef();

        System.assert(sdtmDatasetVariablesRef1.equals(sdtmDatasetVariablesRef2));
        System.assert(sdtmDatasetVariablesRef3.equals(sdtmDatasetVariablesRef4));
        System.assertEquals(sdtmDatasetVariablesRef1.hashCode(), sdtmDatasetVariablesRef2.hashCode());
        System.assertEquals(sdtmDatasetVariablesRef3.hashCode(), sdtmDatasetVariablesRef4.hashCode());
    }
}
