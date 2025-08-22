@isTest
private class OASAdamProductRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamProductRefElement adamProductRefElement1 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement2 = adamProductRefElement1;
        OASAdamProductRefElement adamProductRefElement3 = new OASAdamProductRefElement();
        OASAdamProductRefElement adamProductRefElement4 = adamProductRefElement3;

        System.assert(adamProductRefElement1.equals(adamProductRefElement2));
        System.assert(adamProductRefElement2.equals(adamProductRefElement1));
        System.assert(adamProductRefElement1.equals(adamProductRefElement1));
        System.assert(adamProductRefElement3.equals(adamProductRefElement4));
        System.assert(adamProductRefElement4.equals(adamProductRefElement3));
        System.assert(adamProductRefElement3.equals(adamProductRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamProductRefElement adamProductRefElement1 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement2 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement3 = new OASAdamProductRefElement();
        OASAdamProductRefElement adamProductRefElement4 = new OASAdamProductRefElement();

        System.assert(adamProductRefElement1.equals(adamProductRefElement2));
        System.assert(adamProductRefElement2.equals(adamProductRefElement1));
        System.assert(adamProductRefElement3.equals(adamProductRefElement4));
        System.assert(adamProductRefElement4.equals(adamProductRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamProductRefElement adamProductRefElement1 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement2 = new OASAdamProductRefElement();

        System.assertEquals(false, adamProductRefElement1.equals('foo'));
        System.assertEquals(false, adamProductRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamProductRefElement adamProductRefElement1 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement2 = new OASAdamProductRefElement();
        OASAdamProductRefElement adamProductRefElement3;

        System.assertEquals(false, adamProductRefElement1.equals(adamProductRefElement3));
        System.assertEquals(false, adamProductRefElement2.equals(adamProductRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamProductRefElement adamProductRefElement1 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement2 = new OASAdamProductRefElement();

        System.assertEquals(adamProductRefElement1.hashCode(), adamProductRefElement1.hashCode());
        System.assertEquals(adamProductRefElement2.hashCode(), adamProductRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamProductRefElement adamProductRefElement1 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement2 = OASAdamProductRefElement.getExample();
        OASAdamProductRefElement adamProductRefElement3 = new OASAdamProductRefElement();
        OASAdamProductRefElement adamProductRefElement4 = new OASAdamProductRefElement();

        System.assert(adamProductRefElement1.equals(adamProductRefElement2));
        System.assert(adamProductRefElement3.equals(adamProductRefElement4));
        System.assertEquals(adamProductRefElement1.hashCode(), adamProductRefElement2.hashCode());
        System.assertEquals(adamProductRefElement3.hashCode(), adamProductRefElement4.hashCode());
    }
}
