@isTest
private class OASXmlCdashigDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigDomain xmlCdashigDomain1 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain2 = xmlCdashigDomain1;
        OASXmlCdashigDomain xmlCdashigDomain3 = new OASXmlCdashigDomain();
        OASXmlCdashigDomain xmlCdashigDomain4 = xmlCdashigDomain3;

        System.assert(xmlCdashigDomain1.equals(xmlCdashigDomain2));
        System.assert(xmlCdashigDomain2.equals(xmlCdashigDomain1));
        System.assert(xmlCdashigDomain1.equals(xmlCdashigDomain1));
        System.assert(xmlCdashigDomain3.equals(xmlCdashigDomain4));
        System.assert(xmlCdashigDomain4.equals(xmlCdashigDomain3));
        System.assert(xmlCdashigDomain3.equals(xmlCdashigDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigDomain xmlCdashigDomain1 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain2 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain3 = new OASXmlCdashigDomain();
        OASXmlCdashigDomain xmlCdashigDomain4 = new OASXmlCdashigDomain();

        System.assert(xmlCdashigDomain1.equals(xmlCdashigDomain2));
        System.assert(xmlCdashigDomain2.equals(xmlCdashigDomain1));
        System.assert(xmlCdashigDomain3.equals(xmlCdashigDomain4));
        System.assert(xmlCdashigDomain4.equals(xmlCdashigDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigDomain xmlCdashigDomain1 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain2 = new OASXmlCdashigDomain();

        System.assertEquals(false, xmlCdashigDomain1.equals('foo'));
        System.assertEquals(false, xmlCdashigDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigDomain xmlCdashigDomain1 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain2 = new OASXmlCdashigDomain();
        OASXmlCdashigDomain xmlCdashigDomain3;

        System.assertEquals(false, xmlCdashigDomain1.equals(xmlCdashigDomain3));
        System.assertEquals(false, xmlCdashigDomain2.equals(xmlCdashigDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigDomain xmlCdashigDomain1 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain2 = new OASXmlCdashigDomain();

        System.assertEquals(xmlCdashigDomain1.hashCode(), xmlCdashigDomain1.hashCode());
        System.assertEquals(xmlCdashigDomain2.hashCode(), xmlCdashigDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigDomain xmlCdashigDomain1 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain2 = OASXmlCdashigDomain.getExample();
        OASXmlCdashigDomain xmlCdashigDomain3 = new OASXmlCdashigDomain();
        OASXmlCdashigDomain xmlCdashigDomain4 = new OASXmlCdashigDomain();

        System.assert(xmlCdashigDomain1.equals(xmlCdashigDomain2));
        System.assert(xmlCdashigDomain3.equals(xmlCdashigDomain4));
        System.assertEquals(xmlCdashigDomain1.hashCode(), xmlCdashigDomain2.hashCode());
        System.assertEquals(xmlCdashigDomain3.hashCode(), xmlCdashigDomain4.hashCode());
    }
}
