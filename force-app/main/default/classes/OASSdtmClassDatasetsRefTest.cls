@isTest
private class OASSdtmClassDatasetsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef1 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef2 = sdtmClassDatasetsRef1;
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef3 = new OASSdtmClassDatasetsRef();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef4 = sdtmClassDatasetsRef3;

        System.assert(sdtmClassDatasetsRef1.equals(sdtmClassDatasetsRef2));
        System.assert(sdtmClassDatasetsRef2.equals(sdtmClassDatasetsRef1));
        System.assert(sdtmClassDatasetsRef1.equals(sdtmClassDatasetsRef1));
        System.assert(sdtmClassDatasetsRef3.equals(sdtmClassDatasetsRef4));
        System.assert(sdtmClassDatasetsRef4.equals(sdtmClassDatasetsRef3));
        System.assert(sdtmClassDatasetsRef3.equals(sdtmClassDatasetsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef1 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef2 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef3 = new OASSdtmClassDatasetsRef();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef4 = new OASSdtmClassDatasetsRef();

        System.assert(sdtmClassDatasetsRef1.equals(sdtmClassDatasetsRef2));
        System.assert(sdtmClassDatasetsRef2.equals(sdtmClassDatasetsRef1));
        System.assert(sdtmClassDatasetsRef3.equals(sdtmClassDatasetsRef4));
        System.assert(sdtmClassDatasetsRef4.equals(sdtmClassDatasetsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef1 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef2 = new OASSdtmClassDatasetsRef();

        System.assertEquals(false, sdtmClassDatasetsRef1.equals('foo'));
        System.assertEquals(false, sdtmClassDatasetsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef1 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef2 = new OASSdtmClassDatasetsRef();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef3;

        System.assertEquals(false, sdtmClassDatasetsRef1.equals(sdtmClassDatasetsRef3));
        System.assertEquals(false, sdtmClassDatasetsRef2.equals(sdtmClassDatasetsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef1 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef2 = new OASSdtmClassDatasetsRef();

        System.assertEquals(sdtmClassDatasetsRef1.hashCode(), sdtmClassDatasetsRef1.hashCode());
        System.assertEquals(sdtmClassDatasetsRef2.hashCode(), sdtmClassDatasetsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef1 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef2 = OASSdtmClassDatasetsRef.getExample();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef3 = new OASSdtmClassDatasetsRef();
        OASSdtmClassDatasetsRef sdtmClassDatasetsRef4 = new OASSdtmClassDatasetsRef();

        System.assert(sdtmClassDatasetsRef1.equals(sdtmClassDatasetsRef2));
        System.assert(sdtmClassDatasetsRef3.equals(sdtmClassDatasetsRef4));
        System.assertEquals(sdtmClassDatasetsRef1.hashCode(), sdtmClassDatasetsRef2.hashCode());
        System.assertEquals(sdtmClassDatasetsRef3.hashCode(), sdtmClassDatasetsRef4.hashCode());
    }
}
