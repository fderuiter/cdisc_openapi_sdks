@isTest
private class OASCtCodelistLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelistLinks ctCodelistLinks1 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks2 = ctCodelistLinks1;
        OASCtCodelistLinks ctCodelistLinks3 = new OASCtCodelistLinks();
        OASCtCodelistLinks ctCodelistLinks4 = ctCodelistLinks3;

        System.assert(ctCodelistLinks1.equals(ctCodelistLinks2));
        System.assert(ctCodelistLinks2.equals(ctCodelistLinks1));
        System.assert(ctCodelistLinks1.equals(ctCodelistLinks1));
        System.assert(ctCodelistLinks3.equals(ctCodelistLinks4));
        System.assert(ctCodelistLinks4.equals(ctCodelistLinks3));
        System.assert(ctCodelistLinks3.equals(ctCodelistLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelistLinks ctCodelistLinks1 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks2 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks3 = new OASCtCodelistLinks();
        OASCtCodelistLinks ctCodelistLinks4 = new OASCtCodelistLinks();

        System.assert(ctCodelistLinks1.equals(ctCodelistLinks2));
        System.assert(ctCodelistLinks2.equals(ctCodelistLinks1));
        System.assert(ctCodelistLinks3.equals(ctCodelistLinks4));
        System.assert(ctCodelistLinks4.equals(ctCodelistLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelistLinks ctCodelistLinks1 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks2 = new OASCtCodelistLinks();

        System.assertEquals(false, ctCodelistLinks1.equals('foo'));
        System.assertEquals(false, ctCodelistLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelistLinks ctCodelistLinks1 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks2 = new OASCtCodelistLinks();
        OASCtCodelistLinks ctCodelistLinks3;

        System.assertEquals(false, ctCodelistLinks1.equals(ctCodelistLinks3));
        System.assertEquals(false, ctCodelistLinks2.equals(ctCodelistLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelistLinks ctCodelistLinks1 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks2 = new OASCtCodelistLinks();

        System.assertEquals(ctCodelistLinks1.hashCode(), ctCodelistLinks1.hashCode());
        System.assertEquals(ctCodelistLinks2.hashCode(), ctCodelistLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelistLinks ctCodelistLinks1 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks2 = OASCtCodelistLinks.getExample();
        OASCtCodelistLinks ctCodelistLinks3 = new OASCtCodelistLinks();
        OASCtCodelistLinks ctCodelistLinks4 = new OASCtCodelistLinks();

        System.assert(ctCodelistLinks1.equals(ctCodelistLinks2));
        System.assert(ctCodelistLinks3.equals(ctCodelistLinks4));
        System.assertEquals(ctCodelistLinks1.hashCode(), ctCodelistLinks2.hashCode());
        System.assertEquals(ctCodelistLinks3.hashCode(), ctCodelistLinks4.hashCode());
    }
}
