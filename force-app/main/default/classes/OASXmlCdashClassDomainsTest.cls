@isTest
private class OASXmlCdashClassDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashClassDomains xmlCdashClassDomains1 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains2 = xmlCdashClassDomains1;
        OASXmlCdashClassDomains xmlCdashClassDomains3 = new OASXmlCdashClassDomains();
        OASXmlCdashClassDomains xmlCdashClassDomains4 = xmlCdashClassDomains3;

        System.assert(xmlCdashClassDomains1.equals(xmlCdashClassDomains2));
        System.assert(xmlCdashClassDomains2.equals(xmlCdashClassDomains1));
        System.assert(xmlCdashClassDomains1.equals(xmlCdashClassDomains1));
        System.assert(xmlCdashClassDomains3.equals(xmlCdashClassDomains4));
        System.assert(xmlCdashClassDomains4.equals(xmlCdashClassDomains3));
        System.assert(xmlCdashClassDomains3.equals(xmlCdashClassDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashClassDomains xmlCdashClassDomains1 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains2 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains3 = new OASXmlCdashClassDomains();
        OASXmlCdashClassDomains xmlCdashClassDomains4 = new OASXmlCdashClassDomains();

        System.assert(xmlCdashClassDomains1.equals(xmlCdashClassDomains2));
        System.assert(xmlCdashClassDomains2.equals(xmlCdashClassDomains1));
        System.assert(xmlCdashClassDomains3.equals(xmlCdashClassDomains4));
        System.assert(xmlCdashClassDomains4.equals(xmlCdashClassDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashClassDomains xmlCdashClassDomains1 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains2 = new OASXmlCdashClassDomains();

        System.assertEquals(false, xmlCdashClassDomains1.equals('foo'));
        System.assertEquals(false, xmlCdashClassDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashClassDomains xmlCdashClassDomains1 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains2 = new OASXmlCdashClassDomains();
        OASXmlCdashClassDomains xmlCdashClassDomains3;

        System.assertEquals(false, xmlCdashClassDomains1.equals(xmlCdashClassDomains3));
        System.assertEquals(false, xmlCdashClassDomains2.equals(xmlCdashClassDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashClassDomains xmlCdashClassDomains1 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains2 = new OASXmlCdashClassDomains();

        System.assertEquals(xmlCdashClassDomains1.hashCode(), xmlCdashClassDomains1.hashCode());
        System.assertEquals(xmlCdashClassDomains2.hashCode(), xmlCdashClassDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashClassDomains xmlCdashClassDomains1 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains2 = OASXmlCdashClassDomains.getExample();
        OASXmlCdashClassDomains xmlCdashClassDomains3 = new OASXmlCdashClassDomains();
        OASXmlCdashClassDomains xmlCdashClassDomains4 = new OASXmlCdashClassDomains();

        System.assert(xmlCdashClassDomains1.equals(xmlCdashClassDomains2));
        System.assert(xmlCdashClassDomains3.equals(xmlCdashClassDomains4));
        System.assertEquals(xmlCdashClassDomains1.hashCode(), xmlCdashClassDomains2.hashCode());
        System.assertEquals(xmlCdashClassDomains3.hashCode(), xmlCdashClassDomains4.hashCode());
    }
}
