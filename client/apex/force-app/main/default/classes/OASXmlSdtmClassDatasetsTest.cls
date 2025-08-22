@isTest
private class OASXmlSdtmClassDatasetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets1 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets2 = xmlSdtmClassDatasets1;
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets3 = new OASXmlSdtmClassDatasets();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets4 = xmlSdtmClassDatasets3;

        System.assert(xmlSdtmClassDatasets1.equals(xmlSdtmClassDatasets2));
        System.assert(xmlSdtmClassDatasets2.equals(xmlSdtmClassDatasets1));
        System.assert(xmlSdtmClassDatasets1.equals(xmlSdtmClassDatasets1));
        System.assert(xmlSdtmClassDatasets3.equals(xmlSdtmClassDatasets4));
        System.assert(xmlSdtmClassDatasets4.equals(xmlSdtmClassDatasets3));
        System.assert(xmlSdtmClassDatasets3.equals(xmlSdtmClassDatasets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets1 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets2 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets3 = new OASXmlSdtmClassDatasets();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets4 = new OASXmlSdtmClassDatasets();

        System.assert(xmlSdtmClassDatasets1.equals(xmlSdtmClassDatasets2));
        System.assert(xmlSdtmClassDatasets2.equals(xmlSdtmClassDatasets1));
        System.assert(xmlSdtmClassDatasets3.equals(xmlSdtmClassDatasets4));
        System.assert(xmlSdtmClassDatasets4.equals(xmlSdtmClassDatasets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets1 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets2 = new OASXmlSdtmClassDatasets();

        System.assertEquals(false, xmlSdtmClassDatasets1.equals('foo'));
        System.assertEquals(false, xmlSdtmClassDatasets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets1 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets2 = new OASXmlSdtmClassDatasets();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets3;

        System.assertEquals(false, xmlSdtmClassDatasets1.equals(xmlSdtmClassDatasets3));
        System.assertEquals(false, xmlSdtmClassDatasets2.equals(xmlSdtmClassDatasets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets1 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets2 = new OASXmlSdtmClassDatasets();

        System.assertEquals(xmlSdtmClassDatasets1.hashCode(), xmlSdtmClassDatasets1.hashCode());
        System.assertEquals(xmlSdtmClassDatasets2.hashCode(), xmlSdtmClassDatasets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets1 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets2 = OASXmlSdtmClassDatasets.getExample();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets3 = new OASXmlSdtmClassDatasets();
        OASXmlSdtmClassDatasets xmlSdtmClassDatasets4 = new OASXmlSdtmClassDatasets();

        System.assert(xmlSdtmClassDatasets1.equals(xmlSdtmClassDatasets2));
        System.assert(xmlSdtmClassDatasets3.equals(xmlSdtmClassDatasets4));
        System.assertEquals(xmlSdtmClassDatasets1.hashCode(), xmlSdtmClassDatasets2.hashCode());
        System.assertEquals(xmlSdtmClassDatasets3.hashCode(), xmlSdtmClassDatasets4.hashCode());
    }
}
