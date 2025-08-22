@isTest
private class OASLastupdatedRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASLastupdatedRef lastupdatedRef1 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef2 = lastupdatedRef1;
        OASLastupdatedRef lastupdatedRef3 = new OASLastupdatedRef();
        OASLastupdatedRef lastupdatedRef4 = lastupdatedRef3;

        System.assert(lastupdatedRef1.equals(lastupdatedRef2));
        System.assert(lastupdatedRef2.equals(lastupdatedRef1));
        System.assert(lastupdatedRef1.equals(lastupdatedRef1));
        System.assert(lastupdatedRef3.equals(lastupdatedRef4));
        System.assert(lastupdatedRef4.equals(lastupdatedRef3));
        System.assert(lastupdatedRef3.equals(lastupdatedRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLastupdatedRef lastupdatedRef1 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef2 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef3 = new OASLastupdatedRef();
        OASLastupdatedRef lastupdatedRef4 = new OASLastupdatedRef();

        System.assert(lastupdatedRef1.equals(lastupdatedRef2));
        System.assert(lastupdatedRef2.equals(lastupdatedRef1));
        System.assert(lastupdatedRef3.equals(lastupdatedRef4));
        System.assert(lastupdatedRef4.equals(lastupdatedRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLastupdatedRef lastupdatedRef1 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef2 = new OASLastupdatedRef();

        System.assertEquals(false, lastupdatedRef1.equals('foo'));
        System.assertEquals(false, lastupdatedRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLastupdatedRef lastupdatedRef1 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef2 = new OASLastupdatedRef();
        OASLastupdatedRef lastupdatedRef3;

        System.assertEquals(false, lastupdatedRef1.equals(lastupdatedRef3));
        System.assertEquals(false, lastupdatedRef2.equals(lastupdatedRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLastupdatedRef lastupdatedRef1 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef2 = new OASLastupdatedRef();

        System.assertEquals(lastupdatedRef1.hashCode(), lastupdatedRef1.hashCode());
        System.assertEquals(lastupdatedRef2.hashCode(), lastupdatedRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLastupdatedRef lastupdatedRef1 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef2 = OASLastupdatedRef.getExample();
        OASLastupdatedRef lastupdatedRef3 = new OASLastupdatedRef();
        OASLastupdatedRef lastupdatedRef4 = new OASLastupdatedRef();

        System.assert(lastupdatedRef1.equals(lastupdatedRef2));
        System.assert(lastupdatedRef3.equals(lastupdatedRef4));
        System.assertEquals(lastupdatedRef1.hashCode(), lastupdatedRef2.hashCode());
        System.assertEquals(lastupdatedRef3.hashCode(), lastupdatedRef4.hashCode());
    }
}
