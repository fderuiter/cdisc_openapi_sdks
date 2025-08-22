@isTest
private class OASCtCodelistTermsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelistTermsLinks ctCodelistTermsLinks1 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks2 = ctCodelistTermsLinks1;
        OASCtCodelistTermsLinks ctCodelistTermsLinks3 = new OASCtCodelistTermsLinks();
        OASCtCodelistTermsLinks ctCodelistTermsLinks4 = ctCodelistTermsLinks3;

        System.assert(ctCodelistTermsLinks1.equals(ctCodelistTermsLinks2));
        System.assert(ctCodelistTermsLinks2.equals(ctCodelistTermsLinks1));
        System.assert(ctCodelistTermsLinks1.equals(ctCodelistTermsLinks1));
        System.assert(ctCodelistTermsLinks3.equals(ctCodelistTermsLinks4));
        System.assert(ctCodelistTermsLinks4.equals(ctCodelistTermsLinks3));
        System.assert(ctCodelistTermsLinks3.equals(ctCodelistTermsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelistTermsLinks ctCodelistTermsLinks1 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks2 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks3 = new OASCtCodelistTermsLinks();
        OASCtCodelistTermsLinks ctCodelistTermsLinks4 = new OASCtCodelistTermsLinks();

        System.assert(ctCodelistTermsLinks1.equals(ctCodelistTermsLinks2));
        System.assert(ctCodelistTermsLinks2.equals(ctCodelistTermsLinks1));
        System.assert(ctCodelistTermsLinks3.equals(ctCodelistTermsLinks4));
        System.assert(ctCodelistTermsLinks4.equals(ctCodelistTermsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelistTermsLinks ctCodelistTermsLinks1 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks2 = new OASCtCodelistTermsLinks();

        System.assertEquals(false, ctCodelistTermsLinks1.equals('foo'));
        System.assertEquals(false, ctCodelistTermsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelistTermsLinks ctCodelistTermsLinks1 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks2 = new OASCtCodelistTermsLinks();
        OASCtCodelistTermsLinks ctCodelistTermsLinks3;

        System.assertEquals(false, ctCodelistTermsLinks1.equals(ctCodelistTermsLinks3));
        System.assertEquals(false, ctCodelistTermsLinks2.equals(ctCodelistTermsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelistTermsLinks ctCodelistTermsLinks1 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks2 = new OASCtCodelistTermsLinks();

        System.assertEquals(ctCodelistTermsLinks1.hashCode(), ctCodelistTermsLinks1.hashCode());
        System.assertEquals(ctCodelistTermsLinks2.hashCode(), ctCodelistTermsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelistTermsLinks ctCodelistTermsLinks1 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks2 = OASCtCodelistTermsLinks.getExample();
        OASCtCodelistTermsLinks ctCodelistTermsLinks3 = new OASCtCodelistTermsLinks();
        OASCtCodelistTermsLinks ctCodelistTermsLinks4 = new OASCtCodelistTermsLinks();

        System.assert(ctCodelistTermsLinks1.equals(ctCodelistTermsLinks2));
        System.assert(ctCodelistTermsLinks3.equals(ctCodelistTermsLinks4));
        System.assertEquals(ctCodelistTermsLinks1.hashCode(), ctCodelistTermsLinks2.hashCode());
        System.assertEquals(ctCodelistTermsLinks3.hashCode(), ctCodelistTermsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtCodelistTermsLinks ctCodelistTermsLinks = new OASCtCodelistTermsLinks();
        System.assertEquals(new List<OASCtTermRefElement>(), ctCodelistTermsLinks.terms);
        System.assertEquals(null, ctCodelistTermsLinks.self);
        System.assertEquals(null, ctCodelistTermsLinks.parentPackage);
        System.assertEquals(null, ctCodelistTermsLinks.rootItem);
        System.assertEquals(null, ctCodelistTermsLinks.priorVersion);
    }
}
