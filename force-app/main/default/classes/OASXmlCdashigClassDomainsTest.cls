@isTest
private class OASXmlCdashigClassDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigClassDomains xmlCdashigClassDomains1 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains2 = xmlCdashigClassDomains1;
        OASXmlCdashigClassDomains xmlCdashigClassDomains3 = new OASXmlCdashigClassDomains();
        OASXmlCdashigClassDomains xmlCdashigClassDomains4 = xmlCdashigClassDomains3;

        System.assert(xmlCdashigClassDomains1.equals(xmlCdashigClassDomains2));
        System.assert(xmlCdashigClassDomains2.equals(xmlCdashigClassDomains1));
        System.assert(xmlCdashigClassDomains1.equals(xmlCdashigClassDomains1));
        System.assert(xmlCdashigClassDomains3.equals(xmlCdashigClassDomains4));
        System.assert(xmlCdashigClassDomains4.equals(xmlCdashigClassDomains3));
        System.assert(xmlCdashigClassDomains3.equals(xmlCdashigClassDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigClassDomains xmlCdashigClassDomains1 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains2 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains3 = new OASXmlCdashigClassDomains();
        OASXmlCdashigClassDomains xmlCdashigClassDomains4 = new OASXmlCdashigClassDomains();

        System.assert(xmlCdashigClassDomains1.equals(xmlCdashigClassDomains2));
        System.assert(xmlCdashigClassDomains2.equals(xmlCdashigClassDomains1));
        System.assert(xmlCdashigClassDomains3.equals(xmlCdashigClassDomains4));
        System.assert(xmlCdashigClassDomains4.equals(xmlCdashigClassDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigClassDomains xmlCdashigClassDomains1 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains2 = new OASXmlCdashigClassDomains();

        System.assertEquals(false, xmlCdashigClassDomains1.equals('foo'));
        System.assertEquals(false, xmlCdashigClassDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigClassDomains xmlCdashigClassDomains1 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains2 = new OASXmlCdashigClassDomains();
        OASXmlCdashigClassDomains xmlCdashigClassDomains3;

        System.assertEquals(false, xmlCdashigClassDomains1.equals(xmlCdashigClassDomains3));
        System.assertEquals(false, xmlCdashigClassDomains2.equals(xmlCdashigClassDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigClassDomains xmlCdashigClassDomains1 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains2 = new OASXmlCdashigClassDomains();

        System.assertEquals(xmlCdashigClassDomains1.hashCode(), xmlCdashigClassDomains1.hashCode());
        System.assertEquals(xmlCdashigClassDomains2.hashCode(), xmlCdashigClassDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigClassDomains xmlCdashigClassDomains1 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains2 = OASXmlCdashigClassDomains.getExample();
        OASXmlCdashigClassDomains xmlCdashigClassDomains3 = new OASXmlCdashigClassDomains();
        OASXmlCdashigClassDomains xmlCdashigClassDomains4 = new OASXmlCdashigClassDomains();

        System.assert(xmlCdashigClassDomains1.equals(xmlCdashigClassDomains2));
        System.assert(xmlCdashigClassDomains3.equals(xmlCdashigClassDomains4));
        System.assertEquals(xmlCdashigClassDomains1.hashCode(), xmlCdashigClassDomains2.hashCode());
        System.assertEquals(xmlCdashigClassDomains3.hashCode(), xmlCdashigClassDomains4.hashCode());
    }
}
