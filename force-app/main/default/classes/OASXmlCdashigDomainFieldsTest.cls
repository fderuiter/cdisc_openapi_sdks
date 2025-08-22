@isTest
private class OASXmlCdashigDomainFieldsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigDomainFields xmlCdashigDomainFields1 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields2 = xmlCdashigDomainFields1;
        OASXmlCdashigDomainFields xmlCdashigDomainFields3 = new OASXmlCdashigDomainFields();
        OASXmlCdashigDomainFields xmlCdashigDomainFields4 = xmlCdashigDomainFields3;

        System.assert(xmlCdashigDomainFields1.equals(xmlCdashigDomainFields2));
        System.assert(xmlCdashigDomainFields2.equals(xmlCdashigDomainFields1));
        System.assert(xmlCdashigDomainFields1.equals(xmlCdashigDomainFields1));
        System.assert(xmlCdashigDomainFields3.equals(xmlCdashigDomainFields4));
        System.assert(xmlCdashigDomainFields4.equals(xmlCdashigDomainFields3));
        System.assert(xmlCdashigDomainFields3.equals(xmlCdashigDomainFields3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigDomainFields xmlCdashigDomainFields1 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields2 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields3 = new OASXmlCdashigDomainFields();
        OASXmlCdashigDomainFields xmlCdashigDomainFields4 = new OASXmlCdashigDomainFields();

        System.assert(xmlCdashigDomainFields1.equals(xmlCdashigDomainFields2));
        System.assert(xmlCdashigDomainFields2.equals(xmlCdashigDomainFields1));
        System.assert(xmlCdashigDomainFields3.equals(xmlCdashigDomainFields4));
        System.assert(xmlCdashigDomainFields4.equals(xmlCdashigDomainFields3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigDomainFields xmlCdashigDomainFields1 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields2 = new OASXmlCdashigDomainFields();

        System.assertEquals(false, xmlCdashigDomainFields1.equals('foo'));
        System.assertEquals(false, xmlCdashigDomainFields2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigDomainFields xmlCdashigDomainFields1 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields2 = new OASXmlCdashigDomainFields();
        OASXmlCdashigDomainFields xmlCdashigDomainFields3;

        System.assertEquals(false, xmlCdashigDomainFields1.equals(xmlCdashigDomainFields3));
        System.assertEquals(false, xmlCdashigDomainFields2.equals(xmlCdashigDomainFields3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigDomainFields xmlCdashigDomainFields1 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields2 = new OASXmlCdashigDomainFields();

        System.assertEquals(xmlCdashigDomainFields1.hashCode(), xmlCdashigDomainFields1.hashCode());
        System.assertEquals(xmlCdashigDomainFields2.hashCode(), xmlCdashigDomainFields2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigDomainFields xmlCdashigDomainFields1 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields2 = OASXmlCdashigDomainFields.getExample();
        OASXmlCdashigDomainFields xmlCdashigDomainFields3 = new OASXmlCdashigDomainFields();
        OASXmlCdashigDomainFields xmlCdashigDomainFields4 = new OASXmlCdashigDomainFields();

        System.assert(xmlCdashigDomainFields1.equals(xmlCdashigDomainFields2));
        System.assert(xmlCdashigDomainFields3.equals(xmlCdashigDomainFields4));
        System.assertEquals(xmlCdashigDomainFields1.hashCode(), xmlCdashigDomainFields2.hashCode());
        System.assertEquals(xmlCdashigDomainFields3.hashCode(), xmlCdashigDomainFields4.hashCode());
    }
}
