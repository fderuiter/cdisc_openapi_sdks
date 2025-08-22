@isTest
private class OASCdashigProductLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductLinks cdashigProductLinks1 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks2 = cdashigProductLinks1;
        OASCdashigProductLinks cdashigProductLinks3 = new OASCdashigProductLinks();
        OASCdashigProductLinks cdashigProductLinks4 = cdashigProductLinks3;

        System.assert(cdashigProductLinks1.equals(cdashigProductLinks2));
        System.assert(cdashigProductLinks2.equals(cdashigProductLinks1));
        System.assert(cdashigProductLinks1.equals(cdashigProductLinks1));
        System.assert(cdashigProductLinks3.equals(cdashigProductLinks4));
        System.assert(cdashigProductLinks4.equals(cdashigProductLinks3));
        System.assert(cdashigProductLinks3.equals(cdashigProductLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductLinks cdashigProductLinks1 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks2 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks3 = new OASCdashigProductLinks();
        OASCdashigProductLinks cdashigProductLinks4 = new OASCdashigProductLinks();

        System.assert(cdashigProductLinks1.equals(cdashigProductLinks2));
        System.assert(cdashigProductLinks2.equals(cdashigProductLinks1));
        System.assert(cdashigProductLinks3.equals(cdashigProductLinks4));
        System.assert(cdashigProductLinks4.equals(cdashigProductLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductLinks cdashigProductLinks1 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks2 = new OASCdashigProductLinks();

        System.assertEquals(false, cdashigProductLinks1.equals('foo'));
        System.assertEquals(false, cdashigProductLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductLinks cdashigProductLinks1 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks2 = new OASCdashigProductLinks();
        OASCdashigProductLinks cdashigProductLinks3;

        System.assertEquals(false, cdashigProductLinks1.equals(cdashigProductLinks3));
        System.assertEquals(false, cdashigProductLinks2.equals(cdashigProductLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductLinks cdashigProductLinks1 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks2 = new OASCdashigProductLinks();

        System.assertEquals(cdashigProductLinks1.hashCode(), cdashigProductLinks1.hashCode());
        System.assertEquals(cdashigProductLinks2.hashCode(), cdashigProductLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductLinks cdashigProductLinks1 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks2 = OASCdashigProductLinks.getExample();
        OASCdashigProductLinks cdashigProductLinks3 = new OASCdashigProductLinks();
        OASCdashigProductLinks cdashigProductLinks4 = new OASCdashigProductLinks();

        System.assert(cdashigProductLinks1.equals(cdashigProductLinks2));
        System.assert(cdashigProductLinks3.equals(cdashigProductLinks4));
        System.assertEquals(cdashigProductLinks1.hashCode(), cdashigProductLinks2.hashCode());
        System.assertEquals(cdashigProductLinks3.hashCode(), cdashigProductLinks4.hashCode());
    }
}
