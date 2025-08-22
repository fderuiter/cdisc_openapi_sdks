@isTest
private class OASProductgroupRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupRef productgroupRef1 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef2 = productgroupRef1;
        OASProductgroupRef productgroupRef3 = new OASProductgroupRef();
        OASProductgroupRef productgroupRef4 = productgroupRef3;

        System.assert(productgroupRef1.equals(productgroupRef2));
        System.assert(productgroupRef2.equals(productgroupRef1));
        System.assert(productgroupRef1.equals(productgroupRef1));
        System.assert(productgroupRef3.equals(productgroupRef4));
        System.assert(productgroupRef4.equals(productgroupRef3));
        System.assert(productgroupRef3.equals(productgroupRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupRef productgroupRef1 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef2 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef3 = new OASProductgroupRef();
        OASProductgroupRef productgroupRef4 = new OASProductgroupRef();

        System.assert(productgroupRef1.equals(productgroupRef2));
        System.assert(productgroupRef2.equals(productgroupRef1));
        System.assert(productgroupRef3.equals(productgroupRef4));
        System.assert(productgroupRef4.equals(productgroupRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupRef productgroupRef1 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef2 = new OASProductgroupRef();

        System.assertEquals(false, productgroupRef1.equals('foo'));
        System.assertEquals(false, productgroupRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupRef productgroupRef1 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef2 = new OASProductgroupRef();
        OASProductgroupRef productgroupRef3;

        System.assertEquals(false, productgroupRef1.equals(productgroupRef3));
        System.assertEquals(false, productgroupRef2.equals(productgroupRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupRef productgroupRef1 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef2 = new OASProductgroupRef();

        System.assertEquals(productgroupRef1.hashCode(), productgroupRef1.hashCode());
        System.assertEquals(productgroupRef2.hashCode(), productgroupRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupRef productgroupRef1 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef2 = OASProductgroupRef.getExample();
        OASProductgroupRef productgroupRef3 = new OASProductgroupRef();
        OASProductgroupRef productgroupRef4 = new OASProductgroupRef();

        System.assert(productgroupRef1.equals(productgroupRef2));
        System.assert(productgroupRef3.equals(productgroupRef4));
        System.assertEquals(productgroupRef1.hashCode(), productgroupRef2.hashCode());
        System.assertEquals(productgroupRef3.hashCode(), productgroupRef4.hashCode());
    }
}
