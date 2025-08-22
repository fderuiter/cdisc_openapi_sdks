@isTest
private class OASCdashigDomainLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainLinks cdashigDomainLinks1 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks2 = cdashigDomainLinks1;
        OASCdashigDomainLinks cdashigDomainLinks3 = new OASCdashigDomainLinks();
        OASCdashigDomainLinks cdashigDomainLinks4 = cdashigDomainLinks3;

        System.assert(cdashigDomainLinks1.equals(cdashigDomainLinks2));
        System.assert(cdashigDomainLinks2.equals(cdashigDomainLinks1));
        System.assert(cdashigDomainLinks1.equals(cdashigDomainLinks1));
        System.assert(cdashigDomainLinks3.equals(cdashigDomainLinks4));
        System.assert(cdashigDomainLinks4.equals(cdashigDomainLinks3));
        System.assert(cdashigDomainLinks3.equals(cdashigDomainLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainLinks cdashigDomainLinks1 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks2 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks3 = new OASCdashigDomainLinks();
        OASCdashigDomainLinks cdashigDomainLinks4 = new OASCdashigDomainLinks();

        System.assert(cdashigDomainLinks1.equals(cdashigDomainLinks2));
        System.assert(cdashigDomainLinks2.equals(cdashigDomainLinks1));
        System.assert(cdashigDomainLinks3.equals(cdashigDomainLinks4));
        System.assert(cdashigDomainLinks4.equals(cdashigDomainLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainLinks cdashigDomainLinks1 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks2 = new OASCdashigDomainLinks();

        System.assertEquals(false, cdashigDomainLinks1.equals('foo'));
        System.assertEquals(false, cdashigDomainLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainLinks cdashigDomainLinks1 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks2 = new OASCdashigDomainLinks();
        OASCdashigDomainLinks cdashigDomainLinks3;

        System.assertEquals(false, cdashigDomainLinks1.equals(cdashigDomainLinks3));
        System.assertEquals(false, cdashigDomainLinks2.equals(cdashigDomainLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainLinks cdashigDomainLinks1 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks2 = new OASCdashigDomainLinks();

        System.assertEquals(cdashigDomainLinks1.hashCode(), cdashigDomainLinks1.hashCode());
        System.assertEquals(cdashigDomainLinks2.hashCode(), cdashigDomainLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainLinks cdashigDomainLinks1 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks2 = OASCdashigDomainLinks.getExample();
        OASCdashigDomainLinks cdashigDomainLinks3 = new OASCdashigDomainLinks();
        OASCdashigDomainLinks cdashigDomainLinks4 = new OASCdashigDomainLinks();

        System.assert(cdashigDomainLinks1.equals(cdashigDomainLinks2));
        System.assert(cdashigDomainLinks3.equals(cdashigDomainLinks4));
        System.assertEquals(cdashigDomainLinks1.hashCode(), cdashigDomainLinks2.hashCode());
        System.assertEquals(cdashigDomainLinks3.hashCode(), cdashigDomainLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigDomainLinks cdashigDomainLinks = new OASCdashigDomainLinks();
        System.assertEquals(new List<OASCdashigScenarioRefElement>(), cdashigDomainLinks.scenarios);
        System.assertEquals(null, cdashigDomainLinks.self);
        System.assertEquals(null, cdashigDomainLinks.parentProduct);
        System.assertEquals(null, cdashigDomainLinks.parentClass);
        System.assertEquals(null, cdashigDomainLinks.priorVersion);
    }
}
