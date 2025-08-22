@isTest
private class OASCdashigScenarioFieldsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks1 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks2 = cdashigScenarioFieldsLinks1;
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks3 = new OASCdashigScenarioFieldsLinks();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks4 = cdashigScenarioFieldsLinks3;

        System.assert(cdashigScenarioFieldsLinks1.equals(cdashigScenarioFieldsLinks2));
        System.assert(cdashigScenarioFieldsLinks2.equals(cdashigScenarioFieldsLinks1));
        System.assert(cdashigScenarioFieldsLinks1.equals(cdashigScenarioFieldsLinks1));
        System.assert(cdashigScenarioFieldsLinks3.equals(cdashigScenarioFieldsLinks4));
        System.assert(cdashigScenarioFieldsLinks4.equals(cdashigScenarioFieldsLinks3));
        System.assert(cdashigScenarioFieldsLinks3.equals(cdashigScenarioFieldsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks1 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks2 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks3 = new OASCdashigScenarioFieldsLinks();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks4 = new OASCdashigScenarioFieldsLinks();

        System.assert(cdashigScenarioFieldsLinks1.equals(cdashigScenarioFieldsLinks2));
        System.assert(cdashigScenarioFieldsLinks2.equals(cdashigScenarioFieldsLinks1));
        System.assert(cdashigScenarioFieldsLinks3.equals(cdashigScenarioFieldsLinks4));
        System.assert(cdashigScenarioFieldsLinks4.equals(cdashigScenarioFieldsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks1 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks2 = new OASCdashigScenarioFieldsLinks();

        System.assertEquals(false, cdashigScenarioFieldsLinks1.equals('foo'));
        System.assertEquals(false, cdashigScenarioFieldsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks1 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks2 = new OASCdashigScenarioFieldsLinks();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks3;

        System.assertEquals(false, cdashigScenarioFieldsLinks1.equals(cdashigScenarioFieldsLinks3));
        System.assertEquals(false, cdashigScenarioFieldsLinks2.equals(cdashigScenarioFieldsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks1 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks2 = new OASCdashigScenarioFieldsLinks();

        System.assertEquals(cdashigScenarioFieldsLinks1.hashCode(), cdashigScenarioFieldsLinks1.hashCode());
        System.assertEquals(cdashigScenarioFieldsLinks2.hashCode(), cdashigScenarioFieldsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks1 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks2 = OASCdashigScenarioFieldsLinks.getExample();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks3 = new OASCdashigScenarioFieldsLinks();
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks4 = new OASCdashigScenarioFieldsLinks();

        System.assert(cdashigScenarioFieldsLinks1.equals(cdashigScenarioFieldsLinks2));
        System.assert(cdashigScenarioFieldsLinks3.equals(cdashigScenarioFieldsLinks4));
        System.assertEquals(cdashigScenarioFieldsLinks1.hashCode(), cdashigScenarioFieldsLinks2.hashCode());
        System.assertEquals(cdashigScenarioFieldsLinks3.hashCode(), cdashigScenarioFieldsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigScenarioFieldsLinks cdashigScenarioFieldsLinks = new OASCdashigScenarioFieldsLinks();
        System.assertEquals(new List<OASCdashigScenarioFieldRefElement>(), cdashigScenarioFieldsLinks.fields);
        System.assertEquals(null, cdashigScenarioFieldsLinks.self);
        System.assertEquals(null, cdashigScenarioFieldsLinks.parentProduct);
        System.assertEquals(null, cdashigScenarioFieldsLinks.parentClass);
        System.assertEquals(null, cdashigScenarioFieldsLinks.parentDomain);
    }
}
