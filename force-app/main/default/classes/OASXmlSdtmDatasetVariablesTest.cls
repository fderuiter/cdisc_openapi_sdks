@isTest
private class OASXmlSdtmDatasetVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables1 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables2 = xmlSdtmDatasetVariables1;
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables3 = new OASXmlSdtmDatasetVariables();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables4 = xmlSdtmDatasetVariables3;

        System.assert(xmlSdtmDatasetVariables1.equals(xmlSdtmDatasetVariables2));
        System.assert(xmlSdtmDatasetVariables2.equals(xmlSdtmDatasetVariables1));
        System.assert(xmlSdtmDatasetVariables1.equals(xmlSdtmDatasetVariables1));
        System.assert(xmlSdtmDatasetVariables3.equals(xmlSdtmDatasetVariables4));
        System.assert(xmlSdtmDatasetVariables4.equals(xmlSdtmDatasetVariables3));
        System.assert(xmlSdtmDatasetVariables3.equals(xmlSdtmDatasetVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables1 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables2 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables3 = new OASXmlSdtmDatasetVariables();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables4 = new OASXmlSdtmDatasetVariables();

        System.assert(xmlSdtmDatasetVariables1.equals(xmlSdtmDatasetVariables2));
        System.assert(xmlSdtmDatasetVariables2.equals(xmlSdtmDatasetVariables1));
        System.assert(xmlSdtmDatasetVariables3.equals(xmlSdtmDatasetVariables4));
        System.assert(xmlSdtmDatasetVariables4.equals(xmlSdtmDatasetVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables1 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables2 = new OASXmlSdtmDatasetVariables();

        System.assertEquals(false, xmlSdtmDatasetVariables1.equals('foo'));
        System.assertEquals(false, xmlSdtmDatasetVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables1 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables2 = new OASXmlSdtmDatasetVariables();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables3;

        System.assertEquals(false, xmlSdtmDatasetVariables1.equals(xmlSdtmDatasetVariables3));
        System.assertEquals(false, xmlSdtmDatasetVariables2.equals(xmlSdtmDatasetVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables1 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables2 = new OASXmlSdtmDatasetVariables();

        System.assertEquals(xmlSdtmDatasetVariables1.hashCode(), xmlSdtmDatasetVariables1.hashCode());
        System.assertEquals(xmlSdtmDatasetVariables2.hashCode(), xmlSdtmDatasetVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables1 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables2 = OASXmlSdtmDatasetVariables.getExample();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables3 = new OASXmlSdtmDatasetVariables();
        OASXmlSdtmDatasetVariables xmlSdtmDatasetVariables4 = new OASXmlSdtmDatasetVariables();

        System.assert(xmlSdtmDatasetVariables1.equals(xmlSdtmDatasetVariables2));
        System.assert(xmlSdtmDatasetVariables3.equals(xmlSdtmDatasetVariables4));
        System.assertEquals(xmlSdtmDatasetVariables1.hashCode(), xmlSdtmDatasetVariables2.hashCode());
        System.assertEquals(xmlSdtmDatasetVariables3.hashCode(), xmlSdtmDatasetVariables4.hashCode());
    }
}
