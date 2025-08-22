@isTest
private class OASAdamVarsetRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVarsetRef adamVarsetRef1 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef2 = adamVarsetRef1;
        OASAdamVarsetRef adamVarsetRef3 = new OASAdamVarsetRef();
        OASAdamVarsetRef adamVarsetRef4 = adamVarsetRef3;

        System.assert(adamVarsetRef1.equals(adamVarsetRef2));
        System.assert(adamVarsetRef2.equals(adamVarsetRef1));
        System.assert(adamVarsetRef1.equals(adamVarsetRef1));
        System.assert(adamVarsetRef3.equals(adamVarsetRef4));
        System.assert(adamVarsetRef4.equals(adamVarsetRef3));
        System.assert(adamVarsetRef3.equals(adamVarsetRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVarsetRef adamVarsetRef1 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef2 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef3 = new OASAdamVarsetRef();
        OASAdamVarsetRef adamVarsetRef4 = new OASAdamVarsetRef();

        System.assert(adamVarsetRef1.equals(adamVarsetRef2));
        System.assert(adamVarsetRef2.equals(adamVarsetRef1));
        System.assert(adamVarsetRef3.equals(adamVarsetRef4));
        System.assert(adamVarsetRef4.equals(adamVarsetRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVarsetRef adamVarsetRef1 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef2 = new OASAdamVarsetRef();

        System.assertEquals(false, adamVarsetRef1.equals('foo'));
        System.assertEquals(false, adamVarsetRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVarsetRef adamVarsetRef1 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef2 = new OASAdamVarsetRef();
        OASAdamVarsetRef adamVarsetRef3;

        System.assertEquals(false, adamVarsetRef1.equals(adamVarsetRef3));
        System.assertEquals(false, adamVarsetRef2.equals(adamVarsetRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVarsetRef adamVarsetRef1 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef2 = new OASAdamVarsetRef();

        System.assertEquals(adamVarsetRef1.hashCode(), adamVarsetRef1.hashCode());
        System.assertEquals(adamVarsetRef2.hashCode(), adamVarsetRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVarsetRef adamVarsetRef1 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef2 = OASAdamVarsetRef.getExample();
        OASAdamVarsetRef adamVarsetRef3 = new OASAdamVarsetRef();
        OASAdamVarsetRef adamVarsetRef4 = new OASAdamVarsetRef();

        System.assert(adamVarsetRef1.equals(adamVarsetRef2));
        System.assert(adamVarsetRef3.equals(adamVarsetRef4));
        System.assertEquals(adamVarsetRef1.hashCode(), adamVarsetRef2.hashCode());
        System.assertEquals(adamVarsetRef3.hashCode(), adamVarsetRef4.hashCode());
    }
}
