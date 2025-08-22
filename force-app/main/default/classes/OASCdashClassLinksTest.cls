@isTest
private class OASCdashClassLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassLinks cdashClassLinks1 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks2 = cdashClassLinks1;
        OASCdashClassLinks cdashClassLinks3 = new OASCdashClassLinks();
        OASCdashClassLinks cdashClassLinks4 = cdashClassLinks3;

        System.assert(cdashClassLinks1.equals(cdashClassLinks2));
        System.assert(cdashClassLinks2.equals(cdashClassLinks1));
        System.assert(cdashClassLinks1.equals(cdashClassLinks1));
        System.assert(cdashClassLinks3.equals(cdashClassLinks4));
        System.assert(cdashClassLinks4.equals(cdashClassLinks3));
        System.assert(cdashClassLinks3.equals(cdashClassLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassLinks cdashClassLinks1 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks2 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks3 = new OASCdashClassLinks();
        OASCdashClassLinks cdashClassLinks4 = new OASCdashClassLinks();

        System.assert(cdashClassLinks1.equals(cdashClassLinks2));
        System.assert(cdashClassLinks2.equals(cdashClassLinks1));
        System.assert(cdashClassLinks3.equals(cdashClassLinks4));
        System.assert(cdashClassLinks4.equals(cdashClassLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassLinks cdashClassLinks1 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks2 = new OASCdashClassLinks();

        System.assertEquals(false, cdashClassLinks1.equals('foo'));
        System.assertEquals(false, cdashClassLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassLinks cdashClassLinks1 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks2 = new OASCdashClassLinks();
        OASCdashClassLinks cdashClassLinks3;

        System.assertEquals(false, cdashClassLinks1.equals(cdashClassLinks3));
        System.assertEquals(false, cdashClassLinks2.equals(cdashClassLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassLinks cdashClassLinks1 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks2 = new OASCdashClassLinks();

        System.assertEquals(cdashClassLinks1.hashCode(), cdashClassLinks1.hashCode());
        System.assertEquals(cdashClassLinks2.hashCode(), cdashClassLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassLinks cdashClassLinks1 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks2 = OASCdashClassLinks.getExample();
        OASCdashClassLinks cdashClassLinks3 = new OASCdashClassLinks();
        OASCdashClassLinks cdashClassLinks4 = new OASCdashClassLinks();

        System.assert(cdashClassLinks1.equals(cdashClassLinks2));
        System.assert(cdashClassLinks3.equals(cdashClassLinks4));
        System.assertEquals(cdashClassLinks1.hashCode(), cdashClassLinks2.hashCode());
        System.assertEquals(cdashClassLinks3.hashCode(), cdashClassLinks4.hashCode());
    }
}
