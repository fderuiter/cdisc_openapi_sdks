@isTest
private class OASCdashigClassLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassLinks cdashigClassLinks1 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks2 = cdashigClassLinks1;
        OASCdashigClassLinks cdashigClassLinks3 = new OASCdashigClassLinks();
        OASCdashigClassLinks cdashigClassLinks4 = cdashigClassLinks3;

        System.assert(cdashigClassLinks1.equals(cdashigClassLinks2));
        System.assert(cdashigClassLinks2.equals(cdashigClassLinks1));
        System.assert(cdashigClassLinks1.equals(cdashigClassLinks1));
        System.assert(cdashigClassLinks3.equals(cdashigClassLinks4));
        System.assert(cdashigClassLinks4.equals(cdashigClassLinks3));
        System.assert(cdashigClassLinks3.equals(cdashigClassLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassLinks cdashigClassLinks1 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks2 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks3 = new OASCdashigClassLinks();
        OASCdashigClassLinks cdashigClassLinks4 = new OASCdashigClassLinks();

        System.assert(cdashigClassLinks1.equals(cdashigClassLinks2));
        System.assert(cdashigClassLinks2.equals(cdashigClassLinks1));
        System.assert(cdashigClassLinks3.equals(cdashigClassLinks4));
        System.assert(cdashigClassLinks4.equals(cdashigClassLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassLinks cdashigClassLinks1 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks2 = new OASCdashigClassLinks();

        System.assertEquals(false, cdashigClassLinks1.equals('foo'));
        System.assertEquals(false, cdashigClassLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassLinks cdashigClassLinks1 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks2 = new OASCdashigClassLinks();
        OASCdashigClassLinks cdashigClassLinks3;

        System.assertEquals(false, cdashigClassLinks1.equals(cdashigClassLinks3));
        System.assertEquals(false, cdashigClassLinks2.equals(cdashigClassLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassLinks cdashigClassLinks1 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks2 = new OASCdashigClassLinks();

        System.assertEquals(cdashigClassLinks1.hashCode(), cdashigClassLinks1.hashCode());
        System.assertEquals(cdashigClassLinks2.hashCode(), cdashigClassLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassLinks cdashigClassLinks1 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks2 = OASCdashigClassLinks.getExample();
        OASCdashigClassLinks cdashigClassLinks3 = new OASCdashigClassLinks();
        OASCdashigClassLinks cdashigClassLinks4 = new OASCdashigClassLinks();

        System.assert(cdashigClassLinks1.equals(cdashigClassLinks2));
        System.assert(cdashigClassLinks3.equals(cdashigClassLinks4));
        System.assertEquals(cdashigClassLinks1.hashCode(), cdashigClassLinks2.hashCode());
        System.assertEquals(cdashigClassLinks3.hashCode(), cdashigClassLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigClassLinks cdashigClassLinks = new OASCdashigClassLinks();
        System.assertEquals(new List<OASCdashigClassRefSubclass>(), cdashigClassLinks.subclasses);
        System.assertEquals(null, cdashigClassLinks.self);
        System.assertEquals(null, cdashigClassLinks.modelClass);
        System.assertEquals(null, cdashigClassLinks.parentProduct);
        System.assertEquals(null, cdashigClassLinks.parentClass);
        System.assertEquals(null, cdashigClassLinks.priorVersion);
    }
}
