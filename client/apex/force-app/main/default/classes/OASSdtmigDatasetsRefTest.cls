@isTest
private class OASSdtmigDatasetsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetsRef sdtmigDatasetsRef1 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef2 = sdtmigDatasetsRef1;
        OASSdtmigDatasetsRef sdtmigDatasetsRef3 = new OASSdtmigDatasetsRef();
        OASSdtmigDatasetsRef sdtmigDatasetsRef4 = sdtmigDatasetsRef3;

        System.assert(sdtmigDatasetsRef1.equals(sdtmigDatasetsRef2));
        System.assert(sdtmigDatasetsRef2.equals(sdtmigDatasetsRef1));
        System.assert(sdtmigDatasetsRef1.equals(sdtmigDatasetsRef1));
        System.assert(sdtmigDatasetsRef3.equals(sdtmigDatasetsRef4));
        System.assert(sdtmigDatasetsRef4.equals(sdtmigDatasetsRef3));
        System.assert(sdtmigDatasetsRef3.equals(sdtmigDatasetsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetsRef sdtmigDatasetsRef1 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef2 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef3 = new OASSdtmigDatasetsRef();
        OASSdtmigDatasetsRef sdtmigDatasetsRef4 = new OASSdtmigDatasetsRef();

        System.assert(sdtmigDatasetsRef1.equals(sdtmigDatasetsRef2));
        System.assert(sdtmigDatasetsRef2.equals(sdtmigDatasetsRef1));
        System.assert(sdtmigDatasetsRef3.equals(sdtmigDatasetsRef4));
        System.assert(sdtmigDatasetsRef4.equals(sdtmigDatasetsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetsRef sdtmigDatasetsRef1 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef2 = new OASSdtmigDatasetsRef();

        System.assertEquals(false, sdtmigDatasetsRef1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetsRef sdtmigDatasetsRef1 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef2 = new OASSdtmigDatasetsRef();
        OASSdtmigDatasetsRef sdtmigDatasetsRef3;

        System.assertEquals(false, sdtmigDatasetsRef1.equals(sdtmigDatasetsRef3));
        System.assertEquals(false, sdtmigDatasetsRef2.equals(sdtmigDatasetsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetsRef sdtmigDatasetsRef1 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef2 = new OASSdtmigDatasetsRef();

        System.assertEquals(sdtmigDatasetsRef1.hashCode(), sdtmigDatasetsRef1.hashCode());
        System.assertEquals(sdtmigDatasetsRef2.hashCode(), sdtmigDatasetsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetsRef sdtmigDatasetsRef1 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef2 = OASSdtmigDatasetsRef.getExample();
        OASSdtmigDatasetsRef sdtmigDatasetsRef3 = new OASSdtmigDatasetsRef();
        OASSdtmigDatasetsRef sdtmigDatasetsRef4 = new OASSdtmigDatasetsRef();

        System.assert(sdtmigDatasetsRef1.equals(sdtmigDatasetsRef2));
        System.assert(sdtmigDatasetsRef3.equals(sdtmigDatasetsRef4));
        System.assertEquals(sdtmigDatasetsRef1.hashCode(), sdtmigDatasetsRef2.hashCode());
        System.assertEquals(sdtmigDatasetsRef3.hashCode(), sdtmigDatasetsRef4.hashCode());
    }
}
