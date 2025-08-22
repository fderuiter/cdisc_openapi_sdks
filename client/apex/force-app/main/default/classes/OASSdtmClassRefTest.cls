@isTest
private class OASSdtmClassRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassRef sdtmClassRef1 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef2 = sdtmClassRef1;
        OASSdtmClassRef sdtmClassRef3 = new OASSdtmClassRef();
        OASSdtmClassRef sdtmClassRef4 = sdtmClassRef3;

        System.assert(sdtmClassRef1.equals(sdtmClassRef2));
        System.assert(sdtmClassRef2.equals(sdtmClassRef1));
        System.assert(sdtmClassRef1.equals(sdtmClassRef1));
        System.assert(sdtmClassRef3.equals(sdtmClassRef4));
        System.assert(sdtmClassRef4.equals(sdtmClassRef3));
        System.assert(sdtmClassRef3.equals(sdtmClassRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassRef sdtmClassRef1 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef2 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef3 = new OASSdtmClassRef();
        OASSdtmClassRef sdtmClassRef4 = new OASSdtmClassRef();

        System.assert(sdtmClassRef1.equals(sdtmClassRef2));
        System.assert(sdtmClassRef2.equals(sdtmClassRef1));
        System.assert(sdtmClassRef3.equals(sdtmClassRef4));
        System.assert(sdtmClassRef4.equals(sdtmClassRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassRef sdtmClassRef1 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef2 = new OASSdtmClassRef();

        System.assertEquals(false, sdtmClassRef1.equals('foo'));
        System.assertEquals(false, sdtmClassRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassRef sdtmClassRef1 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef2 = new OASSdtmClassRef();
        OASSdtmClassRef sdtmClassRef3;

        System.assertEquals(false, sdtmClassRef1.equals(sdtmClassRef3));
        System.assertEquals(false, sdtmClassRef2.equals(sdtmClassRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassRef sdtmClassRef1 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef2 = new OASSdtmClassRef();

        System.assertEquals(sdtmClassRef1.hashCode(), sdtmClassRef1.hashCode());
        System.assertEquals(sdtmClassRef2.hashCode(), sdtmClassRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassRef sdtmClassRef1 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef2 = OASSdtmClassRef.getExample();
        OASSdtmClassRef sdtmClassRef3 = new OASSdtmClassRef();
        OASSdtmClassRef sdtmClassRef4 = new OASSdtmClassRef();

        System.assert(sdtmClassRef1.equals(sdtmClassRef2));
        System.assert(sdtmClassRef3.equals(sdtmClassRef4));
        System.assertEquals(sdtmClassRef1.hashCode(), sdtmClassRef2.hashCode());
        System.assertEquals(sdtmClassRef3.hashCode(), sdtmClassRef4.hashCode());
    }
}
