@isTest
private class OASSdtmigClassDatasetsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef1 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef2 = sdtmigClassDatasetsRef1;
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef3 = new OASSdtmigClassDatasetsRef();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef4 = sdtmigClassDatasetsRef3;

        System.assert(sdtmigClassDatasetsRef1.equals(sdtmigClassDatasetsRef2));
        System.assert(sdtmigClassDatasetsRef2.equals(sdtmigClassDatasetsRef1));
        System.assert(sdtmigClassDatasetsRef1.equals(sdtmigClassDatasetsRef1));
        System.assert(sdtmigClassDatasetsRef3.equals(sdtmigClassDatasetsRef4));
        System.assert(sdtmigClassDatasetsRef4.equals(sdtmigClassDatasetsRef3));
        System.assert(sdtmigClassDatasetsRef3.equals(sdtmigClassDatasetsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef1 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef2 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef3 = new OASSdtmigClassDatasetsRef();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef4 = new OASSdtmigClassDatasetsRef();

        System.assert(sdtmigClassDatasetsRef1.equals(sdtmigClassDatasetsRef2));
        System.assert(sdtmigClassDatasetsRef2.equals(sdtmigClassDatasetsRef1));
        System.assert(sdtmigClassDatasetsRef3.equals(sdtmigClassDatasetsRef4));
        System.assert(sdtmigClassDatasetsRef4.equals(sdtmigClassDatasetsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef1 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef2 = new OASSdtmigClassDatasetsRef();

        System.assertEquals(false, sdtmigClassDatasetsRef1.equals('foo'));
        System.assertEquals(false, sdtmigClassDatasetsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef1 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef2 = new OASSdtmigClassDatasetsRef();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef3;

        System.assertEquals(false, sdtmigClassDatasetsRef1.equals(sdtmigClassDatasetsRef3));
        System.assertEquals(false, sdtmigClassDatasetsRef2.equals(sdtmigClassDatasetsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef1 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef2 = new OASSdtmigClassDatasetsRef();

        System.assertEquals(sdtmigClassDatasetsRef1.hashCode(), sdtmigClassDatasetsRef1.hashCode());
        System.assertEquals(sdtmigClassDatasetsRef2.hashCode(), sdtmigClassDatasetsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef1 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef2 = OASSdtmigClassDatasetsRef.getExample();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef3 = new OASSdtmigClassDatasetsRef();
        OASSdtmigClassDatasetsRef sdtmigClassDatasetsRef4 = new OASSdtmigClassDatasetsRef();

        System.assert(sdtmigClassDatasetsRef1.equals(sdtmigClassDatasetsRef2));
        System.assert(sdtmigClassDatasetsRef3.equals(sdtmigClassDatasetsRef4));
        System.assertEquals(sdtmigClassDatasetsRef1.hashCode(), sdtmigClassDatasetsRef2.hashCode());
        System.assertEquals(sdtmigClassDatasetsRef3.hashCode(), sdtmigClassDatasetsRef4.hashCode());
    }
}
