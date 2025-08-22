@isTest
private class OASXmlSendigDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigDatasets xmlSendigDatasets1 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets2 = xmlSendigDatasets1;
        OASXmlSendigDatasets xmlSendigDatasets3 = new OASXmlSendigDatasets();
        OASXmlSendigDatasets xmlSendigDatasets4 = xmlSendigDatasets3;

        System.assert(xmlSendigDatasets1.equals(xmlSendigDatasets2));
        System.assert(xmlSendigDatasets2.equals(xmlSendigDatasets1));
        System.assert(xmlSendigDatasets1.equals(xmlSendigDatasets1));
        System.assert(xmlSendigDatasets3.equals(xmlSendigDatasets4));
        System.assert(xmlSendigDatasets4.equals(xmlSendigDatasets3));
        System.assert(xmlSendigDatasets3.equals(xmlSendigDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigDatasets xmlSendigDatasets1 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets2 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets3 = new OASXmlSendigDatasets();
        OASXmlSendigDatasets xmlSendigDatasets4 = new OASXmlSendigDatasets();

        System.assert(xmlSendigDatasets1.equals(xmlSendigDatasets2));
        System.assert(xmlSendigDatasets2.equals(xmlSendigDatasets1));
        System.assert(xmlSendigDatasets3.equals(xmlSendigDatasets4));
        System.assert(xmlSendigDatasets4.equals(xmlSendigDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigDatasets xmlSendigDatasets1 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets2 = new OASXmlSendigDatasets();

        System.assertEquals(false, xmlSendigDatasets1.equals('foo'));
        System.assertEquals(false, xmlSendigDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigDatasets xmlSendigDatasets1 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets2 = new OASXmlSendigDatasets();
        OASXmlSendigDatasets xmlSendigDatasets3;

        System.assertEquals(false, xmlSendigDatasets1.equals(xmlSendigDatasets3));
        System.assertEquals(false, xmlSendigDatasets2.equals(xmlSendigDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigDatasets xmlSendigDatasets1 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets2 = new OASXmlSendigDatasets();

        System.assertEquals(xmlSendigDatasets1.hashCode(), xmlSendigDatasets1.hashCode());
        System.assertEquals(xmlSendigDatasets2.hashCode(), xmlSendigDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigDatasets xmlSendigDatasets1 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets2 = OASXmlSendigDatasets.getExample();
        OASXmlSendigDatasets xmlSendigDatasets3 = new OASXmlSendigDatasets();
        OASXmlSendigDatasets xmlSendigDatasets4 = new OASXmlSendigDatasets();

        System.assert(xmlSendigDatasets1.equals(xmlSendigDatasets2));
        System.assert(xmlSendigDatasets3.equals(xmlSendigDatasets4));
        System.assertEquals(xmlSendigDatasets1.hashCode(), xmlSendigDatasets2.hashCode());
        System.assertEquals(xmlSendigDatasets3.hashCode(), xmlSendigDatasets4.hashCode());
    }
}
