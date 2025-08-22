@isTest
private class OASAdamProductRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamProductRef adamProductRef1 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef2 = adamProductRef1;
        OASAdamProductRef adamProductRef3 = new OASAdamProductRef();
        OASAdamProductRef adamProductRef4 = adamProductRef3;

        System.assert(adamProductRef1.equals(adamProductRef2));
        System.assert(adamProductRef2.equals(adamProductRef1));
        System.assert(adamProductRef1.equals(adamProductRef1));
        System.assert(adamProductRef3.equals(adamProductRef4));
        System.assert(adamProductRef4.equals(adamProductRef3));
        System.assert(adamProductRef3.equals(adamProductRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamProductRef adamProductRef1 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef2 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef3 = new OASAdamProductRef();
        OASAdamProductRef adamProductRef4 = new OASAdamProductRef();

        System.assert(adamProductRef1.equals(adamProductRef2));
        System.assert(adamProductRef2.equals(adamProductRef1));
        System.assert(adamProductRef3.equals(adamProductRef4));
        System.assert(adamProductRef4.equals(adamProductRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamProductRef adamProductRef1 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef2 = new OASAdamProductRef();

        System.assertEquals(false, adamProductRef1.equals('foo'));
        System.assertEquals(false, adamProductRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamProductRef adamProductRef1 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef2 = new OASAdamProductRef();
        OASAdamProductRef adamProductRef3;

        System.assertEquals(false, adamProductRef1.equals(adamProductRef3));
        System.assertEquals(false, adamProductRef2.equals(adamProductRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamProductRef adamProductRef1 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef2 = new OASAdamProductRef();

        System.assertEquals(adamProductRef1.hashCode(), adamProductRef1.hashCode());
        System.assertEquals(adamProductRef2.hashCode(), adamProductRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamProductRef adamProductRef1 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef2 = OASAdamProductRef.getExample();
        OASAdamProductRef adamProductRef3 = new OASAdamProductRef();
        OASAdamProductRef adamProductRef4 = new OASAdamProductRef();

        System.assert(adamProductRef1.equals(adamProductRef2));
        System.assert(adamProductRef3.equals(adamProductRef4));
        System.assertEquals(adamProductRef1.hashCode(), adamProductRef2.hashCode());
        System.assertEquals(adamProductRef3.hashCode(), adamProductRef4.hashCode());
    }
}
