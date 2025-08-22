@isTest
private class OASXmlSdtmDatasetTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmDataset xmlSdtmDataset1 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset2 = xmlSdtmDataset1;
        OASXmlSdtmDataset xmlSdtmDataset3 = new OASXmlSdtmDataset();
        OASXmlSdtmDataset xmlSdtmDataset4 = xmlSdtmDataset3;

        System.assert(xmlSdtmDataset1.equals(xmlSdtmDataset2));
        System.assert(xmlSdtmDataset2.equals(xmlSdtmDataset1));
        System.assert(xmlSdtmDataset1.equals(xmlSdtmDataset1));
        System.assert(xmlSdtmDataset3.equals(xmlSdtmDataset4));
        System.assert(xmlSdtmDataset4.equals(xmlSdtmDataset3));
        System.assert(xmlSdtmDataset3.equals(xmlSdtmDataset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmDataset xmlSdtmDataset1 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset2 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset3 = new OASXmlSdtmDataset();
        OASXmlSdtmDataset xmlSdtmDataset4 = new OASXmlSdtmDataset();

        System.assert(xmlSdtmDataset1.equals(xmlSdtmDataset2));
        System.assert(xmlSdtmDataset2.equals(xmlSdtmDataset1));
        System.assert(xmlSdtmDataset3.equals(xmlSdtmDataset4));
        System.assert(xmlSdtmDataset4.equals(xmlSdtmDataset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmDataset xmlSdtmDataset1 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset2 = new OASXmlSdtmDataset();

        System.assertEquals(false, xmlSdtmDataset1.equals('foo'));
        System.assertEquals(false, xmlSdtmDataset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmDataset xmlSdtmDataset1 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset2 = new OASXmlSdtmDataset();
        OASXmlSdtmDataset xmlSdtmDataset3;

        System.assertEquals(false, xmlSdtmDataset1.equals(xmlSdtmDataset3));
        System.assertEquals(false, xmlSdtmDataset2.equals(xmlSdtmDataset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmDataset xmlSdtmDataset1 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset2 = new OASXmlSdtmDataset();

        System.assertEquals(xmlSdtmDataset1.hashCode(), xmlSdtmDataset1.hashCode());
        System.assertEquals(xmlSdtmDataset2.hashCode(), xmlSdtmDataset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmDataset xmlSdtmDataset1 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset2 = OASXmlSdtmDataset.getExample();
        OASXmlSdtmDataset xmlSdtmDataset3 = new OASXmlSdtmDataset();
        OASXmlSdtmDataset xmlSdtmDataset4 = new OASXmlSdtmDataset();

        System.assert(xmlSdtmDataset1.equals(xmlSdtmDataset2));
        System.assert(xmlSdtmDataset3.equals(xmlSdtmDataset4));
        System.assertEquals(xmlSdtmDataset1.hashCode(), xmlSdtmDataset2.hashCode());
        System.assertEquals(xmlSdtmDataset3.hashCode(), xmlSdtmDataset4.hashCode());
    }
}
