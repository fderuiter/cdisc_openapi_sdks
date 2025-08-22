@isTest
private class OASXmlSdtmClassVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmClassVariables xmlSdtmClassVariables1 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables2 = xmlSdtmClassVariables1;
        OASXmlSdtmClassVariables xmlSdtmClassVariables3 = new OASXmlSdtmClassVariables();
        OASXmlSdtmClassVariables xmlSdtmClassVariables4 = xmlSdtmClassVariables3;

        System.assert(xmlSdtmClassVariables1.equals(xmlSdtmClassVariables2));
        System.assert(xmlSdtmClassVariables2.equals(xmlSdtmClassVariables1));
        System.assert(xmlSdtmClassVariables1.equals(xmlSdtmClassVariables1));
        System.assert(xmlSdtmClassVariables3.equals(xmlSdtmClassVariables4));
        System.assert(xmlSdtmClassVariables4.equals(xmlSdtmClassVariables3));
        System.assert(xmlSdtmClassVariables3.equals(xmlSdtmClassVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmClassVariables xmlSdtmClassVariables1 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables2 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables3 = new OASXmlSdtmClassVariables();
        OASXmlSdtmClassVariables xmlSdtmClassVariables4 = new OASXmlSdtmClassVariables();

        System.assert(xmlSdtmClassVariables1.equals(xmlSdtmClassVariables2));
        System.assert(xmlSdtmClassVariables2.equals(xmlSdtmClassVariables1));
        System.assert(xmlSdtmClassVariables3.equals(xmlSdtmClassVariables4));
        System.assert(xmlSdtmClassVariables4.equals(xmlSdtmClassVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmClassVariables xmlSdtmClassVariables1 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables2 = new OASXmlSdtmClassVariables();

        System.assertEquals(false, xmlSdtmClassVariables1.equals('foo'));
        System.assertEquals(false, xmlSdtmClassVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmClassVariables xmlSdtmClassVariables1 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables2 = new OASXmlSdtmClassVariables();
        OASXmlSdtmClassVariables xmlSdtmClassVariables3;

        System.assertEquals(false, xmlSdtmClassVariables1.equals(xmlSdtmClassVariables3));
        System.assertEquals(false, xmlSdtmClassVariables2.equals(xmlSdtmClassVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmClassVariables xmlSdtmClassVariables1 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables2 = new OASXmlSdtmClassVariables();

        System.assertEquals(xmlSdtmClassVariables1.hashCode(), xmlSdtmClassVariables1.hashCode());
        System.assertEquals(xmlSdtmClassVariables2.hashCode(), xmlSdtmClassVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmClassVariables xmlSdtmClassVariables1 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables2 = OASXmlSdtmClassVariables.getExample();
        OASXmlSdtmClassVariables xmlSdtmClassVariables3 = new OASXmlSdtmClassVariables();
        OASXmlSdtmClassVariables xmlSdtmClassVariables4 = new OASXmlSdtmClassVariables();

        System.assert(xmlSdtmClassVariables1.equals(xmlSdtmClassVariables2));
        System.assert(xmlSdtmClassVariables3.equals(xmlSdtmClassVariables4));
        System.assertEquals(xmlSdtmClassVariables1.hashCode(), xmlSdtmClassVariables2.hashCode());
        System.assertEquals(xmlSdtmClassVariables3.hashCode(), xmlSdtmClassVariables4.hashCode());
    }
}
