@isTest
private class OASAdamDatastructureVarsetsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef1 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef2 = adamDatastructureVarsetsRef1;
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef3 = new OASAdamDatastructureVarsetsRef();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef4 = adamDatastructureVarsetsRef3;

        System.assert(adamDatastructureVarsetsRef1.equals(adamDatastructureVarsetsRef2));
        System.assert(adamDatastructureVarsetsRef2.equals(adamDatastructureVarsetsRef1));
        System.assert(adamDatastructureVarsetsRef1.equals(adamDatastructureVarsetsRef1));
        System.assert(adamDatastructureVarsetsRef3.equals(adamDatastructureVarsetsRef4));
        System.assert(adamDatastructureVarsetsRef4.equals(adamDatastructureVarsetsRef3));
        System.assert(adamDatastructureVarsetsRef3.equals(adamDatastructureVarsetsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef1 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef2 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef3 = new OASAdamDatastructureVarsetsRef();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef4 = new OASAdamDatastructureVarsetsRef();

        System.assert(adamDatastructureVarsetsRef1.equals(adamDatastructureVarsetsRef2));
        System.assert(adamDatastructureVarsetsRef2.equals(adamDatastructureVarsetsRef1));
        System.assert(adamDatastructureVarsetsRef3.equals(adamDatastructureVarsetsRef4));
        System.assert(adamDatastructureVarsetsRef4.equals(adamDatastructureVarsetsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef1 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef2 = new OASAdamDatastructureVarsetsRef();

        System.assertEquals(false, adamDatastructureVarsetsRef1.equals('foo'));
        System.assertEquals(false, adamDatastructureVarsetsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef1 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef2 = new OASAdamDatastructureVarsetsRef();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef3;

        System.assertEquals(false, adamDatastructureVarsetsRef1.equals(adamDatastructureVarsetsRef3));
        System.assertEquals(false, adamDatastructureVarsetsRef2.equals(adamDatastructureVarsetsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef1 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef2 = new OASAdamDatastructureVarsetsRef();

        System.assertEquals(adamDatastructureVarsetsRef1.hashCode(), adamDatastructureVarsetsRef1.hashCode());
        System.assertEquals(adamDatastructureVarsetsRef2.hashCode(), adamDatastructureVarsetsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef1 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef2 = OASAdamDatastructureVarsetsRef.getExample();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef3 = new OASAdamDatastructureVarsetsRef();
        OASAdamDatastructureVarsetsRef adamDatastructureVarsetsRef4 = new OASAdamDatastructureVarsetsRef();

        System.assert(adamDatastructureVarsetsRef1.equals(adamDatastructureVarsetsRef2));
        System.assert(adamDatastructureVarsetsRef3.equals(adamDatastructureVarsetsRef4));
        System.assertEquals(adamDatastructureVarsetsRef1.hashCode(), adamDatastructureVarsetsRef2.hashCode());
        System.assertEquals(adamDatastructureVarsetsRef3.hashCode(), adamDatastructureVarsetsRef4.hashCode());
    }
}
