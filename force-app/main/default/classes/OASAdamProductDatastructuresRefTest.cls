@isTest
private class OASAdamProductDatastructuresRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamProductDatastructuresRef adamProductDatastructuresRef1 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef2 = adamProductDatastructuresRef1;
        OASAdamProductDatastructuresRef adamProductDatastructuresRef3 = new OASAdamProductDatastructuresRef();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef4 = adamProductDatastructuresRef3;

        System.assert(adamProductDatastructuresRef1.equals(adamProductDatastructuresRef2));
        System.assert(adamProductDatastructuresRef2.equals(adamProductDatastructuresRef1));
        System.assert(adamProductDatastructuresRef1.equals(adamProductDatastructuresRef1));
        System.assert(adamProductDatastructuresRef3.equals(adamProductDatastructuresRef4));
        System.assert(adamProductDatastructuresRef4.equals(adamProductDatastructuresRef3));
        System.assert(adamProductDatastructuresRef3.equals(adamProductDatastructuresRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamProductDatastructuresRef adamProductDatastructuresRef1 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef2 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef3 = new OASAdamProductDatastructuresRef();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef4 = new OASAdamProductDatastructuresRef();

        System.assert(adamProductDatastructuresRef1.equals(adamProductDatastructuresRef2));
        System.assert(adamProductDatastructuresRef2.equals(adamProductDatastructuresRef1));
        System.assert(adamProductDatastructuresRef3.equals(adamProductDatastructuresRef4));
        System.assert(adamProductDatastructuresRef4.equals(adamProductDatastructuresRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamProductDatastructuresRef adamProductDatastructuresRef1 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef2 = new OASAdamProductDatastructuresRef();

        System.assertEquals(false, adamProductDatastructuresRef1.equals('foo'));
        System.assertEquals(false, adamProductDatastructuresRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamProductDatastructuresRef adamProductDatastructuresRef1 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef2 = new OASAdamProductDatastructuresRef();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef3;

        System.assertEquals(false, adamProductDatastructuresRef1.equals(adamProductDatastructuresRef3));
        System.assertEquals(false, adamProductDatastructuresRef2.equals(adamProductDatastructuresRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamProductDatastructuresRef adamProductDatastructuresRef1 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef2 = new OASAdamProductDatastructuresRef();

        System.assertEquals(adamProductDatastructuresRef1.hashCode(), adamProductDatastructuresRef1.hashCode());
        System.assertEquals(adamProductDatastructuresRef2.hashCode(), adamProductDatastructuresRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamProductDatastructuresRef adamProductDatastructuresRef1 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef2 = OASAdamProductDatastructuresRef.getExample();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef3 = new OASAdamProductDatastructuresRef();
        OASAdamProductDatastructuresRef adamProductDatastructuresRef4 = new OASAdamProductDatastructuresRef();

        System.assert(adamProductDatastructuresRef1.equals(adamProductDatastructuresRef2));
        System.assert(adamProductDatastructuresRef3.equals(adamProductDatastructuresRef4));
        System.assertEquals(adamProductDatastructuresRef1.hashCode(), adamProductDatastructuresRef2.hashCode());
        System.assertEquals(adamProductDatastructuresRef3.hashCode(), adamProductDatastructuresRef4.hashCode());
    }
}
