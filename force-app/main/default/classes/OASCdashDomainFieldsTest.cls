@isTest
private class OASCdashDomainFieldsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainFields cdashDomainFields1 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields2 = cdashDomainFields1;
        OASCdashDomainFields cdashDomainFields3 = new OASCdashDomainFields();
        OASCdashDomainFields cdashDomainFields4 = cdashDomainFields3;

        System.assert(cdashDomainFields1.equals(cdashDomainFields2));
        System.assert(cdashDomainFields2.equals(cdashDomainFields1));
        System.assert(cdashDomainFields1.equals(cdashDomainFields1));
        System.assert(cdashDomainFields3.equals(cdashDomainFields4));
        System.assert(cdashDomainFields4.equals(cdashDomainFields3));
        System.assert(cdashDomainFields3.equals(cdashDomainFields3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainFields cdashDomainFields1 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields2 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields3 = new OASCdashDomainFields();
        OASCdashDomainFields cdashDomainFields4 = new OASCdashDomainFields();

        System.assert(cdashDomainFields1.equals(cdashDomainFields2));
        System.assert(cdashDomainFields2.equals(cdashDomainFields1));
        System.assert(cdashDomainFields3.equals(cdashDomainFields4));
        System.assert(cdashDomainFields4.equals(cdashDomainFields3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainFields cdashDomainFields1 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields2 = new OASCdashDomainFields();

        System.assertEquals(false, cdashDomainFields1.equals('foo'));
        System.assertEquals(false, cdashDomainFields2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainFields cdashDomainFields1 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields2 = new OASCdashDomainFields();
        OASCdashDomainFields cdashDomainFields3;

        System.assertEquals(false, cdashDomainFields1.equals(cdashDomainFields3));
        System.assertEquals(false, cdashDomainFields2.equals(cdashDomainFields3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainFields cdashDomainFields1 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields2 = new OASCdashDomainFields();

        System.assertEquals(cdashDomainFields1.hashCode(), cdashDomainFields1.hashCode());
        System.assertEquals(cdashDomainFields2.hashCode(), cdashDomainFields2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainFields cdashDomainFields1 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields2 = OASCdashDomainFields.getExample();
        OASCdashDomainFields cdashDomainFields3 = new OASCdashDomainFields();
        OASCdashDomainFields cdashDomainFields4 = new OASCdashDomainFields();

        System.assert(cdashDomainFields1.equals(cdashDomainFields2));
        System.assert(cdashDomainFields3.equals(cdashDomainFields4));
        System.assertEquals(cdashDomainFields1.hashCode(), cdashDomainFields2.hashCode());
        System.assertEquals(cdashDomainFields3.hashCode(), cdashDomainFields4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashDomainFields cdashDomainFields = new OASCdashDomainFields();
        Map<String, String> x-property-mappings = cdashDomainFields.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
