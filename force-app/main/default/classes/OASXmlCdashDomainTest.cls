@isTest
private class OASXmlCdashDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashDomain xmlCdashDomain1 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain2 = xmlCdashDomain1;
        OASXmlCdashDomain xmlCdashDomain3 = new OASXmlCdashDomain();
        OASXmlCdashDomain xmlCdashDomain4 = xmlCdashDomain3;

        System.assert(xmlCdashDomain1.equals(xmlCdashDomain2));
        System.assert(xmlCdashDomain2.equals(xmlCdashDomain1));
        System.assert(xmlCdashDomain1.equals(xmlCdashDomain1));
        System.assert(xmlCdashDomain3.equals(xmlCdashDomain4));
        System.assert(xmlCdashDomain4.equals(xmlCdashDomain3));
        System.assert(xmlCdashDomain3.equals(xmlCdashDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashDomain xmlCdashDomain1 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain2 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain3 = new OASXmlCdashDomain();
        OASXmlCdashDomain xmlCdashDomain4 = new OASXmlCdashDomain();

        System.assert(xmlCdashDomain1.equals(xmlCdashDomain2));
        System.assert(xmlCdashDomain2.equals(xmlCdashDomain1));
        System.assert(xmlCdashDomain3.equals(xmlCdashDomain4));
        System.assert(xmlCdashDomain4.equals(xmlCdashDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashDomain xmlCdashDomain1 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain2 = new OASXmlCdashDomain();

        System.assertEquals(false, xmlCdashDomain1.equals('foo'));
        System.assertEquals(false, xmlCdashDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashDomain xmlCdashDomain1 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain2 = new OASXmlCdashDomain();
        OASXmlCdashDomain xmlCdashDomain3;

        System.assertEquals(false, xmlCdashDomain1.equals(xmlCdashDomain3));
        System.assertEquals(false, xmlCdashDomain2.equals(xmlCdashDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashDomain xmlCdashDomain1 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain2 = new OASXmlCdashDomain();

        System.assertEquals(xmlCdashDomain1.hashCode(), xmlCdashDomain1.hashCode());
        System.assertEquals(xmlCdashDomain2.hashCode(), xmlCdashDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashDomain xmlCdashDomain1 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain2 = OASXmlCdashDomain.getExample();
        OASXmlCdashDomain xmlCdashDomain3 = new OASXmlCdashDomain();
        OASXmlCdashDomain xmlCdashDomain4 = new OASXmlCdashDomain();

        System.assert(xmlCdashDomain1.equals(xmlCdashDomain2));
        System.assert(xmlCdashDomain3.equals(xmlCdashDomain4));
        System.assertEquals(xmlCdashDomain1.hashCode(), xmlCdashDomain2.hashCode());
        System.assertEquals(xmlCdashDomain3.hashCode(), xmlCdashDomain4.hashCode());
    }
}
