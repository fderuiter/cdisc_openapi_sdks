@isTest
private class OASSdtmigDatasetRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetRef sdtmigDatasetRef1 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef2 = sdtmigDatasetRef1;
        OASSdtmigDatasetRef sdtmigDatasetRef3 = new OASSdtmigDatasetRef();
        OASSdtmigDatasetRef sdtmigDatasetRef4 = sdtmigDatasetRef3;

        System.assert(sdtmigDatasetRef1.equals(sdtmigDatasetRef2));
        System.assert(sdtmigDatasetRef2.equals(sdtmigDatasetRef1));
        System.assert(sdtmigDatasetRef1.equals(sdtmigDatasetRef1));
        System.assert(sdtmigDatasetRef3.equals(sdtmigDatasetRef4));
        System.assert(sdtmigDatasetRef4.equals(sdtmigDatasetRef3));
        System.assert(sdtmigDatasetRef3.equals(sdtmigDatasetRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetRef sdtmigDatasetRef1 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef2 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef3 = new OASSdtmigDatasetRef();
        OASSdtmigDatasetRef sdtmigDatasetRef4 = new OASSdtmigDatasetRef();

        System.assert(sdtmigDatasetRef1.equals(sdtmigDatasetRef2));
        System.assert(sdtmigDatasetRef2.equals(sdtmigDatasetRef1));
        System.assert(sdtmigDatasetRef3.equals(sdtmigDatasetRef4));
        System.assert(sdtmigDatasetRef4.equals(sdtmigDatasetRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetRef sdtmigDatasetRef1 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef2 = new OASSdtmigDatasetRef();

        System.assertEquals(false, sdtmigDatasetRef1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetRef sdtmigDatasetRef1 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef2 = new OASSdtmigDatasetRef();
        OASSdtmigDatasetRef sdtmigDatasetRef3;

        System.assertEquals(false, sdtmigDatasetRef1.equals(sdtmigDatasetRef3));
        System.assertEquals(false, sdtmigDatasetRef2.equals(sdtmigDatasetRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetRef sdtmigDatasetRef1 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef2 = new OASSdtmigDatasetRef();

        System.assertEquals(sdtmigDatasetRef1.hashCode(), sdtmigDatasetRef1.hashCode());
        System.assertEquals(sdtmigDatasetRef2.hashCode(), sdtmigDatasetRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetRef sdtmigDatasetRef1 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef2 = OASSdtmigDatasetRef.getExample();
        OASSdtmigDatasetRef sdtmigDatasetRef3 = new OASSdtmigDatasetRef();
        OASSdtmigDatasetRef sdtmigDatasetRef4 = new OASSdtmigDatasetRef();

        System.assert(sdtmigDatasetRef1.equals(sdtmigDatasetRef2));
        System.assert(sdtmigDatasetRef3.equals(sdtmigDatasetRef4));
        System.assertEquals(sdtmigDatasetRef1.hashCode(), sdtmigDatasetRef2.hashCode());
        System.assertEquals(sdtmigDatasetRef3.hashCode(), sdtmigDatasetRef4.hashCode());
    }
}
