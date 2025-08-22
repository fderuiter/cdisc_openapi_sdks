@isTest
private class OASAdamVariableRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVariableRefElement adamVariableRefElement1 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement2 = adamVariableRefElement1;
        OASAdamVariableRefElement adamVariableRefElement3 = new OASAdamVariableRefElement();
        OASAdamVariableRefElement adamVariableRefElement4 = adamVariableRefElement3;

        System.assert(adamVariableRefElement1.equals(adamVariableRefElement2));
        System.assert(adamVariableRefElement2.equals(adamVariableRefElement1));
        System.assert(adamVariableRefElement1.equals(adamVariableRefElement1));
        System.assert(adamVariableRefElement3.equals(adamVariableRefElement4));
        System.assert(adamVariableRefElement4.equals(adamVariableRefElement3));
        System.assert(adamVariableRefElement3.equals(adamVariableRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVariableRefElement adamVariableRefElement1 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement2 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement3 = new OASAdamVariableRefElement();
        OASAdamVariableRefElement adamVariableRefElement4 = new OASAdamVariableRefElement();

        System.assert(adamVariableRefElement1.equals(adamVariableRefElement2));
        System.assert(adamVariableRefElement2.equals(adamVariableRefElement1));
        System.assert(adamVariableRefElement3.equals(adamVariableRefElement4));
        System.assert(adamVariableRefElement4.equals(adamVariableRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVariableRefElement adamVariableRefElement1 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement2 = new OASAdamVariableRefElement();

        System.assertEquals(false, adamVariableRefElement1.equals('foo'));
        System.assertEquals(false, adamVariableRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVariableRefElement adamVariableRefElement1 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement2 = new OASAdamVariableRefElement();
        OASAdamVariableRefElement adamVariableRefElement3;

        System.assertEquals(false, adamVariableRefElement1.equals(adamVariableRefElement3));
        System.assertEquals(false, adamVariableRefElement2.equals(adamVariableRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVariableRefElement adamVariableRefElement1 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement2 = new OASAdamVariableRefElement();

        System.assertEquals(adamVariableRefElement1.hashCode(), adamVariableRefElement1.hashCode());
        System.assertEquals(adamVariableRefElement2.hashCode(), adamVariableRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVariableRefElement adamVariableRefElement1 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement2 = OASAdamVariableRefElement.getExample();
        OASAdamVariableRefElement adamVariableRefElement3 = new OASAdamVariableRefElement();
        OASAdamVariableRefElement adamVariableRefElement4 = new OASAdamVariableRefElement();

        System.assert(adamVariableRefElement1.equals(adamVariableRefElement2));
        System.assert(adamVariableRefElement3.equals(adamVariableRefElement4));
        System.assertEquals(adamVariableRefElement1.hashCode(), adamVariableRefElement2.hashCode());
        System.assertEquals(adamVariableRefElement3.hashCode(), adamVariableRefElement4.hashCode());
    }
}
