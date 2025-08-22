@isTest
private class OASXmlSdtmigDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigDatasets xmlSdtmigDatasets1 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets2 = xmlSdtmigDatasets1;
        OASXmlSdtmigDatasets xmlSdtmigDatasets3 = new OASXmlSdtmigDatasets();
        OASXmlSdtmigDatasets xmlSdtmigDatasets4 = xmlSdtmigDatasets3;

        System.assert(xmlSdtmigDatasets1.equals(xmlSdtmigDatasets2));
        System.assert(xmlSdtmigDatasets2.equals(xmlSdtmigDatasets1));
        System.assert(xmlSdtmigDatasets1.equals(xmlSdtmigDatasets1));
        System.assert(xmlSdtmigDatasets3.equals(xmlSdtmigDatasets4));
        System.assert(xmlSdtmigDatasets4.equals(xmlSdtmigDatasets3));
        System.assert(xmlSdtmigDatasets3.equals(xmlSdtmigDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigDatasets xmlSdtmigDatasets1 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets2 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets3 = new OASXmlSdtmigDatasets();
        OASXmlSdtmigDatasets xmlSdtmigDatasets4 = new OASXmlSdtmigDatasets();

        System.assert(xmlSdtmigDatasets1.equals(xmlSdtmigDatasets2));
        System.assert(xmlSdtmigDatasets2.equals(xmlSdtmigDatasets1));
        System.assert(xmlSdtmigDatasets3.equals(xmlSdtmigDatasets4));
        System.assert(xmlSdtmigDatasets4.equals(xmlSdtmigDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigDatasets xmlSdtmigDatasets1 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets2 = new OASXmlSdtmigDatasets();

        System.assertEquals(false, xmlSdtmigDatasets1.equals('foo'));
        System.assertEquals(false, xmlSdtmigDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigDatasets xmlSdtmigDatasets1 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets2 = new OASXmlSdtmigDatasets();
        OASXmlSdtmigDatasets xmlSdtmigDatasets3;

        System.assertEquals(false, xmlSdtmigDatasets1.equals(xmlSdtmigDatasets3));
        System.assertEquals(false, xmlSdtmigDatasets2.equals(xmlSdtmigDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigDatasets xmlSdtmigDatasets1 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets2 = new OASXmlSdtmigDatasets();

        System.assertEquals(xmlSdtmigDatasets1.hashCode(), xmlSdtmigDatasets1.hashCode());
        System.assertEquals(xmlSdtmigDatasets2.hashCode(), xmlSdtmigDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigDatasets xmlSdtmigDatasets1 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets2 = OASXmlSdtmigDatasets.getExample();
        OASXmlSdtmigDatasets xmlSdtmigDatasets3 = new OASXmlSdtmigDatasets();
        OASXmlSdtmigDatasets xmlSdtmigDatasets4 = new OASXmlSdtmigDatasets();

        System.assert(xmlSdtmigDatasets1.equals(xmlSdtmigDatasets2));
        System.assert(xmlSdtmigDatasets3.equals(xmlSdtmigDatasets4));
        System.assertEquals(xmlSdtmigDatasets1.hashCode(), xmlSdtmigDatasets2.hashCode());
        System.assertEquals(xmlSdtmigDatasets3.hashCode(), xmlSdtmigDatasets4.hashCode());
    }
}
