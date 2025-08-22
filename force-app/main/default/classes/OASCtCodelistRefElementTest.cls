@isTest
private class OASCtCodelistRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelistRefElement ctCodelistRefElement1 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement2 = ctCodelistRefElement1;
        OASCtCodelistRefElement ctCodelistRefElement3 = new OASCtCodelistRefElement();
        OASCtCodelistRefElement ctCodelistRefElement4 = ctCodelistRefElement3;

        System.assert(ctCodelistRefElement1.equals(ctCodelistRefElement2));
        System.assert(ctCodelistRefElement2.equals(ctCodelistRefElement1));
        System.assert(ctCodelistRefElement1.equals(ctCodelistRefElement1));
        System.assert(ctCodelistRefElement3.equals(ctCodelistRefElement4));
        System.assert(ctCodelistRefElement4.equals(ctCodelistRefElement3));
        System.assert(ctCodelistRefElement3.equals(ctCodelistRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelistRefElement ctCodelistRefElement1 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement2 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement3 = new OASCtCodelistRefElement();
        OASCtCodelistRefElement ctCodelistRefElement4 = new OASCtCodelistRefElement();

        System.assert(ctCodelistRefElement1.equals(ctCodelistRefElement2));
        System.assert(ctCodelistRefElement2.equals(ctCodelistRefElement1));
        System.assert(ctCodelistRefElement3.equals(ctCodelistRefElement4));
        System.assert(ctCodelistRefElement4.equals(ctCodelistRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelistRefElement ctCodelistRefElement1 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement2 = new OASCtCodelistRefElement();

        System.assertEquals(false, ctCodelistRefElement1.equals('foo'));
        System.assertEquals(false, ctCodelistRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelistRefElement ctCodelistRefElement1 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement2 = new OASCtCodelistRefElement();
        OASCtCodelistRefElement ctCodelistRefElement3;

        System.assertEquals(false, ctCodelistRefElement1.equals(ctCodelistRefElement3));
        System.assertEquals(false, ctCodelistRefElement2.equals(ctCodelistRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelistRefElement ctCodelistRefElement1 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement2 = new OASCtCodelistRefElement();

        System.assertEquals(ctCodelistRefElement1.hashCode(), ctCodelistRefElement1.hashCode());
        System.assertEquals(ctCodelistRefElement2.hashCode(), ctCodelistRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelistRefElement ctCodelistRefElement1 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement2 = OASCtCodelistRefElement.getExample();
        OASCtCodelistRefElement ctCodelistRefElement3 = new OASCtCodelistRefElement();
        OASCtCodelistRefElement ctCodelistRefElement4 = new OASCtCodelistRefElement();

        System.assert(ctCodelistRefElement1.equals(ctCodelistRefElement2));
        System.assert(ctCodelistRefElement3.equals(ctCodelistRefElement4));
        System.assertEquals(ctCodelistRefElement1.hashCode(), ctCodelistRefElement2.hashCode());
        System.assertEquals(ctCodelistRefElement3.hashCode(), ctCodelistRefElement4.hashCode());
    }
}
