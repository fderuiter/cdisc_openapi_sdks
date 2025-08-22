@isTest
private class OASCdashProductDomainsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductDomainsLinks cdashProductDomainsLinks1 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks2 = cdashProductDomainsLinks1;
        OASCdashProductDomainsLinks cdashProductDomainsLinks3 = new OASCdashProductDomainsLinks();
        OASCdashProductDomainsLinks cdashProductDomainsLinks4 = cdashProductDomainsLinks3;

        System.assert(cdashProductDomainsLinks1.equals(cdashProductDomainsLinks2));
        System.assert(cdashProductDomainsLinks2.equals(cdashProductDomainsLinks1));
        System.assert(cdashProductDomainsLinks1.equals(cdashProductDomainsLinks1));
        System.assert(cdashProductDomainsLinks3.equals(cdashProductDomainsLinks4));
        System.assert(cdashProductDomainsLinks4.equals(cdashProductDomainsLinks3));
        System.assert(cdashProductDomainsLinks3.equals(cdashProductDomainsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductDomainsLinks cdashProductDomainsLinks1 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks2 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks3 = new OASCdashProductDomainsLinks();
        OASCdashProductDomainsLinks cdashProductDomainsLinks4 = new OASCdashProductDomainsLinks();

        System.assert(cdashProductDomainsLinks1.equals(cdashProductDomainsLinks2));
        System.assert(cdashProductDomainsLinks2.equals(cdashProductDomainsLinks1));
        System.assert(cdashProductDomainsLinks3.equals(cdashProductDomainsLinks4));
        System.assert(cdashProductDomainsLinks4.equals(cdashProductDomainsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductDomainsLinks cdashProductDomainsLinks1 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks2 = new OASCdashProductDomainsLinks();

        System.assertEquals(false, cdashProductDomainsLinks1.equals('foo'));
        System.assertEquals(false, cdashProductDomainsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductDomainsLinks cdashProductDomainsLinks1 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks2 = new OASCdashProductDomainsLinks();
        OASCdashProductDomainsLinks cdashProductDomainsLinks3;

        System.assertEquals(false, cdashProductDomainsLinks1.equals(cdashProductDomainsLinks3));
        System.assertEquals(false, cdashProductDomainsLinks2.equals(cdashProductDomainsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductDomainsLinks cdashProductDomainsLinks1 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks2 = new OASCdashProductDomainsLinks();

        System.assertEquals(cdashProductDomainsLinks1.hashCode(), cdashProductDomainsLinks1.hashCode());
        System.assertEquals(cdashProductDomainsLinks2.hashCode(), cdashProductDomainsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductDomainsLinks cdashProductDomainsLinks1 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks2 = OASCdashProductDomainsLinks.getExample();
        OASCdashProductDomainsLinks cdashProductDomainsLinks3 = new OASCdashProductDomainsLinks();
        OASCdashProductDomainsLinks cdashProductDomainsLinks4 = new OASCdashProductDomainsLinks();

        System.assert(cdashProductDomainsLinks1.equals(cdashProductDomainsLinks2));
        System.assert(cdashProductDomainsLinks3.equals(cdashProductDomainsLinks4));
        System.assertEquals(cdashProductDomainsLinks1.hashCode(), cdashProductDomainsLinks2.hashCode());
        System.assertEquals(cdashProductDomainsLinks3.hashCode(), cdashProductDomainsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashProductDomainsLinks cdashProductDomainsLinks = new OASCdashProductDomainsLinks();
        System.assertEquals(new List<OASCdashDomainRefElement>(), cdashProductDomainsLinks.domains);
        System.assertEquals(null, cdashProductDomainsLinks.self);
        System.assertEquals(null, cdashProductDomainsLinks.parentProduct);
    }
}
