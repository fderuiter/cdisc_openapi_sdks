@isTest
private class OASCdashDomainFieldsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks1 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks2 = cdashDomainFieldsLinks1;
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks3 = new OASCdashDomainFieldsLinks();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks4 = cdashDomainFieldsLinks3;

        System.assert(cdashDomainFieldsLinks1.equals(cdashDomainFieldsLinks2));
        System.assert(cdashDomainFieldsLinks2.equals(cdashDomainFieldsLinks1));
        System.assert(cdashDomainFieldsLinks1.equals(cdashDomainFieldsLinks1));
        System.assert(cdashDomainFieldsLinks3.equals(cdashDomainFieldsLinks4));
        System.assert(cdashDomainFieldsLinks4.equals(cdashDomainFieldsLinks3));
        System.assert(cdashDomainFieldsLinks3.equals(cdashDomainFieldsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks1 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks2 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks3 = new OASCdashDomainFieldsLinks();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks4 = new OASCdashDomainFieldsLinks();

        System.assert(cdashDomainFieldsLinks1.equals(cdashDomainFieldsLinks2));
        System.assert(cdashDomainFieldsLinks2.equals(cdashDomainFieldsLinks1));
        System.assert(cdashDomainFieldsLinks3.equals(cdashDomainFieldsLinks4));
        System.assert(cdashDomainFieldsLinks4.equals(cdashDomainFieldsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks1 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks2 = new OASCdashDomainFieldsLinks();

        System.assertEquals(false, cdashDomainFieldsLinks1.equals('foo'));
        System.assertEquals(false, cdashDomainFieldsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks1 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks2 = new OASCdashDomainFieldsLinks();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks3;

        System.assertEquals(false, cdashDomainFieldsLinks1.equals(cdashDomainFieldsLinks3));
        System.assertEquals(false, cdashDomainFieldsLinks2.equals(cdashDomainFieldsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks1 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks2 = new OASCdashDomainFieldsLinks();

        System.assertEquals(cdashDomainFieldsLinks1.hashCode(), cdashDomainFieldsLinks1.hashCode());
        System.assertEquals(cdashDomainFieldsLinks2.hashCode(), cdashDomainFieldsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks1 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks2 = OASCdashDomainFieldsLinks.getExample();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks3 = new OASCdashDomainFieldsLinks();
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks4 = new OASCdashDomainFieldsLinks();

        System.assert(cdashDomainFieldsLinks1.equals(cdashDomainFieldsLinks2));
        System.assert(cdashDomainFieldsLinks3.equals(cdashDomainFieldsLinks4));
        System.assertEquals(cdashDomainFieldsLinks1.hashCode(), cdashDomainFieldsLinks2.hashCode());
        System.assertEquals(cdashDomainFieldsLinks3.hashCode(), cdashDomainFieldsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashDomainFieldsLinks cdashDomainFieldsLinks = new OASCdashDomainFieldsLinks();
        System.assertEquals(new List<OASCdashDomainFieldRefElement>(), cdashDomainFieldsLinks.fields);
        System.assertEquals(null, cdashDomainFieldsLinks.self);
        System.assertEquals(null, cdashDomainFieldsLinks.parentProduct);
        System.assertEquals(null, cdashDomainFieldsLinks.parentClass);
    }
}
