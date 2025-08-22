@isTest
private class OASCdashDomainLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainLinks cdashDomainLinks1 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks2 = cdashDomainLinks1;
        OASCdashDomainLinks cdashDomainLinks3 = new OASCdashDomainLinks();
        OASCdashDomainLinks cdashDomainLinks4 = cdashDomainLinks3;

        System.assert(cdashDomainLinks1.equals(cdashDomainLinks2));
        System.assert(cdashDomainLinks2.equals(cdashDomainLinks1));
        System.assert(cdashDomainLinks1.equals(cdashDomainLinks1));
        System.assert(cdashDomainLinks3.equals(cdashDomainLinks4));
        System.assert(cdashDomainLinks4.equals(cdashDomainLinks3));
        System.assert(cdashDomainLinks3.equals(cdashDomainLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainLinks cdashDomainLinks1 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks2 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks3 = new OASCdashDomainLinks();
        OASCdashDomainLinks cdashDomainLinks4 = new OASCdashDomainLinks();

        System.assert(cdashDomainLinks1.equals(cdashDomainLinks2));
        System.assert(cdashDomainLinks2.equals(cdashDomainLinks1));
        System.assert(cdashDomainLinks3.equals(cdashDomainLinks4));
        System.assert(cdashDomainLinks4.equals(cdashDomainLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainLinks cdashDomainLinks1 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks2 = new OASCdashDomainLinks();

        System.assertEquals(false, cdashDomainLinks1.equals('foo'));
        System.assertEquals(false, cdashDomainLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainLinks cdashDomainLinks1 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks2 = new OASCdashDomainLinks();
        OASCdashDomainLinks cdashDomainLinks3;

        System.assertEquals(false, cdashDomainLinks1.equals(cdashDomainLinks3));
        System.assertEquals(false, cdashDomainLinks2.equals(cdashDomainLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainLinks cdashDomainLinks1 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks2 = new OASCdashDomainLinks();

        System.assertEquals(cdashDomainLinks1.hashCode(), cdashDomainLinks1.hashCode());
        System.assertEquals(cdashDomainLinks2.hashCode(), cdashDomainLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainLinks cdashDomainLinks1 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks2 = OASCdashDomainLinks.getExample();
        OASCdashDomainLinks cdashDomainLinks3 = new OASCdashDomainLinks();
        OASCdashDomainLinks cdashDomainLinks4 = new OASCdashDomainLinks();

        System.assert(cdashDomainLinks1.equals(cdashDomainLinks2));
        System.assert(cdashDomainLinks3.equals(cdashDomainLinks4));
        System.assertEquals(cdashDomainLinks1.hashCode(), cdashDomainLinks2.hashCode());
        System.assertEquals(cdashDomainLinks3.hashCode(), cdashDomainLinks4.hashCode());
    }
}
