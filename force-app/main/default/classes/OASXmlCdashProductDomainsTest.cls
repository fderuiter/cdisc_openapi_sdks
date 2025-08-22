@isTest
private class OASXmlCdashProductDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashProductDomains xmlCdashProductDomains1 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains2 = xmlCdashProductDomains1;
        OASXmlCdashProductDomains xmlCdashProductDomains3 = new OASXmlCdashProductDomains();
        OASXmlCdashProductDomains xmlCdashProductDomains4 = xmlCdashProductDomains3;

        System.assert(xmlCdashProductDomains1.equals(xmlCdashProductDomains2));
        System.assert(xmlCdashProductDomains2.equals(xmlCdashProductDomains1));
        System.assert(xmlCdashProductDomains1.equals(xmlCdashProductDomains1));
        System.assert(xmlCdashProductDomains3.equals(xmlCdashProductDomains4));
        System.assert(xmlCdashProductDomains4.equals(xmlCdashProductDomains3));
        System.assert(xmlCdashProductDomains3.equals(xmlCdashProductDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashProductDomains xmlCdashProductDomains1 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains2 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains3 = new OASXmlCdashProductDomains();
        OASXmlCdashProductDomains xmlCdashProductDomains4 = new OASXmlCdashProductDomains();

        System.assert(xmlCdashProductDomains1.equals(xmlCdashProductDomains2));
        System.assert(xmlCdashProductDomains2.equals(xmlCdashProductDomains1));
        System.assert(xmlCdashProductDomains3.equals(xmlCdashProductDomains4));
        System.assert(xmlCdashProductDomains4.equals(xmlCdashProductDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashProductDomains xmlCdashProductDomains1 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains2 = new OASXmlCdashProductDomains();

        System.assertEquals(false, xmlCdashProductDomains1.equals('foo'));
        System.assertEquals(false, xmlCdashProductDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashProductDomains xmlCdashProductDomains1 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains2 = new OASXmlCdashProductDomains();
        OASXmlCdashProductDomains xmlCdashProductDomains3;

        System.assertEquals(false, xmlCdashProductDomains1.equals(xmlCdashProductDomains3));
        System.assertEquals(false, xmlCdashProductDomains2.equals(xmlCdashProductDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashProductDomains xmlCdashProductDomains1 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains2 = new OASXmlCdashProductDomains();

        System.assertEquals(xmlCdashProductDomains1.hashCode(), xmlCdashProductDomains1.hashCode());
        System.assertEquals(xmlCdashProductDomains2.hashCode(), xmlCdashProductDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashProductDomains xmlCdashProductDomains1 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains2 = OASXmlCdashProductDomains.getExample();
        OASXmlCdashProductDomains xmlCdashProductDomains3 = new OASXmlCdashProductDomains();
        OASXmlCdashProductDomains xmlCdashProductDomains4 = new OASXmlCdashProductDomains();

        System.assert(xmlCdashProductDomains1.equals(xmlCdashProductDomains2));
        System.assert(xmlCdashProductDomains3.equals(xmlCdashProductDomains4));
        System.assertEquals(xmlCdashProductDomains1.hashCode(), xmlCdashProductDomains2.hashCode());
        System.assertEquals(xmlCdashProductDomains3.hashCode(), xmlCdashProductDomains4.hashCode());
    }
}
