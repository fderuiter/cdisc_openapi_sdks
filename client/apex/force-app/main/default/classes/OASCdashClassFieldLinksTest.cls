@isTest
private class OASCdashClassFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassFieldLinks cdashClassFieldLinks1 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks2 = cdashClassFieldLinks1;
        OASCdashClassFieldLinks cdashClassFieldLinks3 = new OASCdashClassFieldLinks();
        OASCdashClassFieldLinks cdashClassFieldLinks4 = cdashClassFieldLinks3;

        System.assert(cdashClassFieldLinks1.equals(cdashClassFieldLinks2));
        System.assert(cdashClassFieldLinks2.equals(cdashClassFieldLinks1));
        System.assert(cdashClassFieldLinks1.equals(cdashClassFieldLinks1));
        System.assert(cdashClassFieldLinks3.equals(cdashClassFieldLinks4));
        System.assert(cdashClassFieldLinks4.equals(cdashClassFieldLinks3));
        System.assert(cdashClassFieldLinks3.equals(cdashClassFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassFieldLinks cdashClassFieldLinks1 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks2 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks3 = new OASCdashClassFieldLinks();
        OASCdashClassFieldLinks cdashClassFieldLinks4 = new OASCdashClassFieldLinks();

        System.assert(cdashClassFieldLinks1.equals(cdashClassFieldLinks2));
        System.assert(cdashClassFieldLinks2.equals(cdashClassFieldLinks1));
        System.assert(cdashClassFieldLinks3.equals(cdashClassFieldLinks4));
        System.assert(cdashClassFieldLinks4.equals(cdashClassFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassFieldLinks cdashClassFieldLinks1 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks2 = new OASCdashClassFieldLinks();

        System.assertEquals(false, cdashClassFieldLinks1.equals('foo'));
        System.assertEquals(false, cdashClassFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassFieldLinks cdashClassFieldLinks1 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks2 = new OASCdashClassFieldLinks();
        OASCdashClassFieldLinks cdashClassFieldLinks3;

        System.assertEquals(false, cdashClassFieldLinks1.equals(cdashClassFieldLinks3));
        System.assertEquals(false, cdashClassFieldLinks2.equals(cdashClassFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassFieldLinks cdashClassFieldLinks1 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks2 = new OASCdashClassFieldLinks();

        System.assertEquals(cdashClassFieldLinks1.hashCode(), cdashClassFieldLinks1.hashCode());
        System.assertEquals(cdashClassFieldLinks2.hashCode(), cdashClassFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassFieldLinks cdashClassFieldLinks1 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks2 = OASCdashClassFieldLinks.getExample();
        OASCdashClassFieldLinks cdashClassFieldLinks3 = new OASCdashClassFieldLinks();
        OASCdashClassFieldLinks cdashClassFieldLinks4 = new OASCdashClassFieldLinks();

        System.assert(cdashClassFieldLinks1.equals(cdashClassFieldLinks2));
        System.assert(cdashClassFieldLinks3.equals(cdashClassFieldLinks4));
        System.assertEquals(cdashClassFieldLinks1.hashCode(), cdashClassFieldLinks2.hashCode());
        System.assertEquals(cdashClassFieldLinks3.hashCode(), cdashClassFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashClassFieldLinks cdashClassFieldLinks = new OASCdashClassFieldLinks();
        System.assertEquals(new List<OASRootCtCodelistRefElement>(), cdashClassFieldLinks.codelist);
        System.assertEquals(new List<OASSdtmClassVariableRefTarget>(), cdashClassFieldLinks.sdtmClassMappingTargets);
        System.assertEquals(new List<OASSdtmDatasetVariableRefTarget>(), cdashClassFieldLinks.sdtmDatasetMappingTargets);
        System.assertEquals(null, cdashClassFieldLinks.self);
        System.assertEquals(null, cdashClassFieldLinks.parentProduct);
        System.assertEquals(null, cdashClassFieldLinks.parentClass);
        System.assertEquals(null, cdashClassFieldLinks.rootItem);
        System.assertEquals(null, cdashClassFieldLinks.priorVersion);
    }
}
