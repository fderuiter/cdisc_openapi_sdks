@isTest
private class OASAdamVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVariableRef adamVariableRef1 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef2 = adamVariableRef1;
        OASAdamVariableRef adamVariableRef3 = new OASAdamVariableRef();
        OASAdamVariableRef adamVariableRef4 = adamVariableRef3;

        System.assert(adamVariableRef1.equals(adamVariableRef2));
        System.assert(adamVariableRef2.equals(adamVariableRef1));
        System.assert(adamVariableRef1.equals(adamVariableRef1));
        System.assert(adamVariableRef3.equals(adamVariableRef4));
        System.assert(adamVariableRef4.equals(adamVariableRef3));
        System.assert(adamVariableRef3.equals(adamVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVariableRef adamVariableRef1 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef2 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef3 = new OASAdamVariableRef();
        OASAdamVariableRef adamVariableRef4 = new OASAdamVariableRef();

        System.assert(adamVariableRef1.equals(adamVariableRef2));
        System.assert(adamVariableRef2.equals(adamVariableRef1));
        System.assert(adamVariableRef3.equals(adamVariableRef4));
        System.assert(adamVariableRef4.equals(adamVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVariableRef adamVariableRef1 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef2 = new OASAdamVariableRef();

        System.assertEquals(false, adamVariableRef1.equals('foo'));
        System.assertEquals(false, adamVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVariableRef adamVariableRef1 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef2 = new OASAdamVariableRef();
        OASAdamVariableRef adamVariableRef3;

        System.assertEquals(false, adamVariableRef1.equals(adamVariableRef3));
        System.assertEquals(false, adamVariableRef2.equals(adamVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVariableRef adamVariableRef1 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef2 = new OASAdamVariableRef();

        System.assertEquals(adamVariableRef1.hashCode(), adamVariableRef1.hashCode());
        System.assertEquals(adamVariableRef2.hashCode(), adamVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVariableRef adamVariableRef1 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef2 = OASAdamVariableRef.getExample();
        OASAdamVariableRef adamVariableRef3 = new OASAdamVariableRef();
        OASAdamVariableRef adamVariableRef4 = new OASAdamVariableRef();

        System.assert(adamVariableRef1.equals(adamVariableRef2));
        System.assert(adamVariableRef3.equals(adamVariableRef4));
        System.assertEquals(adamVariableRef1.hashCode(), adamVariableRef2.hashCode());
        System.assertEquals(adamVariableRef3.hashCode(), adamVariableRef4.hashCode());
    }
}
