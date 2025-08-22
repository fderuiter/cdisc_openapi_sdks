@isTest
private class OASCdashigDomainFieldsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks1 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks2 = cdashigDomainFieldsLinks1;
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks3 = new OASCdashigDomainFieldsLinks();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks4 = cdashigDomainFieldsLinks3;

        System.assert(cdashigDomainFieldsLinks1.equals(cdashigDomainFieldsLinks2));
        System.assert(cdashigDomainFieldsLinks2.equals(cdashigDomainFieldsLinks1));
        System.assert(cdashigDomainFieldsLinks1.equals(cdashigDomainFieldsLinks1));
        System.assert(cdashigDomainFieldsLinks3.equals(cdashigDomainFieldsLinks4));
        System.assert(cdashigDomainFieldsLinks4.equals(cdashigDomainFieldsLinks3));
        System.assert(cdashigDomainFieldsLinks3.equals(cdashigDomainFieldsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks1 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks2 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks3 = new OASCdashigDomainFieldsLinks();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks4 = new OASCdashigDomainFieldsLinks();

        System.assert(cdashigDomainFieldsLinks1.equals(cdashigDomainFieldsLinks2));
        System.assert(cdashigDomainFieldsLinks2.equals(cdashigDomainFieldsLinks1));
        System.assert(cdashigDomainFieldsLinks3.equals(cdashigDomainFieldsLinks4));
        System.assert(cdashigDomainFieldsLinks4.equals(cdashigDomainFieldsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks1 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks2 = new OASCdashigDomainFieldsLinks();

        System.assertEquals(false, cdashigDomainFieldsLinks1.equals('foo'));
        System.assertEquals(false, cdashigDomainFieldsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks1 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks2 = new OASCdashigDomainFieldsLinks();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks3;

        System.assertEquals(false, cdashigDomainFieldsLinks1.equals(cdashigDomainFieldsLinks3));
        System.assertEquals(false, cdashigDomainFieldsLinks2.equals(cdashigDomainFieldsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks1 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks2 = new OASCdashigDomainFieldsLinks();

        System.assertEquals(cdashigDomainFieldsLinks1.hashCode(), cdashigDomainFieldsLinks1.hashCode());
        System.assertEquals(cdashigDomainFieldsLinks2.hashCode(), cdashigDomainFieldsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks1 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks2 = OASCdashigDomainFieldsLinks.getExample();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks3 = new OASCdashigDomainFieldsLinks();
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks4 = new OASCdashigDomainFieldsLinks();

        System.assert(cdashigDomainFieldsLinks1.equals(cdashigDomainFieldsLinks2));
        System.assert(cdashigDomainFieldsLinks3.equals(cdashigDomainFieldsLinks4));
        System.assertEquals(cdashigDomainFieldsLinks1.hashCode(), cdashigDomainFieldsLinks2.hashCode());
        System.assertEquals(cdashigDomainFieldsLinks3.hashCode(), cdashigDomainFieldsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigDomainFieldsLinks cdashigDomainFieldsLinks = new OASCdashigDomainFieldsLinks();
        System.assertEquals(new List<OASCdashigDomainFieldRefElement>(), cdashigDomainFieldsLinks.fields);
        System.assertEquals(null, cdashigDomainFieldsLinks.self);
        System.assertEquals(null, cdashigDomainFieldsLinks.parentProduct);
        System.assertEquals(null, cdashigDomainFieldsLinks.parentClass);
    }
}
