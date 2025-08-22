@isTest
private class OASCdashigScenarioFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks1 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks2 = cdashigScenarioFieldLinks1;
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks3 = new OASCdashigScenarioFieldLinks();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks4 = cdashigScenarioFieldLinks3;

        System.assert(cdashigScenarioFieldLinks1.equals(cdashigScenarioFieldLinks2));
        System.assert(cdashigScenarioFieldLinks2.equals(cdashigScenarioFieldLinks1));
        System.assert(cdashigScenarioFieldLinks1.equals(cdashigScenarioFieldLinks1));
        System.assert(cdashigScenarioFieldLinks3.equals(cdashigScenarioFieldLinks4));
        System.assert(cdashigScenarioFieldLinks4.equals(cdashigScenarioFieldLinks3));
        System.assert(cdashigScenarioFieldLinks3.equals(cdashigScenarioFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks1 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks2 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks3 = new OASCdashigScenarioFieldLinks();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks4 = new OASCdashigScenarioFieldLinks();

        System.assert(cdashigScenarioFieldLinks1.equals(cdashigScenarioFieldLinks2));
        System.assert(cdashigScenarioFieldLinks2.equals(cdashigScenarioFieldLinks1));
        System.assert(cdashigScenarioFieldLinks3.equals(cdashigScenarioFieldLinks4));
        System.assert(cdashigScenarioFieldLinks4.equals(cdashigScenarioFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks1 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks2 = new OASCdashigScenarioFieldLinks();

        System.assertEquals(false, cdashigScenarioFieldLinks1.equals('foo'));
        System.assertEquals(false, cdashigScenarioFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks1 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks2 = new OASCdashigScenarioFieldLinks();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks3;

        System.assertEquals(false, cdashigScenarioFieldLinks1.equals(cdashigScenarioFieldLinks3));
        System.assertEquals(false, cdashigScenarioFieldLinks2.equals(cdashigScenarioFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks1 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks2 = new OASCdashigScenarioFieldLinks();

        System.assertEquals(cdashigScenarioFieldLinks1.hashCode(), cdashigScenarioFieldLinks1.hashCode());
        System.assertEquals(cdashigScenarioFieldLinks2.hashCode(), cdashigScenarioFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks1 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks2 = OASCdashigScenarioFieldLinks.getExample();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks3 = new OASCdashigScenarioFieldLinks();
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks4 = new OASCdashigScenarioFieldLinks();

        System.assert(cdashigScenarioFieldLinks1.equals(cdashigScenarioFieldLinks2));
        System.assert(cdashigScenarioFieldLinks3.equals(cdashigScenarioFieldLinks4));
        System.assertEquals(cdashigScenarioFieldLinks1.hashCode(), cdashigScenarioFieldLinks2.hashCode());
        System.assertEquals(cdashigScenarioFieldLinks3.hashCode(), cdashigScenarioFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigScenarioFieldLinks cdashigScenarioFieldLinks = new OASCdashigScenarioFieldLinks();
        System.assertEquals(new List<OASRootCtCodelistRefElement>(), cdashigScenarioFieldLinks.codelist);
        System.assertEquals(new List<OASSdtmigDatasetVariableRefTarget>(), cdashigScenarioFieldLinks.sdtmigDatasetMappingTargets);
        System.assertEquals(null, cdashigScenarioFieldLinks.self);
        System.assertEquals(null, cdashigScenarioFieldLinks.parentProduct);
        System.assertEquals(null, cdashigScenarioFieldLinks.parentDomain);
        System.assertEquals(null, cdashigScenarioFieldLinks.parentScenario);
        System.assertEquals(null, cdashigScenarioFieldLinks.rootItem);
        System.assertEquals(null, cdashigScenarioFieldLinks.priorVersion);
    }
}
