@isTest
private class OASCdashProductLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductLinks cdashProductLinks1 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks2 = cdashProductLinks1;
        OASCdashProductLinks cdashProductLinks3 = new OASCdashProductLinks();
        OASCdashProductLinks cdashProductLinks4 = cdashProductLinks3;

        System.assert(cdashProductLinks1.equals(cdashProductLinks2));
        System.assert(cdashProductLinks2.equals(cdashProductLinks1));
        System.assert(cdashProductLinks1.equals(cdashProductLinks1));
        System.assert(cdashProductLinks3.equals(cdashProductLinks4));
        System.assert(cdashProductLinks4.equals(cdashProductLinks3));
        System.assert(cdashProductLinks3.equals(cdashProductLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductLinks cdashProductLinks1 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks2 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks3 = new OASCdashProductLinks();
        OASCdashProductLinks cdashProductLinks4 = new OASCdashProductLinks();

        System.assert(cdashProductLinks1.equals(cdashProductLinks2));
        System.assert(cdashProductLinks2.equals(cdashProductLinks1));
        System.assert(cdashProductLinks3.equals(cdashProductLinks4));
        System.assert(cdashProductLinks4.equals(cdashProductLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductLinks cdashProductLinks1 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks2 = new OASCdashProductLinks();

        System.assertEquals(false, cdashProductLinks1.equals('foo'));
        System.assertEquals(false, cdashProductLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductLinks cdashProductLinks1 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks2 = new OASCdashProductLinks();
        OASCdashProductLinks cdashProductLinks3;

        System.assertEquals(false, cdashProductLinks1.equals(cdashProductLinks3));
        System.assertEquals(false, cdashProductLinks2.equals(cdashProductLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductLinks cdashProductLinks1 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks2 = new OASCdashProductLinks();

        System.assertEquals(cdashProductLinks1.hashCode(), cdashProductLinks1.hashCode());
        System.assertEquals(cdashProductLinks2.hashCode(), cdashProductLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductLinks cdashProductLinks1 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks2 = OASCdashProductLinks.getExample();
        OASCdashProductLinks cdashProductLinks3 = new OASCdashProductLinks();
        OASCdashProductLinks cdashProductLinks4 = new OASCdashProductLinks();

        System.assert(cdashProductLinks1.equals(cdashProductLinks2));
        System.assert(cdashProductLinks3.equals(cdashProductLinks4));
        System.assertEquals(cdashProductLinks1.hashCode(), cdashProductLinks2.hashCode());
        System.assertEquals(cdashProductLinks3.hashCode(), cdashProductLinks4.hashCode());
    }
}
