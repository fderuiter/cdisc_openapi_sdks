@isTest
private class OASCdashigClassDomainsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks1 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks2 = cdashigClassDomainsLinks1;
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks3 = new OASCdashigClassDomainsLinks();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks4 = cdashigClassDomainsLinks3;

        System.assert(cdashigClassDomainsLinks1.equals(cdashigClassDomainsLinks2));
        System.assert(cdashigClassDomainsLinks2.equals(cdashigClassDomainsLinks1));
        System.assert(cdashigClassDomainsLinks1.equals(cdashigClassDomainsLinks1));
        System.assert(cdashigClassDomainsLinks3.equals(cdashigClassDomainsLinks4));
        System.assert(cdashigClassDomainsLinks4.equals(cdashigClassDomainsLinks3));
        System.assert(cdashigClassDomainsLinks3.equals(cdashigClassDomainsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks1 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks2 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks3 = new OASCdashigClassDomainsLinks();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks4 = new OASCdashigClassDomainsLinks();

        System.assert(cdashigClassDomainsLinks1.equals(cdashigClassDomainsLinks2));
        System.assert(cdashigClassDomainsLinks2.equals(cdashigClassDomainsLinks1));
        System.assert(cdashigClassDomainsLinks3.equals(cdashigClassDomainsLinks4));
        System.assert(cdashigClassDomainsLinks4.equals(cdashigClassDomainsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks1 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks2 = new OASCdashigClassDomainsLinks();

        System.assertEquals(false, cdashigClassDomainsLinks1.equals('foo'));
        System.assertEquals(false, cdashigClassDomainsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks1 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks2 = new OASCdashigClassDomainsLinks();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks3;

        System.assertEquals(false, cdashigClassDomainsLinks1.equals(cdashigClassDomainsLinks3));
        System.assertEquals(false, cdashigClassDomainsLinks2.equals(cdashigClassDomainsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks1 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks2 = new OASCdashigClassDomainsLinks();

        System.assertEquals(cdashigClassDomainsLinks1.hashCode(), cdashigClassDomainsLinks1.hashCode());
        System.assertEquals(cdashigClassDomainsLinks2.hashCode(), cdashigClassDomainsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks1 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks2 = OASCdashigClassDomainsLinks.getExample();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks3 = new OASCdashigClassDomainsLinks();
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks4 = new OASCdashigClassDomainsLinks();

        System.assert(cdashigClassDomainsLinks1.equals(cdashigClassDomainsLinks2));
        System.assert(cdashigClassDomainsLinks3.equals(cdashigClassDomainsLinks4));
        System.assertEquals(cdashigClassDomainsLinks1.hashCode(), cdashigClassDomainsLinks2.hashCode());
        System.assertEquals(cdashigClassDomainsLinks3.hashCode(), cdashigClassDomainsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigClassDomainsLinks cdashigClassDomainsLinks = new OASCdashigClassDomainsLinks();
        System.assertEquals(new List<OASCdashigDomainRefElement>(), cdashigClassDomainsLinks.domains);
        System.assertEquals(null, cdashigClassDomainsLinks.self);
    }
}
