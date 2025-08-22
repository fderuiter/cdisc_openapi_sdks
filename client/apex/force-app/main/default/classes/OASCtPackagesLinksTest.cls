@isTest
private class OASCtPackagesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackagesLinks ctPackagesLinks1 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks2 = ctPackagesLinks1;
        OASCtPackagesLinks ctPackagesLinks3 = new OASCtPackagesLinks();
        OASCtPackagesLinks ctPackagesLinks4 = ctPackagesLinks3;

        System.assert(ctPackagesLinks1.equals(ctPackagesLinks2));
        System.assert(ctPackagesLinks2.equals(ctPackagesLinks1));
        System.assert(ctPackagesLinks1.equals(ctPackagesLinks1));
        System.assert(ctPackagesLinks3.equals(ctPackagesLinks4));
        System.assert(ctPackagesLinks4.equals(ctPackagesLinks3));
        System.assert(ctPackagesLinks3.equals(ctPackagesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackagesLinks ctPackagesLinks1 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks2 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks3 = new OASCtPackagesLinks();
        OASCtPackagesLinks ctPackagesLinks4 = new OASCtPackagesLinks();

        System.assert(ctPackagesLinks1.equals(ctPackagesLinks2));
        System.assert(ctPackagesLinks2.equals(ctPackagesLinks1));
        System.assert(ctPackagesLinks3.equals(ctPackagesLinks4));
        System.assert(ctPackagesLinks4.equals(ctPackagesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackagesLinks ctPackagesLinks1 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks2 = new OASCtPackagesLinks();

        System.assertEquals(false, ctPackagesLinks1.equals('foo'));
        System.assertEquals(false, ctPackagesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackagesLinks ctPackagesLinks1 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks2 = new OASCtPackagesLinks();
        OASCtPackagesLinks ctPackagesLinks3;

        System.assertEquals(false, ctPackagesLinks1.equals(ctPackagesLinks3));
        System.assertEquals(false, ctPackagesLinks2.equals(ctPackagesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackagesLinks ctPackagesLinks1 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks2 = new OASCtPackagesLinks();

        System.assertEquals(ctPackagesLinks1.hashCode(), ctPackagesLinks1.hashCode());
        System.assertEquals(ctPackagesLinks2.hashCode(), ctPackagesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackagesLinks ctPackagesLinks1 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks2 = OASCtPackagesLinks.getExample();
        OASCtPackagesLinks ctPackagesLinks3 = new OASCtPackagesLinks();
        OASCtPackagesLinks ctPackagesLinks4 = new OASCtPackagesLinks();

        System.assert(ctPackagesLinks1.equals(ctPackagesLinks2));
        System.assert(ctPackagesLinks3.equals(ctPackagesLinks4));
        System.assertEquals(ctPackagesLinks1.hashCode(), ctPackagesLinks2.hashCode());
        System.assertEquals(ctPackagesLinks3.hashCode(), ctPackagesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtPackagesLinks ctPackagesLinks = new OASCtPackagesLinks();
        System.assertEquals(new List<OASCtPackageRefElement>(), ctPackagesLinks.packages);
        System.assertEquals(null, ctPackagesLinks.self);
    }
}
