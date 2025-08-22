@isTest
private class OASSdtmigClassRefSubclassTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass1 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass2 = sdtmigClassRefSubclass1;
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass3 = new OASSdtmigClassRefSubclass();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass4 = sdtmigClassRefSubclass3;

        System.assert(sdtmigClassRefSubclass1.equals(sdtmigClassRefSubclass2));
        System.assert(sdtmigClassRefSubclass2.equals(sdtmigClassRefSubclass1));
        System.assert(sdtmigClassRefSubclass1.equals(sdtmigClassRefSubclass1));
        System.assert(sdtmigClassRefSubclass3.equals(sdtmigClassRefSubclass4));
        System.assert(sdtmigClassRefSubclass4.equals(sdtmigClassRefSubclass3));
        System.assert(sdtmigClassRefSubclass3.equals(sdtmigClassRefSubclass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass1 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass2 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass3 = new OASSdtmigClassRefSubclass();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass4 = new OASSdtmigClassRefSubclass();

        System.assert(sdtmigClassRefSubclass1.equals(sdtmigClassRefSubclass2));
        System.assert(sdtmigClassRefSubclass2.equals(sdtmigClassRefSubclass1));
        System.assert(sdtmigClassRefSubclass3.equals(sdtmigClassRefSubclass4));
        System.assert(sdtmigClassRefSubclass4.equals(sdtmigClassRefSubclass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass1 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass2 = new OASSdtmigClassRefSubclass();

        System.assertEquals(false, sdtmigClassRefSubclass1.equals('foo'));
        System.assertEquals(false, sdtmigClassRefSubclass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass1 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass2 = new OASSdtmigClassRefSubclass();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass3;

        System.assertEquals(false, sdtmigClassRefSubclass1.equals(sdtmigClassRefSubclass3));
        System.assertEquals(false, sdtmigClassRefSubclass2.equals(sdtmigClassRefSubclass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass1 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass2 = new OASSdtmigClassRefSubclass();

        System.assertEquals(sdtmigClassRefSubclass1.hashCode(), sdtmigClassRefSubclass1.hashCode());
        System.assertEquals(sdtmigClassRefSubclass2.hashCode(), sdtmigClassRefSubclass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass1 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass2 = OASSdtmigClassRefSubclass.getExample();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass3 = new OASSdtmigClassRefSubclass();
        OASSdtmigClassRefSubclass sdtmigClassRefSubclass4 = new OASSdtmigClassRefSubclass();

        System.assert(sdtmigClassRefSubclass1.equals(sdtmigClassRefSubclass2));
        System.assert(sdtmigClassRefSubclass3.equals(sdtmigClassRefSubclass4));
        System.assertEquals(sdtmigClassRefSubclass1.hashCode(), sdtmigClassRefSubclass2.hashCode());
        System.assertEquals(sdtmigClassRefSubclass3.hashCode(), sdtmigClassRefSubclass4.hashCode());
    }
}
