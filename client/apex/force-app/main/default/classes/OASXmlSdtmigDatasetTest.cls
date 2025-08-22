@isTest
private class OASXmlSdtmigDatasetTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigDataset xmlSdtmigDataset1 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset2 = xmlSdtmigDataset1;
        OASXmlSdtmigDataset xmlSdtmigDataset3 = new OASXmlSdtmigDataset();
        OASXmlSdtmigDataset xmlSdtmigDataset4 = xmlSdtmigDataset3;

        System.assert(xmlSdtmigDataset1.equals(xmlSdtmigDataset2));
        System.assert(xmlSdtmigDataset2.equals(xmlSdtmigDataset1));
        System.assert(xmlSdtmigDataset1.equals(xmlSdtmigDataset1));
        System.assert(xmlSdtmigDataset3.equals(xmlSdtmigDataset4));
        System.assert(xmlSdtmigDataset4.equals(xmlSdtmigDataset3));
        System.assert(xmlSdtmigDataset3.equals(xmlSdtmigDataset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigDataset xmlSdtmigDataset1 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset2 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset3 = new OASXmlSdtmigDataset();
        OASXmlSdtmigDataset xmlSdtmigDataset4 = new OASXmlSdtmigDataset();

        System.assert(xmlSdtmigDataset1.equals(xmlSdtmigDataset2));
        System.assert(xmlSdtmigDataset2.equals(xmlSdtmigDataset1));
        System.assert(xmlSdtmigDataset3.equals(xmlSdtmigDataset4));
        System.assert(xmlSdtmigDataset4.equals(xmlSdtmigDataset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigDataset xmlSdtmigDataset1 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset2 = new OASXmlSdtmigDataset();

        System.assertEquals(false, xmlSdtmigDataset1.equals('foo'));
        System.assertEquals(false, xmlSdtmigDataset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigDataset xmlSdtmigDataset1 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset2 = new OASXmlSdtmigDataset();
        OASXmlSdtmigDataset xmlSdtmigDataset3;

        System.assertEquals(false, xmlSdtmigDataset1.equals(xmlSdtmigDataset3));
        System.assertEquals(false, xmlSdtmigDataset2.equals(xmlSdtmigDataset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigDataset xmlSdtmigDataset1 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset2 = new OASXmlSdtmigDataset();

        System.assertEquals(xmlSdtmigDataset1.hashCode(), xmlSdtmigDataset1.hashCode());
        System.assertEquals(xmlSdtmigDataset2.hashCode(), xmlSdtmigDataset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigDataset xmlSdtmigDataset1 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset2 = OASXmlSdtmigDataset.getExample();
        OASXmlSdtmigDataset xmlSdtmigDataset3 = new OASXmlSdtmigDataset();
        OASXmlSdtmigDataset xmlSdtmigDataset4 = new OASXmlSdtmigDataset();

        System.assert(xmlSdtmigDataset1.equals(xmlSdtmigDataset2));
        System.assert(xmlSdtmigDataset3.equals(xmlSdtmigDataset4));
        System.assertEquals(xmlSdtmigDataset1.hashCode(), xmlSdtmigDataset2.hashCode());
        System.assertEquals(xmlSdtmigDataset3.hashCode(), xmlSdtmigDataset4.hashCode());
    }
}
