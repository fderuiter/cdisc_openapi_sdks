@isTest
private class OASSdtmClassRefSubclassTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassRefSubclass sdtmClassRefSubclass1 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass2 = sdtmClassRefSubclass1;
        OASSdtmClassRefSubclass sdtmClassRefSubclass3 = new OASSdtmClassRefSubclass();
        OASSdtmClassRefSubclass sdtmClassRefSubclass4 = sdtmClassRefSubclass3;

        System.assert(sdtmClassRefSubclass1.equals(sdtmClassRefSubclass2));
        System.assert(sdtmClassRefSubclass2.equals(sdtmClassRefSubclass1));
        System.assert(sdtmClassRefSubclass1.equals(sdtmClassRefSubclass1));
        System.assert(sdtmClassRefSubclass3.equals(sdtmClassRefSubclass4));
        System.assert(sdtmClassRefSubclass4.equals(sdtmClassRefSubclass3));
        System.assert(sdtmClassRefSubclass3.equals(sdtmClassRefSubclass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassRefSubclass sdtmClassRefSubclass1 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass2 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass3 = new OASSdtmClassRefSubclass();
        OASSdtmClassRefSubclass sdtmClassRefSubclass4 = new OASSdtmClassRefSubclass();

        System.assert(sdtmClassRefSubclass1.equals(sdtmClassRefSubclass2));
        System.assert(sdtmClassRefSubclass2.equals(sdtmClassRefSubclass1));
        System.assert(sdtmClassRefSubclass3.equals(sdtmClassRefSubclass4));
        System.assert(sdtmClassRefSubclass4.equals(sdtmClassRefSubclass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassRefSubclass sdtmClassRefSubclass1 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass2 = new OASSdtmClassRefSubclass();

        System.assertEquals(false, sdtmClassRefSubclass1.equals('foo'));
        System.assertEquals(false, sdtmClassRefSubclass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassRefSubclass sdtmClassRefSubclass1 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass2 = new OASSdtmClassRefSubclass();
        OASSdtmClassRefSubclass sdtmClassRefSubclass3;

        System.assertEquals(false, sdtmClassRefSubclass1.equals(sdtmClassRefSubclass3));
        System.assertEquals(false, sdtmClassRefSubclass2.equals(sdtmClassRefSubclass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassRefSubclass sdtmClassRefSubclass1 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass2 = new OASSdtmClassRefSubclass();

        System.assertEquals(sdtmClassRefSubclass1.hashCode(), sdtmClassRefSubclass1.hashCode());
        System.assertEquals(sdtmClassRefSubclass2.hashCode(), sdtmClassRefSubclass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassRefSubclass sdtmClassRefSubclass1 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass2 = OASSdtmClassRefSubclass.getExample();
        OASSdtmClassRefSubclass sdtmClassRefSubclass3 = new OASSdtmClassRefSubclass();
        OASSdtmClassRefSubclass sdtmClassRefSubclass4 = new OASSdtmClassRefSubclass();

        System.assert(sdtmClassRefSubclass1.equals(sdtmClassRefSubclass2));
        System.assert(sdtmClassRefSubclass3.equals(sdtmClassRefSubclass4));
        System.assertEquals(sdtmClassRefSubclass1.hashCode(), sdtmClassRefSubclass2.hashCode());
        System.assertEquals(sdtmClassRefSubclass3.hashCode(), sdtmClassRefSubclass4.hashCode());
    }
}
