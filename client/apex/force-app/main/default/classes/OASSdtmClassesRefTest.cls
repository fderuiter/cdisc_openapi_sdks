@isTest
private class OASSdtmClassesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassesRef sdtmClassesRef1 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef2 = sdtmClassesRef1;
        OASSdtmClassesRef sdtmClassesRef3 = new OASSdtmClassesRef();
        OASSdtmClassesRef sdtmClassesRef4 = sdtmClassesRef3;

        System.assert(sdtmClassesRef1.equals(sdtmClassesRef2));
        System.assert(sdtmClassesRef2.equals(sdtmClassesRef1));
        System.assert(sdtmClassesRef1.equals(sdtmClassesRef1));
        System.assert(sdtmClassesRef3.equals(sdtmClassesRef4));
        System.assert(sdtmClassesRef4.equals(sdtmClassesRef3));
        System.assert(sdtmClassesRef3.equals(sdtmClassesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassesRef sdtmClassesRef1 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef2 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef3 = new OASSdtmClassesRef();
        OASSdtmClassesRef sdtmClassesRef4 = new OASSdtmClassesRef();

        System.assert(sdtmClassesRef1.equals(sdtmClassesRef2));
        System.assert(sdtmClassesRef2.equals(sdtmClassesRef1));
        System.assert(sdtmClassesRef3.equals(sdtmClassesRef4));
        System.assert(sdtmClassesRef4.equals(sdtmClassesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassesRef sdtmClassesRef1 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef2 = new OASSdtmClassesRef();

        System.assertEquals(false, sdtmClassesRef1.equals('foo'));
        System.assertEquals(false, sdtmClassesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassesRef sdtmClassesRef1 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef2 = new OASSdtmClassesRef();
        OASSdtmClassesRef sdtmClassesRef3;

        System.assertEquals(false, sdtmClassesRef1.equals(sdtmClassesRef3));
        System.assertEquals(false, sdtmClassesRef2.equals(sdtmClassesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassesRef sdtmClassesRef1 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef2 = new OASSdtmClassesRef();

        System.assertEquals(sdtmClassesRef1.hashCode(), sdtmClassesRef1.hashCode());
        System.assertEquals(sdtmClassesRef2.hashCode(), sdtmClassesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassesRef sdtmClassesRef1 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef2 = OASSdtmClassesRef.getExample();
        OASSdtmClassesRef sdtmClassesRef3 = new OASSdtmClassesRef();
        OASSdtmClassesRef sdtmClassesRef4 = new OASSdtmClassesRef();

        System.assert(sdtmClassesRef1.equals(sdtmClassesRef2));
        System.assert(sdtmClassesRef3.equals(sdtmClassesRef4));
        System.assertEquals(sdtmClassesRef1.hashCode(), sdtmClassesRef2.hashCode());
        System.assertEquals(sdtmClassesRef3.hashCode(), sdtmClassesRef4.hashCode());
    }
}
