@isTest
private class OASRootCtCodelistRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCtCodelistRefElement rootCtCodelistRefElement1 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement2 = rootCtCodelistRefElement1;
        OASRootCtCodelistRefElement rootCtCodelistRefElement3 = new OASRootCtCodelistRefElement();
        OASRootCtCodelistRefElement rootCtCodelistRefElement4 = rootCtCodelistRefElement3;

        System.assert(rootCtCodelistRefElement1.equals(rootCtCodelistRefElement2));
        System.assert(rootCtCodelistRefElement2.equals(rootCtCodelistRefElement1));
        System.assert(rootCtCodelistRefElement1.equals(rootCtCodelistRefElement1));
        System.assert(rootCtCodelistRefElement3.equals(rootCtCodelistRefElement4));
        System.assert(rootCtCodelistRefElement4.equals(rootCtCodelistRefElement3));
        System.assert(rootCtCodelistRefElement3.equals(rootCtCodelistRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCtCodelistRefElement rootCtCodelistRefElement1 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement2 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement3 = new OASRootCtCodelistRefElement();
        OASRootCtCodelistRefElement rootCtCodelistRefElement4 = new OASRootCtCodelistRefElement();

        System.assert(rootCtCodelistRefElement1.equals(rootCtCodelistRefElement2));
        System.assert(rootCtCodelistRefElement2.equals(rootCtCodelistRefElement1));
        System.assert(rootCtCodelistRefElement3.equals(rootCtCodelistRefElement4));
        System.assert(rootCtCodelistRefElement4.equals(rootCtCodelistRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCtCodelistRefElement rootCtCodelistRefElement1 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement2 = new OASRootCtCodelistRefElement();

        System.assertEquals(false, rootCtCodelistRefElement1.equals('foo'));
        System.assertEquals(false, rootCtCodelistRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCtCodelistRefElement rootCtCodelistRefElement1 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement2 = new OASRootCtCodelistRefElement();
        OASRootCtCodelistRefElement rootCtCodelistRefElement3;

        System.assertEquals(false, rootCtCodelistRefElement1.equals(rootCtCodelistRefElement3));
        System.assertEquals(false, rootCtCodelistRefElement2.equals(rootCtCodelistRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCtCodelistRefElement rootCtCodelistRefElement1 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement2 = new OASRootCtCodelistRefElement();

        System.assertEquals(rootCtCodelistRefElement1.hashCode(), rootCtCodelistRefElement1.hashCode());
        System.assertEquals(rootCtCodelistRefElement2.hashCode(), rootCtCodelistRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCtCodelistRefElement rootCtCodelistRefElement1 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement2 = OASRootCtCodelistRefElement.getExample();
        OASRootCtCodelistRefElement rootCtCodelistRefElement3 = new OASRootCtCodelistRefElement();
        OASRootCtCodelistRefElement rootCtCodelistRefElement4 = new OASRootCtCodelistRefElement();

        System.assert(rootCtCodelistRefElement1.equals(rootCtCodelistRefElement2));
        System.assert(rootCtCodelistRefElement3.equals(rootCtCodelistRefElement4));
        System.assertEquals(rootCtCodelistRefElement1.hashCode(), rootCtCodelistRefElement2.hashCode());
        System.assertEquals(rootCtCodelistRefElement3.hashCode(), rootCtCodelistRefElement4.hashCode());
    }
}
