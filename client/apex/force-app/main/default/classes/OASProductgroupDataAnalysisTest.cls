@isTest
private class OASProductgroupDataAnalysisTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupDataAnalysis productgroupDataAnalysis1 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis2 = productgroupDataAnalysis1;
        OASProductgroupDataAnalysis productgroupDataAnalysis3 = new OASProductgroupDataAnalysis();
        OASProductgroupDataAnalysis productgroupDataAnalysis4 = productgroupDataAnalysis3;

        System.assert(productgroupDataAnalysis1.equals(productgroupDataAnalysis2));
        System.assert(productgroupDataAnalysis2.equals(productgroupDataAnalysis1));
        System.assert(productgroupDataAnalysis1.equals(productgroupDataAnalysis1));
        System.assert(productgroupDataAnalysis3.equals(productgroupDataAnalysis4));
        System.assert(productgroupDataAnalysis4.equals(productgroupDataAnalysis3));
        System.assert(productgroupDataAnalysis3.equals(productgroupDataAnalysis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupDataAnalysis productgroupDataAnalysis1 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis2 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis3 = new OASProductgroupDataAnalysis();
        OASProductgroupDataAnalysis productgroupDataAnalysis4 = new OASProductgroupDataAnalysis();

        System.assert(productgroupDataAnalysis1.equals(productgroupDataAnalysis2));
        System.assert(productgroupDataAnalysis2.equals(productgroupDataAnalysis1));
        System.assert(productgroupDataAnalysis3.equals(productgroupDataAnalysis4));
        System.assert(productgroupDataAnalysis4.equals(productgroupDataAnalysis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupDataAnalysis productgroupDataAnalysis1 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis2 = new OASProductgroupDataAnalysis();

        System.assertEquals(false, productgroupDataAnalysis1.equals('foo'));
        System.assertEquals(false, productgroupDataAnalysis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupDataAnalysis productgroupDataAnalysis1 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis2 = new OASProductgroupDataAnalysis();
        OASProductgroupDataAnalysis productgroupDataAnalysis3;

        System.assertEquals(false, productgroupDataAnalysis1.equals(productgroupDataAnalysis3));
        System.assertEquals(false, productgroupDataAnalysis2.equals(productgroupDataAnalysis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupDataAnalysis productgroupDataAnalysis1 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis2 = new OASProductgroupDataAnalysis();

        System.assertEquals(productgroupDataAnalysis1.hashCode(), productgroupDataAnalysis1.hashCode());
        System.assertEquals(productgroupDataAnalysis2.hashCode(), productgroupDataAnalysis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupDataAnalysis productgroupDataAnalysis1 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis2 = OASProductgroupDataAnalysis.getExample();
        OASProductgroupDataAnalysis productgroupDataAnalysis3 = new OASProductgroupDataAnalysis();
        OASProductgroupDataAnalysis productgroupDataAnalysis4 = new OASProductgroupDataAnalysis();

        System.assert(productgroupDataAnalysis1.equals(productgroupDataAnalysis2));
        System.assert(productgroupDataAnalysis3.equals(productgroupDataAnalysis4));
        System.assertEquals(productgroupDataAnalysis1.hashCode(), productgroupDataAnalysis2.hashCode());
        System.assertEquals(productgroupDataAnalysis3.hashCode(), productgroupDataAnalysis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductgroupDataAnalysis productgroupDataAnalysis = new OASProductgroupDataAnalysis();
        Map<String, String> x-property-mappings = productgroupDataAnalysis.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
