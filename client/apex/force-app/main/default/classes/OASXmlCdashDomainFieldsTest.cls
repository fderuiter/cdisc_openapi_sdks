@isTest
private class OASXmlCdashDomainFieldsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashDomainFields xmlCdashDomainFields1 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields2 = xmlCdashDomainFields1;
        OASXmlCdashDomainFields xmlCdashDomainFields3 = new OASXmlCdashDomainFields();
        OASXmlCdashDomainFields xmlCdashDomainFields4 = xmlCdashDomainFields3;

        System.assert(xmlCdashDomainFields1.equals(xmlCdashDomainFields2));
        System.assert(xmlCdashDomainFields2.equals(xmlCdashDomainFields1));
        System.assert(xmlCdashDomainFields1.equals(xmlCdashDomainFields1));
        System.assert(xmlCdashDomainFields3.equals(xmlCdashDomainFields4));
        System.assert(xmlCdashDomainFields4.equals(xmlCdashDomainFields3));
        System.assert(xmlCdashDomainFields3.equals(xmlCdashDomainFields3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashDomainFields xmlCdashDomainFields1 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields2 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields3 = new OASXmlCdashDomainFields();
        OASXmlCdashDomainFields xmlCdashDomainFields4 = new OASXmlCdashDomainFields();

        System.assert(xmlCdashDomainFields1.equals(xmlCdashDomainFields2));
        System.assert(xmlCdashDomainFields2.equals(xmlCdashDomainFields1));
        System.assert(xmlCdashDomainFields3.equals(xmlCdashDomainFields4));
        System.assert(xmlCdashDomainFields4.equals(xmlCdashDomainFields3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashDomainFields xmlCdashDomainFields1 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields2 = new OASXmlCdashDomainFields();

        System.assertEquals(false, xmlCdashDomainFields1.equals('foo'));
        System.assertEquals(false, xmlCdashDomainFields2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashDomainFields xmlCdashDomainFields1 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields2 = new OASXmlCdashDomainFields();
        OASXmlCdashDomainFields xmlCdashDomainFields3;

        System.assertEquals(false, xmlCdashDomainFields1.equals(xmlCdashDomainFields3));
        System.assertEquals(false, xmlCdashDomainFields2.equals(xmlCdashDomainFields3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashDomainFields xmlCdashDomainFields1 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields2 = new OASXmlCdashDomainFields();

        System.assertEquals(xmlCdashDomainFields1.hashCode(), xmlCdashDomainFields1.hashCode());
        System.assertEquals(xmlCdashDomainFields2.hashCode(), xmlCdashDomainFields2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashDomainFields xmlCdashDomainFields1 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields2 = OASXmlCdashDomainFields.getExample();
        OASXmlCdashDomainFields xmlCdashDomainFields3 = new OASXmlCdashDomainFields();
        OASXmlCdashDomainFields xmlCdashDomainFields4 = new OASXmlCdashDomainFields();

        System.assert(xmlCdashDomainFields1.equals(xmlCdashDomainFields2));
        System.assert(xmlCdashDomainFields3.equals(xmlCdashDomainFields4));
        System.assertEquals(xmlCdashDomainFields1.hashCode(), xmlCdashDomainFields2.hashCode());
        System.assertEquals(xmlCdashDomainFields3.hashCode(), xmlCdashDomainFields4.hashCode());
    }
}
