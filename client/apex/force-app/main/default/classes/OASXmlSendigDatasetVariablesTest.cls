@isTest
private class OASXmlSendigDatasetVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables1 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables2 = xmlSendigDatasetVariables1;
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables3 = new OASXmlSendigDatasetVariables();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables4 = xmlSendigDatasetVariables3;

        System.assert(xmlSendigDatasetVariables1.equals(xmlSendigDatasetVariables2));
        System.assert(xmlSendigDatasetVariables2.equals(xmlSendigDatasetVariables1));
        System.assert(xmlSendigDatasetVariables1.equals(xmlSendigDatasetVariables1));
        System.assert(xmlSendigDatasetVariables3.equals(xmlSendigDatasetVariables4));
        System.assert(xmlSendigDatasetVariables4.equals(xmlSendigDatasetVariables3));
        System.assert(xmlSendigDatasetVariables3.equals(xmlSendigDatasetVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables1 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables2 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables3 = new OASXmlSendigDatasetVariables();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables4 = new OASXmlSendigDatasetVariables();

        System.assert(xmlSendigDatasetVariables1.equals(xmlSendigDatasetVariables2));
        System.assert(xmlSendigDatasetVariables2.equals(xmlSendigDatasetVariables1));
        System.assert(xmlSendigDatasetVariables3.equals(xmlSendigDatasetVariables4));
        System.assert(xmlSendigDatasetVariables4.equals(xmlSendigDatasetVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables1 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables2 = new OASXmlSendigDatasetVariables();

        System.assertEquals(false, xmlSendigDatasetVariables1.equals('foo'));
        System.assertEquals(false, xmlSendigDatasetVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables1 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables2 = new OASXmlSendigDatasetVariables();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables3;

        System.assertEquals(false, xmlSendigDatasetVariables1.equals(xmlSendigDatasetVariables3));
        System.assertEquals(false, xmlSendigDatasetVariables2.equals(xmlSendigDatasetVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables1 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables2 = new OASXmlSendigDatasetVariables();

        System.assertEquals(xmlSendigDatasetVariables1.hashCode(), xmlSendigDatasetVariables1.hashCode());
        System.assertEquals(xmlSendigDatasetVariables2.hashCode(), xmlSendigDatasetVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables1 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables2 = OASXmlSendigDatasetVariables.getExample();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables3 = new OASXmlSendigDatasetVariables();
        OASXmlSendigDatasetVariables xmlSendigDatasetVariables4 = new OASXmlSendigDatasetVariables();

        System.assert(xmlSendigDatasetVariables1.equals(xmlSendigDatasetVariables2));
        System.assert(xmlSendigDatasetVariables3.equals(xmlSendigDatasetVariables4));
        System.assertEquals(xmlSendigDatasetVariables1.hashCode(), xmlSendigDatasetVariables2.hashCode());
        System.assertEquals(xmlSendigDatasetVariables3.hashCode(), xmlSendigDatasetVariables4.hashCode());
    }
}
