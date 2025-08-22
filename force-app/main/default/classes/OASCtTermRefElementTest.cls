@isTest
private class OASCtTermRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtTermRefElement ctTermRefElement1 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement2 = ctTermRefElement1;
        OASCtTermRefElement ctTermRefElement3 = new OASCtTermRefElement();
        OASCtTermRefElement ctTermRefElement4 = ctTermRefElement3;

        System.assert(ctTermRefElement1.equals(ctTermRefElement2));
        System.assert(ctTermRefElement2.equals(ctTermRefElement1));
        System.assert(ctTermRefElement1.equals(ctTermRefElement1));
        System.assert(ctTermRefElement3.equals(ctTermRefElement4));
        System.assert(ctTermRefElement4.equals(ctTermRefElement3));
        System.assert(ctTermRefElement3.equals(ctTermRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtTermRefElement ctTermRefElement1 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement2 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement3 = new OASCtTermRefElement();
        OASCtTermRefElement ctTermRefElement4 = new OASCtTermRefElement();

        System.assert(ctTermRefElement1.equals(ctTermRefElement2));
        System.assert(ctTermRefElement2.equals(ctTermRefElement1));
        System.assert(ctTermRefElement3.equals(ctTermRefElement4));
        System.assert(ctTermRefElement4.equals(ctTermRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtTermRefElement ctTermRefElement1 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement2 = new OASCtTermRefElement();

        System.assertEquals(false, ctTermRefElement1.equals('foo'));
        System.assertEquals(false, ctTermRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtTermRefElement ctTermRefElement1 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement2 = new OASCtTermRefElement();
        OASCtTermRefElement ctTermRefElement3;

        System.assertEquals(false, ctTermRefElement1.equals(ctTermRefElement3));
        System.assertEquals(false, ctTermRefElement2.equals(ctTermRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtTermRefElement ctTermRefElement1 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement2 = new OASCtTermRefElement();

        System.assertEquals(ctTermRefElement1.hashCode(), ctTermRefElement1.hashCode());
        System.assertEquals(ctTermRefElement2.hashCode(), ctTermRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtTermRefElement ctTermRefElement1 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement2 = OASCtTermRefElement.getExample();
        OASCtTermRefElement ctTermRefElement3 = new OASCtTermRefElement();
        OASCtTermRefElement ctTermRefElement4 = new OASCtTermRefElement();

        System.assert(ctTermRefElement1.equals(ctTermRefElement2));
        System.assert(ctTermRefElement3.equals(ctTermRefElement4));
        System.assertEquals(ctTermRefElement1.hashCode(), ctTermRefElement2.hashCode());
        System.assertEquals(ctTermRefElement3.hashCode(), ctTermRefElement4.hashCode());
    }
}
