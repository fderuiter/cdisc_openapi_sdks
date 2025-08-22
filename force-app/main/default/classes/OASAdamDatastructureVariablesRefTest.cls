@isTest
private class OASAdamDatastructureVariablesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef1 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef2 = adamDatastructureVariablesRef1;
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef3 = new OASAdamDatastructureVariablesRef();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef4 = adamDatastructureVariablesRef3;

        System.assert(adamDatastructureVariablesRef1.equals(adamDatastructureVariablesRef2));
        System.assert(adamDatastructureVariablesRef2.equals(adamDatastructureVariablesRef1));
        System.assert(adamDatastructureVariablesRef1.equals(adamDatastructureVariablesRef1));
        System.assert(adamDatastructureVariablesRef3.equals(adamDatastructureVariablesRef4));
        System.assert(adamDatastructureVariablesRef4.equals(adamDatastructureVariablesRef3));
        System.assert(adamDatastructureVariablesRef3.equals(adamDatastructureVariablesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef1 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef2 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef3 = new OASAdamDatastructureVariablesRef();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef4 = new OASAdamDatastructureVariablesRef();

        System.assert(adamDatastructureVariablesRef1.equals(adamDatastructureVariablesRef2));
        System.assert(adamDatastructureVariablesRef2.equals(adamDatastructureVariablesRef1));
        System.assert(adamDatastructureVariablesRef3.equals(adamDatastructureVariablesRef4));
        System.assert(adamDatastructureVariablesRef4.equals(adamDatastructureVariablesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef1 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef2 = new OASAdamDatastructureVariablesRef();

        System.assertEquals(false, adamDatastructureVariablesRef1.equals('foo'));
        System.assertEquals(false, adamDatastructureVariablesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef1 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef2 = new OASAdamDatastructureVariablesRef();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef3;

        System.assertEquals(false, adamDatastructureVariablesRef1.equals(adamDatastructureVariablesRef3));
        System.assertEquals(false, adamDatastructureVariablesRef2.equals(adamDatastructureVariablesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef1 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef2 = new OASAdamDatastructureVariablesRef();

        System.assertEquals(adamDatastructureVariablesRef1.hashCode(), adamDatastructureVariablesRef1.hashCode());
        System.assertEquals(adamDatastructureVariablesRef2.hashCode(), adamDatastructureVariablesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef1 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef2 = OASAdamDatastructureVariablesRef.getExample();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef3 = new OASAdamDatastructureVariablesRef();
        OASAdamDatastructureVariablesRef adamDatastructureVariablesRef4 = new OASAdamDatastructureVariablesRef();

        System.assert(adamDatastructureVariablesRef1.equals(adamDatastructureVariablesRef2));
        System.assert(adamDatastructureVariablesRef3.equals(adamDatastructureVariablesRef4));
        System.assertEquals(adamDatastructureVariablesRef1.hashCode(), adamDatastructureVariablesRef2.hashCode());
        System.assertEquals(adamDatastructureVariablesRef3.hashCode(), adamDatastructureVariablesRef4.hashCode());
    }
}
