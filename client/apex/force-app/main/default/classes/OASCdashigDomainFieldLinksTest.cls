@isTest
private class OASCdashigDomainFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks1 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks2 = cdashigDomainFieldLinks1;
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks3 = new OASCdashigDomainFieldLinks();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks4 = cdashigDomainFieldLinks3;

        System.assert(cdashigDomainFieldLinks1.equals(cdashigDomainFieldLinks2));
        System.assert(cdashigDomainFieldLinks2.equals(cdashigDomainFieldLinks1));
        System.assert(cdashigDomainFieldLinks1.equals(cdashigDomainFieldLinks1));
        System.assert(cdashigDomainFieldLinks3.equals(cdashigDomainFieldLinks4));
        System.assert(cdashigDomainFieldLinks4.equals(cdashigDomainFieldLinks3));
        System.assert(cdashigDomainFieldLinks3.equals(cdashigDomainFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks1 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks2 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks3 = new OASCdashigDomainFieldLinks();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks4 = new OASCdashigDomainFieldLinks();

        System.assert(cdashigDomainFieldLinks1.equals(cdashigDomainFieldLinks2));
        System.assert(cdashigDomainFieldLinks2.equals(cdashigDomainFieldLinks1));
        System.assert(cdashigDomainFieldLinks3.equals(cdashigDomainFieldLinks4));
        System.assert(cdashigDomainFieldLinks4.equals(cdashigDomainFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks1 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks2 = new OASCdashigDomainFieldLinks();

        System.assertEquals(false, cdashigDomainFieldLinks1.equals('foo'));
        System.assertEquals(false, cdashigDomainFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks1 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks2 = new OASCdashigDomainFieldLinks();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks3;

        System.assertEquals(false, cdashigDomainFieldLinks1.equals(cdashigDomainFieldLinks3));
        System.assertEquals(false, cdashigDomainFieldLinks2.equals(cdashigDomainFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks1 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks2 = new OASCdashigDomainFieldLinks();

        System.assertEquals(cdashigDomainFieldLinks1.hashCode(), cdashigDomainFieldLinks1.hashCode());
        System.assertEquals(cdashigDomainFieldLinks2.hashCode(), cdashigDomainFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks1 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks2 = OASCdashigDomainFieldLinks.getExample();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks3 = new OASCdashigDomainFieldLinks();
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks4 = new OASCdashigDomainFieldLinks();

        System.assert(cdashigDomainFieldLinks1.equals(cdashigDomainFieldLinks2));
        System.assert(cdashigDomainFieldLinks3.equals(cdashigDomainFieldLinks4));
        System.assertEquals(cdashigDomainFieldLinks1.hashCode(), cdashigDomainFieldLinks2.hashCode());
        System.assertEquals(cdashigDomainFieldLinks3.hashCode(), cdashigDomainFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigDomainFieldLinks cdashigDomainFieldLinks = new OASCdashigDomainFieldLinks();
        System.assertEquals(new List<OASRootCtCodelistRefElement>(), cdashigDomainFieldLinks.codelist);
        System.assertEquals(new List<OASSdtmClassVariableRefTarget>(), cdashigDomainFieldLinks.sdtmClassMappingTargets);
        System.assertEquals(new List<OASSdtmigDatasetVariableRefTarget>(), cdashigDomainFieldLinks.sdtmigDatasetMappingTargets);
        System.assertEquals(null, cdashigDomainFieldLinks.self);
        System.assertEquals(null, cdashigDomainFieldLinks.parentProduct);
        System.assertEquals(null, cdashigDomainFieldLinks.parentDomain);
        System.assertEquals(null, cdashigDomainFieldLinks.rootItem);
        System.assertEquals(null, cdashigDomainFieldLinks.priorVersion);
    }
}
