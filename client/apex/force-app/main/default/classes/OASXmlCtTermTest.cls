@isTest
private class OASXmlCtTermTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCtTerm xmlCtTerm1 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm2 = xmlCtTerm1;
        OASXmlCtTerm xmlCtTerm3 = new OASXmlCtTerm();
        OASXmlCtTerm xmlCtTerm4 = xmlCtTerm3;

        System.assert(xmlCtTerm1.equals(xmlCtTerm2));
        System.assert(xmlCtTerm2.equals(xmlCtTerm1));
        System.assert(xmlCtTerm1.equals(xmlCtTerm1));
        System.assert(xmlCtTerm3.equals(xmlCtTerm4));
        System.assert(xmlCtTerm4.equals(xmlCtTerm3));
        System.assert(xmlCtTerm3.equals(xmlCtTerm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCtTerm xmlCtTerm1 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm2 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm3 = new OASXmlCtTerm();
        OASXmlCtTerm xmlCtTerm4 = new OASXmlCtTerm();

        System.assert(xmlCtTerm1.equals(xmlCtTerm2));
        System.assert(xmlCtTerm2.equals(xmlCtTerm1));
        System.assert(xmlCtTerm3.equals(xmlCtTerm4));
        System.assert(xmlCtTerm4.equals(xmlCtTerm3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCtTerm xmlCtTerm1 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm2 = new OASXmlCtTerm();

        System.assertEquals(false, xmlCtTerm1.equals('foo'));
        System.assertEquals(false, xmlCtTerm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCtTerm xmlCtTerm1 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm2 = new OASXmlCtTerm();
        OASXmlCtTerm xmlCtTerm3;

        System.assertEquals(false, xmlCtTerm1.equals(xmlCtTerm3));
        System.assertEquals(false, xmlCtTerm2.equals(xmlCtTerm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCtTerm xmlCtTerm1 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm2 = new OASXmlCtTerm();

        System.assertEquals(xmlCtTerm1.hashCode(), xmlCtTerm1.hashCode());
        System.assertEquals(xmlCtTerm2.hashCode(), xmlCtTerm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCtTerm xmlCtTerm1 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm2 = OASXmlCtTerm.getExample();
        OASXmlCtTerm xmlCtTerm3 = new OASXmlCtTerm();
        OASXmlCtTerm xmlCtTerm4 = new OASXmlCtTerm();

        System.assert(xmlCtTerm1.equals(xmlCtTerm2));
        System.assert(xmlCtTerm3.equals(xmlCtTerm4));
        System.assertEquals(xmlCtTerm1.hashCode(), xmlCtTerm2.hashCode());
        System.assertEquals(xmlCtTerm3.hashCode(), xmlCtTerm4.hashCode());
    }
}
