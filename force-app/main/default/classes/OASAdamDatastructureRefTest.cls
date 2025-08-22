@isTest
private class OASAdamDatastructureRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureRef adamDatastructureRef1 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef2 = adamDatastructureRef1;
        OASAdamDatastructureRef adamDatastructureRef3 = new OASAdamDatastructureRef();
        OASAdamDatastructureRef adamDatastructureRef4 = adamDatastructureRef3;

        System.assert(adamDatastructureRef1.equals(adamDatastructureRef2));
        System.assert(adamDatastructureRef2.equals(adamDatastructureRef1));
        System.assert(adamDatastructureRef1.equals(adamDatastructureRef1));
        System.assert(adamDatastructureRef3.equals(adamDatastructureRef4));
        System.assert(adamDatastructureRef4.equals(adamDatastructureRef3));
        System.assert(adamDatastructureRef3.equals(adamDatastructureRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureRef adamDatastructureRef1 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef2 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef3 = new OASAdamDatastructureRef();
        OASAdamDatastructureRef adamDatastructureRef4 = new OASAdamDatastructureRef();

        System.assert(adamDatastructureRef1.equals(adamDatastructureRef2));
        System.assert(adamDatastructureRef2.equals(adamDatastructureRef1));
        System.assert(adamDatastructureRef3.equals(adamDatastructureRef4));
        System.assert(adamDatastructureRef4.equals(adamDatastructureRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureRef adamDatastructureRef1 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef2 = new OASAdamDatastructureRef();

        System.assertEquals(false, adamDatastructureRef1.equals('foo'));
        System.assertEquals(false, adamDatastructureRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureRef adamDatastructureRef1 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef2 = new OASAdamDatastructureRef();
        OASAdamDatastructureRef adamDatastructureRef3;

        System.assertEquals(false, adamDatastructureRef1.equals(adamDatastructureRef3));
        System.assertEquals(false, adamDatastructureRef2.equals(adamDatastructureRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureRef adamDatastructureRef1 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef2 = new OASAdamDatastructureRef();

        System.assertEquals(adamDatastructureRef1.hashCode(), adamDatastructureRef1.hashCode());
        System.assertEquals(adamDatastructureRef2.hashCode(), adamDatastructureRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureRef adamDatastructureRef1 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef2 = OASAdamDatastructureRef.getExample();
        OASAdamDatastructureRef adamDatastructureRef3 = new OASAdamDatastructureRef();
        OASAdamDatastructureRef adamDatastructureRef4 = new OASAdamDatastructureRef();

        System.assert(adamDatastructureRef1.equals(adamDatastructureRef2));
        System.assert(adamDatastructureRef3.equals(adamDatastructureRef4));
        System.assertEquals(adamDatastructureRef1.hashCode(), adamDatastructureRef2.hashCode());
        System.assertEquals(adamDatastructureRef3.hashCode(), adamDatastructureRef4.hashCode());
    }
}
