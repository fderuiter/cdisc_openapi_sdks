@isTest
private class OASXmlSdtmigDatasetVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables1 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables2 = xmlSdtmigDatasetVariables1;
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables3 = new OASXmlSdtmigDatasetVariables();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables4 = xmlSdtmigDatasetVariables3;

        System.assert(xmlSdtmigDatasetVariables1.equals(xmlSdtmigDatasetVariables2));
        System.assert(xmlSdtmigDatasetVariables2.equals(xmlSdtmigDatasetVariables1));
        System.assert(xmlSdtmigDatasetVariables1.equals(xmlSdtmigDatasetVariables1));
        System.assert(xmlSdtmigDatasetVariables3.equals(xmlSdtmigDatasetVariables4));
        System.assert(xmlSdtmigDatasetVariables4.equals(xmlSdtmigDatasetVariables3));
        System.assert(xmlSdtmigDatasetVariables3.equals(xmlSdtmigDatasetVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables1 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables2 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables3 = new OASXmlSdtmigDatasetVariables();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables4 = new OASXmlSdtmigDatasetVariables();

        System.assert(xmlSdtmigDatasetVariables1.equals(xmlSdtmigDatasetVariables2));
        System.assert(xmlSdtmigDatasetVariables2.equals(xmlSdtmigDatasetVariables1));
        System.assert(xmlSdtmigDatasetVariables3.equals(xmlSdtmigDatasetVariables4));
        System.assert(xmlSdtmigDatasetVariables4.equals(xmlSdtmigDatasetVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables1 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables2 = new OASXmlSdtmigDatasetVariables();

        System.assertEquals(false, xmlSdtmigDatasetVariables1.equals('foo'));
        System.assertEquals(false, xmlSdtmigDatasetVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables1 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables2 = new OASXmlSdtmigDatasetVariables();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables3;

        System.assertEquals(false, xmlSdtmigDatasetVariables1.equals(xmlSdtmigDatasetVariables3));
        System.assertEquals(false, xmlSdtmigDatasetVariables2.equals(xmlSdtmigDatasetVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables1 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables2 = new OASXmlSdtmigDatasetVariables();

        System.assertEquals(xmlSdtmigDatasetVariables1.hashCode(), xmlSdtmigDatasetVariables1.hashCode());
        System.assertEquals(xmlSdtmigDatasetVariables2.hashCode(), xmlSdtmigDatasetVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables1 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables2 = OASXmlSdtmigDatasetVariables.getExample();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables3 = new OASXmlSdtmigDatasetVariables();
        OASXmlSdtmigDatasetVariables xmlSdtmigDatasetVariables4 = new OASXmlSdtmigDatasetVariables();

        System.assert(xmlSdtmigDatasetVariables1.equals(xmlSdtmigDatasetVariables2));
        System.assert(xmlSdtmigDatasetVariables3.equals(xmlSdtmigDatasetVariables4));
        System.assertEquals(xmlSdtmigDatasetVariables1.hashCode(), xmlSdtmigDatasetVariables2.hashCode());
        System.assertEquals(xmlSdtmigDatasetVariables3.hashCode(), xmlSdtmigDatasetVariables4.hashCode());
    }
}
