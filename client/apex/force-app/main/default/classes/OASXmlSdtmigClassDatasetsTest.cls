@isTest
private class OASXmlSdtmigClassDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets1 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets2 = xmlSdtmigClassDatasets1;
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets3 = new OASXmlSdtmigClassDatasets();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets4 = xmlSdtmigClassDatasets3;

        System.assert(xmlSdtmigClassDatasets1.equals(xmlSdtmigClassDatasets2));
        System.assert(xmlSdtmigClassDatasets2.equals(xmlSdtmigClassDatasets1));
        System.assert(xmlSdtmigClassDatasets1.equals(xmlSdtmigClassDatasets1));
        System.assert(xmlSdtmigClassDatasets3.equals(xmlSdtmigClassDatasets4));
        System.assert(xmlSdtmigClassDatasets4.equals(xmlSdtmigClassDatasets3));
        System.assert(xmlSdtmigClassDatasets3.equals(xmlSdtmigClassDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets1 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets2 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets3 = new OASXmlSdtmigClassDatasets();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets4 = new OASXmlSdtmigClassDatasets();

        System.assert(xmlSdtmigClassDatasets1.equals(xmlSdtmigClassDatasets2));
        System.assert(xmlSdtmigClassDatasets2.equals(xmlSdtmigClassDatasets1));
        System.assert(xmlSdtmigClassDatasets3.equals(xmlSdtmigClassDatasets4));
        System.assert(xmlSdtmigClassDatasets4.equals(xmlSdtmigClassDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets1 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets2 = new OASXmlSdtmigClassDatasets();

        System.assertEquals(false, xmlSdtmigClassDatasets1.equals('foo'));
        System.assertEquals(false, xmlSdtmigClassDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets1 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets2 = new OASXmlSdtmigClassDatasets();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets3;

        System.assertEquals(false, xmlSdtmigClassDatasets1.equals(xmlSdtmigClassDatasets3));
        System.assertEquals(false, xmlSdtmigClassDatasets2.equals(xmlSdtmigClassDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets1 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets2 = new OASXmlSdtmigClassDatasets();

        System.assertEquals(xmlSdtmigClassDatasets1.hashCode(), xmlSdtmigClassDatasets1.hashCode());
        System.assertEquals(xmlSdtmigClassDatasets2.hashCode(), xmlSdtmigClassDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets1 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets2 = OASXmlSdtmigClassDatasets.getExample();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets3 = new OASXmlSdtmigClassDatasets();
        OASXmlSdtmigClassDatasets xmlSdtmigClassDatasets4 = new OASXmlSdtmigClassDatasets();

        System.assert(xmlSdtmigClassDatasets1.equals(xmlSdtmigClassDatasets2));
        System.assert(xmlSdtmigClassDatasets3.equals(xmlSdtmigClassDatasets4));
        System.assertEquals(xmlSdtmigClassDatasets1.hashCode(), xmlSdtmigClassDatasets2.hashCode());
        System.assertEquals(xmlSdtmigClassDatasets3.hashCode(), xmlSdtmigClassDatasets4.hashCode());
    }
}
