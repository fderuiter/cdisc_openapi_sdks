@isTest
private class OASSdtmDatasetRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetRef sdtmDatasetRef1 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef2 = sdtmDatasetRef1;
        OASSdtmDatasetRef sdtmDatasetRef3 = new OASSdtmDatasetRef();
        OASSdtmDatasetRef sdtmDatasetRef4 = sdtmDatasetRef3;

        System.assert(sdtmDatasetRef1.equals(sdtmDatasetRef2));
        System.assert(sdtmDatasetRef2.equals(sdtmDatasetRef1));
        System.assert(sdtmDatasetRef1.equals(sdtmDatasetRef1));
        System.assert(sdtmDatasetRef3.equals(sdtmDatasetRef4));
        System.assert(sdtmDatasetRef4.equals(sdtmDatasetRef3));
        System.assert(sdtmDatasetRef3.equals(sdtmDatasetRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetRef sdtmDatasetRef1 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef2 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef3 = new OASSdtmDatasetRef();
        OASSdtmDatasetRef sdtmDatasetRef4 = new OASSdtmDatasetRef();

        System.assert(sdtmDatasetRef1.equals(sdtmDatasetRef2));
        System.assert(sdtmDatasetRef2.equals(sdtmDatasetRef1));
        System.assert(sdtmDatasetRef3.equals(sdtmDatasetRef4));
        System.assert(sdtmDatasetRef4.equals(sdtmDatasetRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetRef sdtmDatasetRef1 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef2 = new OASSdtmDatasetRef();

        System.assertEquals(false, sdtmDatasetRef1.equals('foo'));
        System.assertEquals(false, sdtmDatasetRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetRef sdtmDatasetRef1 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef2 = new OASSdtmDatasetRef();
        OASSdtmDatasetRef sdtmDatasetRef3;

        System.assertEquals(false, sdtmDatasetRef1.equals(sdtmDatasetRef3));
        System.assertEquals(false, sdtmDatasetRef2.equals(sdtmDatasetRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetRef sdtmDatasetRef1 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef2 = new OASSdtmDatasetRef();

        System.assertEquals(sdtmDatasetRef1.hashCode(), sdtmDatasetRef1.hashCode());
        System.assertEquals(sdtmDatasetRef2.hashCode(), sdtmDatasetRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetRef sdtmDatasetRef1 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef2 = OASSdtmDatasetRef.getExample();
        OASSdtmDatasetRef sdtmDatasetRef3 = new OASSdtmDatasetRef();
        OASSdtmDatasetRef sdtmDatasetRef4 = new OASSdtmDatasetRef();

        System.assert(sdtmDatasetRef1.equals(sdtmDatasetRef2));
        System.assert(sdtmDatasetRef3.equals(sdtmDatasetRef4));
        System.assertEquals(sdtmDatasetRef1.hashCode(), sdtmDatasetRef2.hashCode());
        System.assertEquals(sdtmDatasetRef3.hashCode(), sdtmDatasetRef4.hashCode());
    }
}
