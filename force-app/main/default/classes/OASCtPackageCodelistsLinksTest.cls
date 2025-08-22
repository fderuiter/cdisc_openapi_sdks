@isTest
private class OASCtPackageCodelistsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks1 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks2 = ctPackageCodelistsLinks1;
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks3 = new OASCtPackageCodelistsLinks();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks4 = ctPackageCodelistsLinks3;

        System.assert(ctPackageCodelistsLinks1.equals(ctPackageCodelistsLinks2));
        System.assert(ctPackageCodelistsLinks2.equals(ctPackageCodelistsLinks1));
        System.assert(ctPackageCodelistsLinks1.equals(ctPackageCodelistsLinks1));
        System.assert(ctPackageCodelistsLinks3.equals(ctPackageCodelistsLinks4));
        System.assert(ctPackageCodelistsLinks4.equals(ctPackageCodelistsLinks3));
        System.assert(ctPackageCodelistsLinks3.equals(ctPackageCodelistsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks1 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks2 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks3 = new OASCtPackageCodelistsLinks();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks4 = new OASCtPackageCodelistsLinks();

        System.assert(ctPackageCodelistsLinks1.equals(ctPackageCodelistsLinks2));
        System.assert(ctPackageCodelistsLinks2.equals(ctPackageCodelistsLinks1));
        System.assert(ctPackageCodelistsLinks3.equals(ctPackageCodelistsLinks4));
        System.assert(ctPackageCodelistsLinks4.equals(ctPackageCodelistsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks1 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks2 = new OASCtPackageCodelistsLinks();

        System.assertEquals(false, ctPackageCodelistsLinks1.equals('foo'));
        System.assertEquals(false, ctPackageCodelistsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks1 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks2 = new OASCtPackageCodelistsLinks();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks3;

        System.assertEquals(false, ctPackageCodelistsLinks1.equals(ctPackageCodelistsLinks3));
        System.assertEquals(false, ctPackageCodelistsLinks2.equals(ctPackageCodelistsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks1 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks2 = new OASCtPackageCodelistsLinks();

        System.assertEquals(ctPackageCodelistsLinks1.hashCode(), ctPackageCodelistsLinks1.hashCode());
        System.assertEquals(ctPackageCodelistsLinks2.hashCode(), ctPackageCodelistsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks1 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks2 = OASCtPackageCodelistsLinks.getExample();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks3 = new OASCtPackageCodelistsLinks();
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks4 = new OASCtPackageCodelistsLinks();

        System.assert(ctPackageCodelistsLinks1.equals(ctPackageCodelistsLinks2));
        System.assert(ctPackageCodelistsLinks3.equals(ctPackageCodelistsLinks4));
        System.assertEquals(ctPackageCodelistsLinks1.hashCode(), ctPackageCodelistsLinks2.hashCode());
        System.assertEquals(ctPackageCodelistsLinks3.hashCode(), ctPackageCodelistsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtPackageCodelistsLinks ctPackageCodelistsLinks = new OASCtPackageCodelistsLinks();
        System.assertEquals(new List<OASCtCodelistRefElement>(), ctPackageCodelistsLinks.codelists);
        System.assertEquals(null, ctPackageCodelistsLinks.self);
        System.assertEquals(null, ctPackageCodelistsLinks.priorVersion);
    }
}
