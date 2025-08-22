@isTest
private class OASXmlLastupdatedTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlLastupdated xmlLastupdated1 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated2 = xmlLastupdated1;
        OASXmlLastupdated xmlLastupdated3 = new OASXmlLastupdated();
        OASXmlLastupdated xmlLastupdated4 = xmlLastupdated3;

        System.assert(xmlLastupdated1.equals(xmlLastupdated2));
        System.assert(xmlLastupdated2.equals(xmlLastupdated1));
        System.assert(xmlLastupdated1.equals(xmlLastupdated1));
        System.assert(xmlLastupdated3.equals(xmlLastupdated4));
        System.assert(xmlLastupdated4.equals(xmlLastupdated3));
        System.assert(xmlLastupdated3.equals(xmlLastupdated3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlLastupdated xmlLastupdated1 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated2 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated3 = new OASXmlLastupdated();
        OASXmlLastupdated xmlLastupdated4 = new OASXmlLastupdated();

        System.assert(xmlLastupdated1.equals(xmlLastupdated2));
        System.assert(xmlLastupdated2.equals(xmlLastupdated1));
        System.assert(xmlLastupdated3.equals(xmlLastupdated4));
        System.assert(xmlLastupdated4.equals(xmlLastupdated3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlLastupdated xmlLastupdated1 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated2 = new OASXmlLastupdated();

        System.assertEquals(false, xmlLastupdated1.equals('foo'));
        System.assertEquals(false, xmlLastupdated2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlLastupdated xmlLastupdated1 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated2 = new OASXmlLastupdated();
        OASXmlLastupdated xmlLastupdated3;

        System.assertEquals(false, xmlLastupdated1.equals(xmlLastupdated3));
        System.assertEquals(false, xmlLastupdated2.equals(xmlLastupdated3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlLastupdated xmlLastupdated1 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated2 = new OASXmlLastupdated();

        System.assertEquals(xmlLastupdated1.hashCode(), xmlLastupdated1.hashCode());
        System.assertEquals(xmlLastupdated2.hashCode(), xmlLastupdated2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlLastupdated xmlLastupdated1 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated2 = OASXmlLastupdated.getExample();
        OASXmlLastupdated xmlLastupdated3 = new OASXmlLastupdated();
        OASXmlLastupdated xmlLastupdated4 = new OASXmlLastupdated();

        System.assert(xmlLastupdated1.equals(xmlLastupdated2));
        System.assert(xmlLastupdated3.equals(xmlLastupdated4));
        System.assertEquals(xmlLastupdated1.hashCode(), xmlLastupdated2.hashCode());
        System.assertEquals(xmlLastupdated3.hashCode(), xmlLastupdated4.hashCode());
    }
}
