@isTest
private class OASXmlSdtmDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmDatasets xmlSdtmDatasets1 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets2 = xmlSdtmDatasets1;
        OASXmlSdtmDatasets xmlSdtmDatasets3 = new OASXmlSdtmDatasets();
        OASXmlSdtmDatasets xmlSdtmDatasets4 = xmlSdtmDatasets3;

        System.assert(xmlSdtmDatasets1.equals(xmlSdtmDatasets2));
        System.assert(xmlSdtmDatasets2.equals(xmlSdtmDatasets1));
        System.assert(xmlSdtmDatasets1.equals(xmlSdtmDatasets1));
        System.assert(xmlSdtmDatasets3.equals(xmlSdtmDatasets4));
        System.assert(xmlSdtmDatasets4.equals(xmlSdtmDatasets3));
        System.assert(xmlSdtmDatasets3.equals(xmlSdtmDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmDatasets xmlSdtmDatasets1 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets2 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets3 = new OASXmlSdtmDatasets();
        OASXmlSdtmDatasets xmlSdtmDatasets4 = new OASXmlSdtmDatasets();

        System.assert(xmlSdtmDatasets1.equals(xmlSdtmDatasets2));
        System.assert(xmlSdtmDatasets2.equals(xmlSdtmDatasets1));
        System.assert(xmlSdtmDatasets3.equals(xmlSdtmDatasets4));
        System.assert(xmlSdtmDatasets4.equals(xmlSdtmDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmDatasets xmlSdtmDatasets1 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets2 = new OASXmlSdtmDatasets();

        System.assertEquals(false, xmlSdtmDatasets1.equals('foo'));
        System.assertEquals(false, xmlSdtmDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmDatasets xmlSdtmDatasets1 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets2 = new OASXmlSdtmDatasets();
        OASXmlSdtmDatasets xmlSdtmDatasets3;

        System.assertEquals(false, xmlSdtmDatasets1.equals(xmlSdtmDatasets3));
        System.assertEquals(false, xmlSdtmDatasets2.equals(xmlSdtmDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmDatasets xmlSdtmDatasets1 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets2 = new OASXmlSdtmDatasets();

        System.assertEquals(xmlSdtmDatasets1.hashCode(), xmlSdtmDatasets1.hashCode());
        System.assertEquals(xmlSdtmDatasets2.hashCode(), xmlSdtmDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmDatasets xmlSdtmDatasets1 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets2 = OASXmlSdtmDatasets.getExample();
        OASXmlSdtmDatasets xmlSdtmDatasets3 = new OASXmlSdtmDatasets();
        OASXmlSdtmDatasets xmlSdtmDatasets4 = new OASXmlSdtmDatasets();

        System.assert(xmlSdtmDatasets1.equals(xmlSdtmDatasets2));
        System.assert(xmlSdtmDatasets3.equals(xmlSdtmDatasets4));
        System.assertEquals(xmlSdtmDatasets1.hashCode(), xmlSdtmDatasets2.hashCode());
        System.assertEquals(xmlSdtmDatasets3.hashCode(), xmlSdtmDatasets4.hashCode());
    }
}
