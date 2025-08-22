@isTest
private class OASCtPackageLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackageLinks ctPackageLinks1 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks2 = ctPackageLinks1;
        OASCtPackageLinks ctPackageLinks3 = new OASCtPackageLinks();
        OASCtPackageLinks ctPackageLinks4 = ctPackageLinks3;

        System.assert(ctPackageLinks1.equals(ctPackageLinks2));
        System.assert(ctPackageLinks2.equals(ctPackageLinks1));
        System.assert(ctPackageLinks1.equals(ctPackageLinks1));
        System.assert(ctPackageLinks3.equals(ctPackageLinks4));
        System.assert(ctPackageLinks4.equals(ctPackageLinks3));
        System.assert(ctPackageLinks3.equals(ctPackageLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackageLinks ctPackageLinks1 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks2 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks3 = new OASCtPackageLinks();
        OASCtPackageLinks ctPackageLinks4 = new OASCtPackageLinks();

        System.assert(ctPackageLinks1.equals(ctPackageLinks2));
        System.assert(ctPackageLinks2.equals(ctPackageLinks1));
        System.assert(ctPackageLinks3.equals(ctPackageLinks4));
        System.assert(ctPackageLinks4.equals(ctPackageLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackageLinks ctPackageLinks1 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks2 = new OASCtPackageLinks();

        System.assertEquals(false, ctPackageLinks1.equals('foo'));
        System.assertEquals(false, ctPackageLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackageLinks ctPackageLinks1 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks2 = new OASCtPackageLinks();
        OASCtPackageLinks ctPackageLinks3;

        System.assertEquals(false, ctPackageLinks1.equals(ctPackageLinks3));
        System.assertEquals(false, ctPackageLinks2.equals(ctPackageLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackageLinks ctPackageLinks1 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks2 = new OASCtPackageLinks();

        System.assertEquals(ctPackageLinks1.hashCode(), ctPackageLinks1.hashCode());
        System.assertEquals(ctPackageLinks2.hashCode(), ctPackageLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackageLinks ctPackageLinks1 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks2 = OASCtPackageLinks.getExample();
        OASCtPackageLinks ctPackageLinks3 = new OASCtPackageLinks();
        OASCtPackageLinks ctPackageLinks4 = new OASCtPackageLinks();

        System.assert(ctPackageLinks1.equals(ctPackageLinks2));
        System.assert(ctPackageLinks3.equals(ctPackageLinks4));
        System.assertEquals(ctPackageLinks1.hashCode(), ctPackageLinks2.hashCode());
        System.assertEquals(ctPackageLinks3.hashCode(), ctPackageLinks4.hashCode());
    }
}
