@isTest
private class OASSdtmigClassesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassesRef sdtmigClassesRef1 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef2 = sdtmigClassesRef1;
        OASSdtmigClassesRef sdtmigClassesRef3 = new OASSdtmigClassesRef();
        OASSdtmigClassesRef sdtmigClassesRef4 = sdtmigClassesRef3;

        System.assert(sdtmigClassesRef1.equals(sdtmigClassesRef2));
        System.assert(sdtmigClassesRef2.equals(sdtmigClassesRef1));
        System.assert(sdtmigClassesRef1.equals(sdtmigClassesRef1));
        System.assert(sdtmigClassesRef3.equals(sdtmigClassesRef4));
        System.assert(sdtmigClassesRef4.equals(sdtmigClassesRef3));
        System.assert(sdtmigClassesRef3.equals(sdtmigClassesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassesRef sdtmigClassesRef1 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef2 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef3 = new OASSdtmigClassesRef();
        OASSdtmigClassesRef sdtmigClassesRef4 = new OASSdtmigClassesRef();

        System.assert(sdtmigClassesRef1.equals(sdtmigClassesRef2));
        System.assert(sdtmigClassesRef2.equals(sdtmigClassesRef1));
        System.assert(sdtmigClassesRef3.equals(sdtmigClassesRef4));
        System.assert(sdtmigClassesRef4.equals(sdtmigClassesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassesRef sdtmigClassesRef1 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef2 = new OASSdtmigClassesRef();

        System.assertEquals(false, sdtmigClassesRef1.equals('foo'));
        System.assertEquals(false, sdtmigClassesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassesRef sdtmigClassesRef1 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef2 = new OASSdtmigClassesRef();
        OASSdtmigClassesRef sdtmigClassesRef3;

        System.assertEquals(false, sdtmigClassesRef1.equals(sdtmigClassesRef3));
        System.assertEquals(false, sdtmigClassesRef2.equals(sdtmigClassesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassesRef sdtmigClassesRef1 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef2 = new OASSdtmigClassesRef();

        System.assertEquals(sdtmigClassesRef1.hashCode(), sdtmigClassesRef1.hashCode());
        System.assertEquals(sdtmigClassesRef2.hashCode(), sdtmigClassesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassesRef sdtmigClassesRef1 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef2 = OASSdtmigClassesRef.getExample();
        OASSdtmigClassesRef sdtmigClassesRef3 = new OASSdtmigClassesRef();
        OASSdtmigClassesRef sdtmigClassesRef4 = new OASSdtmigClassesRef();

        System.assert(sdtmigClassesRef1.equals(sdtmigClassesRef2));
        System.assert(sdtmigClassesRef3.equals(sdtmigClassesRef4));
        System.assertEquals(sdtmigClassesRef1.hashCode(), sdtmigClassesRef2.hashCode());
        System.assertEquals(sdtmigClassesRef3.hashCode(), sdtmigClassesRef4.hashCode());
    }
}
