@isTest
private class OASCdashClassDomainsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassDomainsLinks cdashClassDomainsLinks1 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks2 = cdashClassDomainsLinks1;
        OASCdashClassDomainsLinks cdashClassDomainsLinks3 = new OASCdashClassDomainsLinks();
        OASCdashClassDomainsLinks cdashClassDomainsLinks4 = cdashClassDomainsLinks3;

        System.assert(cdashClassDomainsLinks1.equals(cdashClassDomainsLinks2));
        System.assert(cdashClassDomainsLinks2.equals(cdashClassDomainsLinks1));
        System.assert(cdashClassDomainsLinks1.equals(cdashClassDomainsLinks1));
        System.assert(cdashClassDomainsLinks3.equals(cdashClassDomainsLinks4));
        System.assert(cdashClassDomainsLinks4.equals(cdashClassDomainsLinks3));
        System.assert(cdashClassDomainsLinks3.equals(cdashClassDomainsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassDomainsLinks cdashClassDomainsLinks1 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks2 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks3 = new OASCdashClassDomainsLinks();
        OASCdashClassDomainsLinks cdashClassDomainsLinks4 = new OASCdashClassDomainsLinks();

        System.assert(cdashClassDomainsLinks1.equals(cdashClassDomainsLinks2));
        System.assert(cdashClassDomainsLinks2.equals(cdashClassDomainsLinks1));
        System.assert(cdashClassDomainsLinks3.equals(cdashClassDomainsLinks4));
        System.assert(cdashClassDomainsLinks4.equals(cdashClassDomainsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassDomainsLinks cdashClassDomainsLinks1 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks2 = new OASCdashClassDomainsLinks();

        System.assertEquals(false, cdashClassDomainsLinks1.equals('foo'));
        System.assertEquals(false, cdashClassDomainsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassDomainsLinks cdashClassDomainsLinks1 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks2 = new OASCdashClassDomainsLinks();
        OASCdashClassDomainsLinks cdashClassDomainsLinks3;

        System.assertEquals(false, cdashClassDomainsLinks1.equals(cdashClassDomainsLinks3));
        System.assertEquals(false, cdashClassDomainsLinks2.equals(cdashClassDomainsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassDomainsLinks cdashClassDomainsLinks1 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks2 = new OASCdashClassDomainsLinks();

        System.assertEquals(cdashClassDomainsLinks1.hashCode(), cdashClassDomainsLinks1.hashCode());
        System.assertEquals(cdashClassDomainsLinks2.hashCode(), cdashClassDomainsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassDomainsLinks cdashClassDomainsLinks1 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks2 = OASCdashClassDomainsLinks.getExample();
        OASCdashClassDomainsLinks cdashClassDomainsLinks3 = new OASCdashClassDomainsLinks();
        OASCdashClassDomainsLinks cdashClassDomainsLinks4 = new OASCdashClassDomainsLinks();

        System.assert(cdashClassDomainsLinks1.equals(cdashClassDomainsLinks2));
        System.assert(cdashClassDomainsLinks3.equals(cdashClassDomainsLinks4));
        System.assertEquals(cdashClassDomainsLinks1.hashCode(), cdashClassDomainsLinks2.hashCode());
        System.assertEquals(cdashClassDomainsLinks3.hashCode(), cdashClassDomainsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashClassDomainsLinks cdashClassDomainsLinks = new OASCdashClassDomainsLinks();
        System.assertEquals(new List<OASCdashDomainRefElement>(), cdashClassDomainsLinks.domains);
        System.assertEquals(null, cdashClassDomainsLinks.self);
    }
}
