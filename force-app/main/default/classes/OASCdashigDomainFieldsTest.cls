@isTest
private class OASCdashigDomainFieldsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainFields cdashigDomainFields1 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields2 = cdashigDomainFields1;
        OASCdashigDomainFields cdashigDomainFields3 = new OASCdashigDomainFields();
        OASCdashigDomainFields cdashigDomainFields4 = cdashigDomainFields3;

        System.assert(cdashigDomainFields1.equals(cdashigDomainFields2));
        System.assert(cdashigDomainFields2.equals(cdashigDomainFields1));
        System.assert(cdashigDomainFields1.equals(cdashigDomainFields1));
        System.assert(cdashigDomainFields3.equals(cdashigDomainFields4));
        System.assert(cdashigDomainFields4.equals(cdashigDomainFields3));
        System.assert(cdashigDomainFields3.equals(cdashigDomainFields3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainFields cdashigDomainFields1 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields2 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields3 = new OASCdashigDomainFields();
        OASCdashigDomainFields cdashigDomainFields4 = new OASCdashigDomainFields();

        System.assert(cdashigDomainFields1.equals(cdashigDomainFields2));
        System.assert(cdashigDomainFields2.equals(cdashigDomainFields1));
        System.assert(cdashigDomainFields3.equals(cdashigDomainFields4));
        System.assert(cdashigDomainFields4.equals(cdashigDomainFields3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainFields cdashigDomainFields1 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields2 = new OASCdashigDomainFields();

        System.assertEquals(false, cdashigDomainFields1.equals('foo'));
        System.assertEquals(false, cdashigDomainFields2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainFields cdashigDomainFields1 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields2 = new OASCdashigDomainFields();
        OASCdashigDomainFields cdashigDomainFields3;

        System.assertEquals(false, cdashigDomainFields1.equals(cdashigDomainFields3));
        System.assertEquals(false, cdashigDomainFields2.equals(cdashigDomainFields3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainFields cdashigDomainFields1 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields2 = new OASCdashigDomainFields();

        System.assertEquals(cdashigDomainFields1.hashCode(), cdashigDomainFields1.hashCode());
        System.assertEquals(cdashigDomainFields2.hashCode(), cdashigDomainFields2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainFields cdashigDomainFields1 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields2 = OASCdashigDomainFields.getExample();
        OASCdashigDomainFields cdashigDomainFields3 = new OASCdashigDomainFields();
        OASCdashigDomainFields cdashigDomainFields4 = new OASCdashigDomainFields();

        System.assert(cdashigDomainFields1.equals(cdashigDomainFields2));
        System.assert(cdashigDomainFields3.equals(cdashigDomainFields4));
        System.assertEquals(cdashigDomainFields1.hashCode(), cdashigDomainFields2.hashCode());
        System.assertEquals(cdashigDomainFields3.hashCode(), cdashigDomainFields4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigDomainFields cdashigDomainFields = new OASCdashigDomainFields();
        Map<String, String> x-property-mappings = cdashigDomainFields.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
