@isTest
private class OASSdtmDatasetsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetsRef sdtmDatasetsRef1 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef2 = sdtmDatasetsRef1;
        OASSdtmDatasetsRef sdtmDatasetsRef3 = new OASSdtmDatasetsRef();
        OASSdtmDatasetsRef sdtmDatasetsRef4 = sdtmDatasetsRef3;

        System.assert(sdtmDatasetsRef1.equals(sdtmDatasetsRef2));
        System.assert(sdtmDatasetsRef2.equals(sdtmDatasetsRef1));
        System.assert(sdtmDatasetsRef1.equals(sdtmDatasetsRef1));
        System.assert(sdtmDatasetsRef3.equals(sdtmDatasetsRef4));
        System.assert(sdtmDatasetsRef4.equals(sdtmDatasetsRef3));
        System.assert(sdtmDatasetsRef3.equals(sdtmDatasetsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetsRef sdtmDatasetsRef1 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef2 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef3 = new OASSdtmDatasetsRef();
        OASSdtmDatasetsRef sdtmDatasetsRef4 = new OASSdtmDatasetsRef();

        System.assert(sdtmDatasetsRef1.equals(sdtmDatasetsRef2));
        System.assert(sdtmDatasetsRef2.equals(sdtmDatasetsRef1));
        System.assert(sdtmDatasetsRef3.equals(sdtmDatasetsRef4));
        System.assert(sdtmDatasetsRef4.equals(sdtmDatasetsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetsRef sdtmDatasetsRef1 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef2 = new OASSdtmDatasetsRef();

        System.assertEquals(false, sdtmDatasetsRef1.equals('foo'));
        System.assertEquals(false, sdtmDatasetsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetsRef sdtmDatasetsRef1 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef2 = new OASSdtmDatasetsRef();
        OASSdtmDatasetsRef sdtmDatasetsRef3;

        System.assertEquals(false, sdtmDatasetsRef1.equals(sdtmDatasetsRef3));
        System.assertEquals(false, sdtmDatasetsRef2.equals(sdtmDatasetsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetsRef sdtmDatasetsRef1 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef2 = new OASSdtmDatasetsRef();

        System.assertEquals(sdtmDatasetsRef1.hashCode(), sdtmDatasetsRef1.hashCode());
        System.assertEquals(sdtmDatasetsRef2.hashCode(), sdtmDatasetsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetsRef sdtmDatasetsRef1 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef2 = OASSdtmDatasetsRef.getExample();
        OASSdtmDatasetsRef sdtmDatasetsRef3 = new OASSdtmDatasetsRef();
        OASSdtmDatasetsRef sdtmDatasetsRef4 = new OASSdtmDatasetsRef();

        System.assert(sdtmDatasetsRef1.equals(sdtmDatasetsRef2));
        System.assert(sdtmDatasetsRef3.equals(sdtmDatasetsRef4));
        System.assertEquals(sdtmDatasetsRef1.hashCode(), sdtmDatasetsRef2.hashCode());
        System.assertEquals(sdtmDatasetsRef3.hashCode(), sdtmDatasetsRef4.hashCode());
    }
}
