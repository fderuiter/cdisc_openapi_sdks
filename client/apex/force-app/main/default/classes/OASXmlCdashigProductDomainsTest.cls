@isTest
private class OASXmlCdashigProductDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigProductDomains xmlCdashigProductDomains1 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains2 = xmlCdashigProductDomains1;
        OASXmlCdashigProductDomains xmlCdashigProductDomains3 = new OASXmlCdashigProductDomains();
        OASXmlCdashigProductDomains xmlCdashigProductDomains4 = xmlCdashigProductDomains3;

        System.assert(xmlCdashigProductDomains1.equals(xmlCdashigProductDomains2));
        System.assert(xmlCdashigProductDomains2.equals(xmlCdashigProductDomains1));
        System.assert(xmlCdashigProductDomains1.equals(xmlCdashigProductDomains1));
        System.assert(xmlCdashigProductDomains3.equals(xmlCdashigProductDomains4));
        System.assert(xmlCdashigProductDomains4.equals(xmlCdashigProductDomains3));
        System.assert(xmlCdashigProductDomains3.equals(xmlCdashigProductDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigProductDomains xmlCdashigProductDomains1 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains2 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains3 = new OASXmlCdashigProductDomains();
        OASXmlCdashigProductDomains xmlCdashigProductDomains4 = new OASXmlCdashigProductDomains();

        System.assert(xmlCdashigProductDomains1.equals(xmlCdashigProductDomains2));
        System.assert(xmlCdashigProductDomains2.equals(xmlCdashigProductDomains1));
        System.assert(xmlCdashigProductDomains3.equals(xmlCdashigProductDomains4));
        System.assert(xmlCdashigProductDomains4.equals(xmlCdashigProductDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigProductDomains xmlCdashigProductDomains1 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains2 = new OASXmlCdashigProductDomains();

        System.assertEquals(false, xmlCdashigProductDomains1.equals('foo'));
        System.assertEquals(false, xmlCdashigProductDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigProductDomains xmlCdashigProductDomains1 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains2 = new OASXmlCdashigProductDomains();
        OASXmlCdashigProductDomains xmlCdashigProductDomains3;

        System.assertEquals(false, xmlCdashigProductDomains1.equals(xmlCdashigProductDomains3));
        System.assertEquals(false, xmlCdashigProductDomains2.equals(xmlCdashigProductDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigProductDomains xmlCdashigProductDomains1 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains2 = new OASXmlCdashigProductDomains();

        System.assertEquals(xmlCdashigProductDomains1.hashCode(), xmlCdashigProductDomains1.hashCode());
        System.assertEquals(xmlCdashigProductDomains2.hashCode(), xmlCdashigProductDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigProductDomains xmlCdashigProductDomains1 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains2 = OASXmlCdashigProductDomains.getExample();
        OASXmlCdashigProductDomains xmlCdashigProductDomains3 = new OASXmlCdashigProductDomains();
        OASXmlCdashigProductDomains xmlCdashigProductDomains4 = new OASXmlCdashigProductDomains();

        System.assert(xmlCdashigProductDomains1.equals(xmlCdashigProductDomains2));
        System.assert(xmlCdashigProductDomains3.equals(xmlCdashigProductDomains4));
        System.assertEquals(xmlCdashigProductDomains1.hashCode(), xmlCdashigProductDomains2.hashCode());
        System.assertEquals(xmlCdashigProductDomains3.hashCode(), xmlCdashigProductDomains4.hashCode());
    }
}
