@isTest
private class OASXmlSendigDatasetTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigDataset xmlSendigDataset1 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset2 = xmlSendigDataset1;
        OASXmlSendigDataset xmlSendigDataset3 = new OASXmlSendigDataset();
        OASXmlSendigDataset xmlSendigDataset4 = xmlSendigDataset3;

        System.assert(xmlSendigDataset1.equals(xmlSendigDataset2));
        System.assert(xmlSendigDataset2.equals(xmlSendigDataset1));
        System.assert(xmlSendigDataset1.equals(xmlSendigDataset1));
        System.assert(xmlSendigDataset3.equals(xmlSendigDataset4));
        System.assert(xmlSendigDataset4.equals(xmlSendigDataset3));
        System.assert(xmlSendigDataset3.equals(xmlSendigDataset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigDataset xmlSendigDataset1 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset2 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset3 = new OASXmlSendigDataset();
        OASXmlSendigDataset xmlSendigDataset4 = new OASXmlSendigDataset();

        System.assert(xmlSendigDataset1.equals(xmlSendigDataset2));
        System.assert(xmlSendigDataset2.equals(xmlSendigDataset1));
        System.assert(xmlSendigDataset3.equals(xmlSendigDataset4));
        System.assert(xmlSendigDataset4.equals(xmlSendigDataset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigDataset xmlSendigDataset1 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset2 = new OASXmlSendigDataset();

        System.assertEquals(false, xmlSendigDataset1.equals('foo'));
        System.assertEquals(false, xmlSendigDataset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigDataset xmlSendigDataset1 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset2 = new OASXmlSendigDataset();
        OASXmlSendigDataset xmlSendigDataset3;

        System.assertEquals(false, xmlSendigDataset1.equals(xmlSendigDataset3));
        System.assertEquals(false, xmlSendigDataset2.equals(xmlSendigDataset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigDataset xmlSendigDataset1 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset2 = new OASXmlSendigDataset();

        System.assertEquals(xmlSendigDataset1.hashCode(), xmlSendigDataset1.hashCode());
        System.assertEquals(xmlSendigDataset2.hashCode(), xmlSendigDataset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigDataset xmlSendigDataset1 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset2 = OASXmlSendigDataset.getExample();
        OASXmlSendigDataset xmlSendigDataset3 = new OASXmlSendigDataset();
        OASXmlSendigDataset xmlSendigDataset4 = new OASXmlSendigDataset();

        System.assert(xmlSendigDataset1.equals(xmlSendigDataset2));
        System.assert(xmlSendigDataset3.equals(xmlSendigDataset4));
        System.assertEquals(xmlSendigDataset1.hashCode(), xmlSendigDataset2.hashCode());
        System.assertEquals(xmlSendigDataset3.hashCode(), xmlSendigDataset4.hashCode());
    }
}
