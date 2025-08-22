@isTest
private class OASCdashigProductDomainsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks1 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks2 = cdashigProductDomainsLinks1;
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks3 = new OASCdashigProductDomainsLinks();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks4 = cdashigProductDomainsLinks3;

        System.assert(cdashigProductDomainsLinks1.equals(cdashigProductDomainsLinks2));
        System.assert(cdashigProductDomainsLinks2.equals(cdashigProductDomainsLinks1));
        System.assert(cdashigProductDomainsLinks1.equals(cdashigProductDomainsLinks1));
        System.assert(cdashigProductDomainsLinks3.equals(cdashigProductDomainsLinks4));
        System.assert(cdashigProductDomainsLinks4.equals(cdashigProductDomainsLinks3));
        System.assert(cdashigProductDomainsLinks3.equals(cdashigProductDomainsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks1 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks2 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks3 = new OASCdashigProductDomainsLinks();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks4 = new OASCdashigProductDomainsLinks();

        System.assert(cdashigProductDomainsLinks1.equals(cdashigProductDomainsLinks2));
        System.assert(cdashigProductDomainsLinks2.equals(cdashigProductDomainsLinks1));
        System.assert(cdashigProductDomainsLinks3.equals(cdashigProductDomainsLinks4));
        System.assert(cdashigProductDomainsLinks4.equals(cdashigProductDomainsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks1 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks2 = new OASCdashigProductDomainsLinks();

        System.assertEquals(false, cdashigProductDomainsLinks1.equals('foo'));
        System.assertEquals(false, cdashigProductDomainsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks1 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks2 = new OASCdashigProductDomainsLinks();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks3;

        System.assertEquals(false, cdashigProductDomainsLinks1.equals(cdashigProductDomainsLinks3));
        System.assertEquals(false, cdashigProductDomainsLinks2.equals(cdashigProductDomainsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks1 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks2 = new OASCdashigProductDomainsLinks();

        System.assertEquals(cdashigProductDomainsLinks1.hashCode(), cdashigProductDomainsLinks1.hashCode());
        System.assertEquals(cdashigProductDomainsLinks2.hashCode(), cdashigProductDomainsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks1 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks2 = OASCdashigProductDomainsLinks.getExample();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks3 = new OASCdashigProductDomainsLinks();
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks4 = new OASCdashigProductDomainsLinks();

        System.assert(cdashigProductDomainsLinks1.equals(cdashigProductDomainsLinks2));
        System.assert(cdashigProductDomainsLinks3.equals(cdashigProductDomainsLinks4));
        System.assertEquals(cdashigProductDomainsLinks1.hashCode(), cdashigProductDomainsLinks2.hashCode());
        System.assertEquals(cdashigProductDomainsLinks3.hashCode(), cdashigProductDomainsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigProductDomainsLinks cdashigProductDomainsLinks = new OASCdashigProductDomainsLinks();
        System.assertEquals(new List<OASCdashigDomainRefElement>(), cdashigProductDomainsLinks.domains);
        System.assertEquals(null, cdashigProductDomainsLinks.self);
        System.assertEquals(null, cdashigProductDomainsLinks.parentProduct);
    }
}
