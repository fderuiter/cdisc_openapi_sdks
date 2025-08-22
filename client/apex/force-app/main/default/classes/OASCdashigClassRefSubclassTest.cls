@isTest
private class OASCdashigClassRefSubclassTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassRefSubclass cdashigClassRefSubclass1 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass2 = cdashigClassRefSubclass1;
        OASCdashigClassRefSubclass cdashigClassRefSubclass3 = new OASCdashigClassRefSubclass();
        OASCdashigClassRefSubclass cdashigClassRefSubclass4 = cdashigClassRefSubclass3;

        System.assert(cdashigClassRefSubclass1.equals(cdashigClassRefSubclass2));
        System.assert(cdashigClassRefSubclass2.equals(cdashigClassRefSubclass1));
        System.assert(cdashigClassRefSubclass1.equals(cdashigClassRefSubclass1));
        System.assert(cdashigClassRefSubclass3.equals(cdashigClassRefSubclass4));
        System.assert(cdashigClassRefSubclass4.equals(cdashigClassRefSubclass3));
        System.assert(cdashigClassRefSubclass3.equals(cdashigClassRefSubclass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassRefSubclass cdashigClassRefSubclass1 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass2 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass3 = new OASCdashigClassRefSubclass();
        OASCdashigClassRefSubclass cdashigClassRefSubclass4 = new OASCdashigClassRefSubclass();

        System.assert(cdashigClassRefSubclass1.equals(cdashigClassRefSubclass2));
        System.assert(cdashigClassRefSubclass2.equals(cdashigClassRefSubclass1));
        System.assert(cdashigClassRefSubclass3.equals(cdashigClassRefSubclass4));
        System.assert(cdashigClassRefSubclass4.equals(cdashigClassRefSubclass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassRefSubclass cdashigClassRefSubclass1 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass2 = new OASCdashigClassRefSubclass();

        System.assertEquals(false, cdashigClassRefSubclass1.equals('foo'));
        System.assertEquals(false, cdashigClassRefSubclass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassRefSubclass cdashigClassRefSubclass1 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass2 = new OASCdashigClassRefSubclass();
        OASCdashigClassRefSubclass cdashigClassRefSubclass3;

        System.assertEquals(false, cdashigClassRefSubclass1.equals(cdashigClassRefSubclass3));
        System.assertEquals(false, cdashigClassRefSubclass2.equals(cdashigClassRefSubclass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassRefSubclass cdashigClassRefSubclass1 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass2 = new OASCdashigClassRefSubclass();

        System.assertEquals(cdashigClassRefSubclass1.hashCode(), cdashigClassRefSubclass1.hashCode());
        System.assertEquals(cdashigClassRefSubclass2.hashCode(), cdashigClassRefSubclass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassRefSubclass cdashigClassRefSubclass1 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass2 = OASCdashigClassRefSubclass.getExample();
        OASCdashigClassRefSubclass cdashigClassRefSubclass3 = new OASCdashigClassRefSubclass();
        OASCdashigClassRefSubclass cdashigClassRefSubclass4 = new OASCdashigClassRefSubclass();

        System.assert(cdashigClassRefSubclass1.equals(cdashigClassRefSubclass2));
        System.assert(cdashigClassRefSubclass3.equals(cdashigClassRefSubclass4));
        System.assertEquals(cdashigClassRefSubclass1.hashCode(), cdashigClassRefSubclass2.hashCode());
        System.assertEquals(cdashigClassRefSubclass3.hashCode(), cdashigClassRefSubclass4.hashCode());
    }
}
