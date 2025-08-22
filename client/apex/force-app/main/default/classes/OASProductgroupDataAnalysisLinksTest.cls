@isTest
private class OASProductgroupDataAnalysisLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks1 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks2 = productgroupDataAnalysisLinks1;
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks3 = new OASProductgroupDataAnalysisLinks();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks4 = productgroupDataAnalysisLinks3;

        System.assert(productgroupDataAnalysisLinks1.equals(productgroupDataAnalysisLinks2));
        System.assert(productgroupDataAnalysisLinks2.equals(productgroupDataAnalysisLinks1));
        System.assert(productgroupDataAnalysisLinks1.equals(productgroupDataAnalysisLinks1));
        System.assert(productgroupDataAnalysisLinks3.equals(productgroupDataAnalysisLinks4));
        System.assert(productgroupDataAnalysisLinks4.equals(productgroupDataAnalysisLinks3));
        System.assert(productgroupDataAnalysisLinks3.equals(productgroupDataAnalysisLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks1 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks2 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks3 = new OASProductgroupDataAnalysisLinks();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks4 = new OASProductgroupDataAnalysisLinks();

        System.assert(productgroupDataAnalysisLinks1.equals(productgroupDataAnalysisLinks2));
        System.assert(productgroupDataAnalysisLinks2.equals(productgroupDataAnalysisLinks1));
        System.assert(productgroupDataAnalysisLinks3.equals(productgroupDataAnalysisLinks4));
        System.assert(productgroupDataAnalysisLinks4.equals(productgroupDataAnalysisLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks1 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks2 = new OASProductgroupDataAnalysisLinks();

        System.assertEquals(false, productgroupDataAnalysisLinks1.equals('foo'));
        System.assertEquals(false, productgroupDataAnalysisLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks1 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks2 = new OASProductgroupDataAnalysisLinks();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks3;

        System.assertEquals(false, productgroupDataAnalysisLinks1.equals(productgroupDataAnalysisLinks3));
        System.assertEquals(false, productgroupDataAnalysisLinks2.equals(productgroupDataAnalysisLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks1 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks2 = new OASProductgroupDataAnalysisLinks();

        System.assertEquals(productgroupDataAnalysisLinks1.hashCode(), productgroupDataAnalysisLinks1.hashCode());
        System.assertEquals(productgroupDataAnalysisLinks2.hashCode(), productgroupDataAnalysisLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks1 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks2 = OASProductgroupDataAnalysisLinks.getExample();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks3 = new OASProductgroupDataAnalysisLinks();
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks4 = new OASProductgroupDataAnalysisLinks();

        System.assert(productgroupDataAnalysisLinks1.equals(productgroupDataAnalysisLinks2));
        System.assert(productgroupDataAnalysisLinks3.equals(productgroupDataAnalysisLinks4));
        System.assertEquals(productgroupDataAnalysisLinks1.hashCode(), productgroupDataAnalysisLinks2.hashCode());
        System.assertEquals(productgroupDataAnalysisLinks3.hashCode(), productgroupDataAnalysisLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASProductgroupDataAnalysisLinks productgroupDataAnalysisLinks = new OASProductgroupDataAnalysisLinks();
        System.assertEquals(new List<OASAdamProductRefElement>(), productgroupDataAnalysisLinks.adam);
        System.assertEquals(null, productgroupDataAnalysisLinks.self);
    }
}
