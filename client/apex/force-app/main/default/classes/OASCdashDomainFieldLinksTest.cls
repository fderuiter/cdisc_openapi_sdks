@isTest
private class OASCdashDomainFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainFieldLinks cdashDomainFieldLinks1 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks2 = cdashDomainFieldLinks1;
        OASCdashDomainFieldLinks cdashDomainFieldLinks3 = new OASCdashDomainFieldLinks();
        OASCdashDomainFieldLinks cdashDomainFieldLinks4 = cdashDomainFieldLinks3;

        System.assert(cdashDomainFieldLinks1.equals(cdashDomainFieldLinks2));
        System.assert(cdashDomainFieldLinks2.equals(cdashDomainFieldLinks1));
        System.assert(cdashDomainFieldLinks1.equals(cdashDomainFieldLinks1));
        System.assert(cdashDomainFieldLinks3.equals(cdashDomainFieldLinks4));
        System.assert(cdashDomainFieldLinks4.equals(cdashDomainFieldLinks3));
        System.assert(cdashDomainFieldLinks3.equals(cdashDomainFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainFieldLinks cdashDomainFieldLinks1 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks2 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks3 = new OASCdashDomainFieldLinks();
        OASCdashDomainFieldLinks cdashDomainFieldLinks4 = new OASCdashDomainFieldLinks();

        System.assert(cdashDomainFieldLinks1.equals(cdashDomainFieldLinks2));
        System.assert(cdashDomainFieldLinks2.equals(cdashDomainFieldLinks1));
        System.assert(cdashDomainFieldLinks3.equals(cdashDomainFieldLinks4));
        System.assert(cdashDomainFieldLinks4.equals(cdashDomainFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainFieldLinks cdashDomainFieldLinks1 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks2 = new OASCdashDomainFieldLinks();

        System.assertEquals(false, cdashDomainFieldLinks1.equals('foo'));
        System.assertEquals(false, cdashDomainFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainFieldLinks cdashDomainFieldLinks1 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks2 = new OASCdashDomainFieldLinks();
        OASCdashDomainFieldLinks cdashDomainFieldLinks3;

        System.assertEquals(false, cdashDomainFieldLinks1.equals(cdashDomainFieldLinks3));
        System.assertEquals(false, cdashDomainFieldLinks2.equals(cdashDomainFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainFieldLinks cdashDomainFieldLinks1 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks2 = new OASCdashDomainFieldLinks();

        System.assertEquals(cdashDomainFieldLinks1.hashCode(), cdashDomainFieldLinks1.hashCode());
        System.assertEquals(cdashDomainFieldLinks2.hashCode(), cdashDomainFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainFieldLinks cdashDomainFieldLinks1 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks2 = OASCdashDomainFieldLinks.getExample();
        OASCdashDomainFieldLinks cdashDomainFieldLinks3 = new OASCdashDomainFieldLinks();
        OASCdashDomainFieldLinks cdashDomainFieldLinks4 = new OASCdashDomainFieldLinks();

        System.assert(cdashDomainFieldLinks1.equals(cdashDomainFieldLinks2));
        System.assert(cdashDomainFieldLinks3.equals(cdashDomainFieldLinks4));
        System.assertEquals(cdashDomainFieldLinks1.hashCode(), cdashDomainFieldLinks2.hashCode());
        System.assertEquals(cdashDomainFieldLinks3.hashCode(), cdashDomainFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashDomainFieldLinks cdashDomainFieldLinks = new OASCdashDomainFieldLinks();
        System.assertEquals(new List<OASRootCtCodelistRefElement>(), cdashDomainFieldLinks.codelist);
        System.assertEquals(new List<OASSdtmDatasetVariableRefTarget>(), cdashDomainFieldLinks.sdtmDatasetMappingTargets);
        System.assertEquals(new List<OASSdtmigDatasetVariableRefTarget>(), cdashDomainFieldLinks.sdtmigDatasetMappingTargets);
        System.assertEquals(null, cdashDomainFieldLinks.self);
        System.assertEquals(null, cdashDomainFieldLinks.parentProduct);
        System.assertEquals(null, cdashDomainFieldLinks.parentClass);
        System.assertEquals(null, cdashDomainFieldLinks.parentDomain);
        System.assertEquals(null, cdashDomainFieldLinks.rootItem);
        System.assertEquals(null, cdashDomainFieldLinks.priorVersion);
    }
}
