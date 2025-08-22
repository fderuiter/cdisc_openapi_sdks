@isTest
private class OASCtTermLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtTermLinks ctTermLinks1 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks2 = ctTermLinks1;
        OASCtTermLinks ctTermLinks3 = new OASCtTermLinks();
        OASCtTermLinks ctTermLinks4 = ctTermLinks3;

        System.assert(ctTermLinks1.equals(ctTermLinks2));
        System.assert(ctTermLinks2.equals(ctTermLinks1));
        System.assert(ctTermLinks1.equals(ctTermLinks1));
        System.assert(ctTermLinks3.equals(ctTermLinks4));
        System.assert(ctTermLinks4.equals(ctTermLinks3));
        System.assert(ctTermLinks3.equals(ctTermLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtTermLinks ctTermLinks1 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks2 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks3 = new OASCtTermLinks();
        OASCtTermLinks ctTermLinks4 = new OASCtTermLinks();

        System.assert(ctTermLinks1.equals(ctTermLinks2));
        System.assert(ctTermLinks2.equals(ctTermLinks1));
        System.assert(ctTermLinks3.equals(ctTermLinks4));
        System.assert(ctTermLinks4.equals(ctTermLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtTermLinks ctTermLinks1 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks2 = new OASCtTermLinks();

        System.assertEquals(false, ctTermLinks1.equals('foo'));
        System.assertEquals(false, ctTermLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtTermLinks ctTermLinks1 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks2 = new OASCtTermLinks();
        OASCtTermLinks ctTermLinks3;

        System.assertEquals(false, ctTermLinks1.equals(ctTermLinks3));
        System.assertEquals(false, ctTermLinks2.equals(ctTermLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtTermLinks ctTermLinks1 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks2 = new OASCtTermLinks();

        System.assertEquals(ctTermLinks1.hashCode(), ctTermLinks1.hashCode());
        System.assertEquals(ctTermLinks2.hashCode(), ctTermLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtTermLinks ctTermLinks1 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks2 = OASCtTermLinks.getExample();
        OASCtTermLinks ctTermLinks3 = new OASCtTermLinks();
        OASCtTermLinks ctTermLinks4 = new OASCtTermLinks();

        System.assert(ctTermLinks1.equals(ctTermLinks2));
        System.assert(ctTermLinks3.equals(ctTermLinks4));
        System.assertEquals(ctTermLinks1.hashCode(), ctTermLinks2.hashCode());
        System.assertEquals(ctTermLinks3.hashCode(), ctTermLinks4.hashCode());
    }
}
