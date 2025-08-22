@isTest
private class OASXmlProductgroupDataAnalysisTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis1 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis2 = xmlProductgroupDataAnalysis1;
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis3 = new OASXmlProductgroupDataAnalysis();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis4 = xmlProductgroupDataAnalysis3;

        System.assert(xmlProductgroupDataAnalysis1.equals(xmlProductgroupDataAnalysis2));
        System.assert(xmlProductgroupDataAnalysis2.equals(xmlProductgroupDataAnalysis1));
        System.assert(xmlProductgroupDataAnalysis1.equals(xmlProductgroupDataAnalysis1));
        System.assert(xmlProductgroupDataAnalysis3.equals(xmlProductgroupDataAnalysis4));
        System.assert(xmlProductgroupDataAnalysis4.equals(xmlProductgroupDataAnalysis3));
        System.assert(xmlProductgroupDataAnalysis3.equals(xmlProductgroupDataAnalysis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis1 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis2 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis3 = new OASXmlProductgroupDataAnalysis();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis4 = new OASXmlProductgroupDataAnalysis();

        System.assert(xmlProductgroupDataAnalysis1.equals(xmlProductgroupDataAnalysis2));
        System.assert(xmlProductgroupDataAnalysis2.equals(xmlProductgroupDataAnalysis1));
        System.assert(xmlProductgroupDataAnalysis3.equals(xmlProductgroupDataAnalysis4));
        System.assert(xmlProductgroupDataAnalysis4.equals(xmlProductgroupDataAnalysis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis1 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis2 = new OASXmlProductgroupDataAnalysis();

        System.assertEquals(false, xmlProductgroupDataAnalysis1.equals('foo'));
        System.assertEquals(false, xmlProductgroupDataAnalysis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis1 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis2 = new OASXmlProductgroupDataAnalysis();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis3;

        System.assertEquals(false, xmlProductgroupDataAnalysis1.equals(xmlProductgroupDataAnalysis3));
        System.assertEquals(false, xmlProductgroupDataAnalysis2.equals(xmlProductgroupDataAnalysis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis1 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis2 = new OASXmlProductgroupDataAnalysis();

        System.assertEquals(xmlProductgroupDataAnalysis1.hashCode(), xmlProductgroupDataAnalysis1.hashCode());
        System.assertEquals(xmlProductgroupDataAnalysis2.hashCode(), xmlProductgroupDataAnalysis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis1 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis2 = OASXmlProductgroupDataAnalysis.getExample();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis3 = new OASXmlProductgroupDataAnalysis();
        OASXmlProductgroupDataAnalysis xmlProductgroupDataAnalysis4 = new OASXmlProductgroupDataAnalysis();

        System.assert(xmlProductgroupDataAnalysis1.equals(xmlProductgroupDataAnalysis2));
        System.assert(xmlProductgroupDataAnalysis3.equals(xmlProductgroupDataAnalysis4));
        System.assertEquals(xmlProductgroupDataAnalysis1.hashCode(), xmlProductgroupDataAnalysis2.hashCode());
        System.assertEquals(xmlProductgroupDataAnalysis3.hashCode(), xmlProductgroupDataAnalysis4.hashCode());
    }
}
