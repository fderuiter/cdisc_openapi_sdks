@isTest
private class OASXmlSendigClassDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigClassDatasets xmlSendigClassDatasets1 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets2 = xmlSendigClassDatasets1;
        OASXmlSendigClassDatasets xmlSendigClassDatasets3 = new OASXmlSendigClassDatasets();
        OASXmlSendigClassDatasets xmlSendigClassDatasets4 = xmlSendigClassDatasets3;

        System.assert(xmlSendigClassDatasets1.equals(xmlSendigClassDatasets2));
        System.assert(xmlSendigClassDatasets2.equals(xmlSendigClassDatasets1));
        System.assert(xmlSendigClassDatasets1.equals(xmlSendigClassDatasets1));
        System.assert(xmlSendigClassDatasets3.equals(xmlSendigClassDatasets4));
        System.assert(xmlSendigClassDatasets4.equals(xmlSendigClassDatasets3));
        System.assert(xmlSendigClassDatasets3.equals(xmlSendigClassDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigClassDatasets xmlSendigClassDatasets1 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets2 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets3 = new OASXmlSendigClassDatasets();
        OASXmlSendigClassDatasets xmlSendigClassDatasets4 = new OASXmlSendigClassDatasets();

        System.assert(xmlSendigClassDatasets1.equals(xmlSendigClassDatasets2));
        System.assert(xmlSendigClassDatasets2.equals(xmlSendigClassDatasets1));
        System.assert(xmlSendigClassDatasets3.equals(xmlSendigClassDatasets4));
        System.assert(xmlSendigClassDatasets4.equals(xmlSendigClassDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigClassDatasets xmlSendigClassDatasets1 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets2 = new OASXmlSendigClassDatasets();

        System.assertEquals(false, xmlSendigClassDatasets1.equals('foo'));
        System.assertEquals(false, xmlSendigClassDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigClassDatasets xmlSendigClassDatasets1 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets2 = new OASXmlSendigClassDatasets();
        OASXmlSendigClassDatasets xmlSendigClassDatasets3;

        System.assertEquals(false, xmlSendigClassDatasets1.equals(xmlSendigClassDatasets3));
        System.assertEquals(false, xmlSendigClassDatasets2.equals(xmlSendigClassDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigClassDatasets xmlSendigClassDatasets1 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets2 = new OASXmlSendigClassDatasets();

        System.assertEquals(xmlSendigClassDatasets1.hashCode(), xmlSendigClassDatasets1.hashCode());
        System.assertEquals(xmlSendigClassDatasets2.hashCode(), xmlSendigClassDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigClassDatasets xmlSendigClassDatasets1 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets2 = OASXmlSendigClassDatasets.getExample();
        OASXmlSendigClassDatasets xmlSendigClassDatasets3 = new OASXmlSendigClassDatasets();
        OASXmlSendigClassDatasets xmlSendigClassDatasets4 = new OASXmlSendigClassDatasets();

        System.assert(xmlSendigClassDatasets1.equals(xmlSendigClassDatasets2));
        System.assert(xmlSendigClassDatasets3.equals(xmlSendigClassDatasets4));
        System.assertEquals(xmlSendigClassDatasets1.hashCode(), xmlSendigClassDatasets2.hashCode());
        System.assertEquals(xmlSendigClassDatasets3.hashCode(), xmlSendigClassDatasets4.hashCode());
    }
}
