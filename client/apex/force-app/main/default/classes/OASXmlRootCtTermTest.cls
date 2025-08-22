@isTest
private class OASXmlRootCtTermTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootCtTerm xmlRootCtTerm1 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm2 = xmlRootCtTerm1;
        OASXmlRootCtTerm xmlRootCtTerm3 = new OASXmlRootCtTerm();
        OASXmlRootCtTerm xmlRootCtTerm4 = xmlRootCtTerm3;

        System.assert(xmlRootCtTerm1.equals(xmlRootCtTerm2));
        System.assert(xmlRootCtTerm2.equals(xmlRootCtTerm1));
        System.assert(xmlRootCtTerm1.equals(xmlRootCtTerm1));
        System.assert(xmlRootCtTerm3.equals(xmlRootCtTerm4));
        System.assert(xmlRootCtTerm4.equals(xmlRootCtTerm3));
        System.assert(xmlRootCtTerm3.equals(xmlRootCtTerm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootCtTerm xmlRootCtTerm1 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm2 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm3 = new OASXmlRootCtTerm();
        OASXmlRootCtTerm xmlRootCtTerm4 = new OASXmlRootCtTerm();

        System.assert(xmlRootCtTerm1.equals(xmlRootCtTerm2));
        System.assert(xmlRootCtTerm2.equals(xmlRootCtTerm1));
        System.assert(xmlRootCtTerm3.equals(xmlRootCtTerm4));
        System.assert(xmlRootCtTerm4.equals(xmlRootCtTerm3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootCtTerm xmlRootCtTerm1 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm2 = new OASXmlRootCtTerm();

        System.assertEquals(false, xmlRootCtTerm1.equals('foo'));
        System.assertEquals(false, xmlRootCtTerm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootCtTerm xmlRootCtTerm1 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm2 = new OASXmlRootCtTerm();
        OASXmlRootCtTerm xmlRootCtTerm3;

        System.assertEquals(false, xmlRootCtTerm1.equals(xmlRootCtTerm3));
        System.assertEquals(false, xmlRootCtTerm2.equals(xmlRootCtTerm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootCtTerm xmlRootCtTerm1 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm2 = new OASXmlRootCtTerm();

        System.assertEquals(xmlRootCtTerm1.hashCode(), xmlRootCtTerm1.hashCode());
        System.assertEquals(xmlRootCtTerm2.hashCode(), xmlRootCtTerm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootCtTerm xmlRootCtTerm1 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm2 = OASXmlRootCtTerm.getExample();
        OASXmlRootCtTerm xmlRootCtTerm3 = new OASXmlRootCtTerm();
        OASXmlRootCtTerm xmlRootCtTerm4 = new OASXmlRootCtTerm();

        System.assert(xmlRootCtTerm1.equals(xmlRootCtTerm2));
        System.assert(xmlRootCtTerm3.equals(xmlRootCtTerm4));
        System.assertEquals(xmlRootCtTerm1.hashCode(), xmlRootCtTerm2.hashCode());
        System.assertEquals(xmlRootCtTerm3.hashCode(), xmlRootCtTerm4.hashCode());
    }
}
