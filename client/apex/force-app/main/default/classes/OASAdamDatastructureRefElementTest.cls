@isTest
private class OASAdamDatastructureRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureRefElement adamDatastructureRefElement1 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement2 = adamDatastructureRefElement1;
        OASAdamDatastructureRefElement adamDatastructureRefElement3 = new OASAdamDatastructureRefElement();
        OASAdamDatastructureRefElement adamDatastructureRefElement4 = adamDatastructureRefElement3;

        System.assert(adamDatastructureRefElement1.equals(adamDatastructureRefElement2));
        System.assert(adamDatastructureRefElement2.equals(adamDatastructureRefElement1));
        System.assert(adamDatastructureRefElement1.equals(adamDatastructureRefElement1));
        System.assert(adamDatastructureRefElement3.equals(adamDatastructureRefElement4));
        System.assert(adamDatastructureRefElement4.equals(adamDatastructureRefElement3));
        System.assert(adamDatastructureRefElement3.equals(adamDatastructureRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureRefElement adamDatastructureRefElement1 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement2 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement3 = new OASAdamDatastructureRefElement();
        OASAdamDatastructureRefElement adamDatastructureRefElement4 = new OASAdamDatastructureRefElement();

        System.assert(adamDatastructureRefElement1.equals(adamDatastructureRefElement2));
        System.assert(adamDatastructureRefElement2.equals(adamDatastructureRefElement1));
        System.assert(adamDatastructureRefElement3.equals(adamDatastructureRefElement4));
        System.assert(adamDatastructureRefElement4.equals(adamDatastructureRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureRefElement adamDatastructureRefElement1 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement2 = new OASAdamDatastructureRefElement();

        System.assertEquals(false, adamDatastructureRefElement1.equals('foo'));
        System.assertEquals(false, adamDatastructureRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureRefElement adamDatastructureRefElement1 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement2 = new OASAdamDatastructureRefElement();
        OASAdamDatastructureRefElement adamDatastructureRefElement3;

        System.assertEquals(false, adamDatastructureRefElement1.equals(adamDatastructureRefElement3));
        System.assertEquals(false, adamDatastructureRefElement2.equals(adamDatastructureRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureRefElement adamDatastructureRefElement1 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement2 = new OASAdamDatastructureRefElement();

        System.assertEquals(adamDatastructureRefElement1.hashCode(), adamDatastructureRefElement1.hashCode());
        System.assertEquals(adamDatastructureRefElement2.hashCode(), adamDatastructureRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureRefElement adamDatastructureRefElement1 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement2 = OASAdamDatastructureRefElement.getExample();
        OASAdamDatastructureRefElement adamDatastructureRefElement3 = new OASAdamDatastructureRefElement();
        OASAdamDatastructureRefElement adamDatastructureRefElement4 = new OASAdamDatastructureRefElement();

        System.assert(adamDatastructureRefElement1.equals(adamDatastructureRefElement2));
        System.assert(adamDatastructureRefElement3.equals(adamDatastructureRefElement4));
        System.assertEquals(adamDatastructureRefElement1.hashCode(), adamDatastructureRefElement2.hashCode());
        System.assertEquals(adamDatastructureRefElement3.hashCode(), adamDatastructureRefElement4.hashCode());
    }
}
