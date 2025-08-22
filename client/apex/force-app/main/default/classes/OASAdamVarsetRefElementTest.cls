@isTest
private class OASAdamVarsetRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVarsetRefElement adamVarsetRefElement1 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement2 = adamVarsetRefElement1;
        OASAdamVarsetRefElement adamVarsetRefElement3 = new OASAdamVarsetRefElement();
        OASAdamVarsetRefElement adamVarsetRefElement4 = adamVarsetRefElement3;

        System.assert(adamVarsetRefElement1.equals(adamVarsetRefElement2));
        System.assert(adamVarsetRefElement2.equals(adamVarsetRefElement1));
        System.assert(adamVarsetRefElement1.equals(adamVarsetRefElement1));
        System.assert(adamVarsetRefElement3.equals(adamVarsetRefElement4));
        System.assert(adamVarsetRefElement4.equals(adamVarsetRefElement3));
        System.assert(adamVarsetRefElement3.equals(adamVarsetRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVarsetRefElement adamVarsetRefElement1 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement2 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement3 = new OASAdamVarsetRefElement();
        OASAdamVarsetRefElement adamVarsetRefElement4 = new OASAdamVarsetRefElement();

        System.assert(adamVarsetRefElement1.equals(adamVarsetRefElement2));
        System.assert(adamVarsetRefElement2.equals(adamVarsetRefElement1));
        System.assert(adamVarsetRefElement3.equals(adamVarsetRefElement4));
        System.assert(adamVarsetRefElement4.equals(adamVarsetRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVarsetRefElement adamVarsetRefElement1 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement2 = new OASAdamVarsetRefElement();

        System.assertEquals(false, adamVarsetRefElement1.equals('foo'));
        System.assertEquals(false, adamVarsetRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVarsetRefElement adamVarsetRefElement1 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement2 = new OASAdamVarsetRefElement();
        OASAdamVarsetRefElement adamVarsetRefElement3;

        System.assertEquals(false, adamVarsetRefElement1.equals(adamVarsetRefElement3));
        System.assertEquals(false, adamVarsetRefElement2.equals(adamVarsetRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVarsetRefElement adamVarsetRefElement1 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement2 = new OASAdamVarsetRefElement();

        System.assertEquals(adamVarsetRefElement1.hashCode(), adamVarsetRefElement1.hashCode());
        System.assertEquals(adamVarsetRefElement2.hashCode(), adamVarsetRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVarsetRefElement adamVarsetRefElement1 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement2 = OASAdamVarsetRefElement.getExample();
        OASAdamVarsetRefElement adamVarsetRefElement3 = new OASAdamVarsetRefElement();
        OASAdamVarsetRefElement adamVarsetRefElement4 = new OASAdamVarsetRefElement();

        System.assert(adamVarsetRefElement1.equals(adamVarsetRefElement2));
        System.assert(adamVarsetRefElement3.equals(adamVarsetRefElement4));
        System.assertEquals(adamVarsetRefElement1.hashCode(), adamVarsetRefElement2.hashCode());
        System.assertEquals(adamVarsetRefElement3.hashCode(), adamVarsetRefElement4.hashCode());
    }
}
