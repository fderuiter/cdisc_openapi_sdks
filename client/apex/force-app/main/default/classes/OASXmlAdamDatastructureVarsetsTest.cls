@isTest
private class OASXmlAdamDatastructureVarsetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets1 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets2 = xmlAdamDatastructureVarsets1;
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets3 = new OASXmlAdamDatastructureVarsets();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets4 = xmlAdamDatastructureVarsets3;

        System.assert(xmlAdamDatastructureVarsets1.equals(xmlAdamDatastructureVarsets2));
        System.assert(xmlAdamDatastructureVarsets2.equals(xmlAdamDatastructureVarsets1));
        System.assert(xmlAdamDatastructureVarsets1.equals(xmlAdamDatastructureVarsets1));
        System.assert(xmlAdamDatastructureVarsets3.equals(xmlAdamDatastructureVarsets4));
        System.assert(xmlAdamDatastructureVarsets4.equals(xmlAdamDatastructureVarsets3));
        System.assert(xmlAdamDatastructureVarsets3.equals(xmlAdamDatastructureVarsets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets1 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets2 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets3 = new OASXmlAdamDatastructureVarsets();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets4 = new OASXmlAdamDatastructureVarsets();

        System.assert(xmlAdamDatastructureVarsets1.equals(xmlAdamDatastructureVarsets2));
        System.assert(xmlAdamDatastructureVarsets2.equals(xmlAdamDatastructureVarsets1));
        System.assert(xmlAdamDatastructureVarsets3.equals(xmlAdamDatastructureVarsets4));
        System.assert(xmlAdamDatastructureVarsets4.equals(xmlAdamDatastructureVarsets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets1 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets2 = new OASXmlAdamDatastructureVarsets();

        System.assertEquals(false, xmlAdamDatastructureVarsets1.equals('foo'));
        System.assertEquals(false, xmlAdamDatastructureVarsets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets1 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets2 = new OASXmlAdamDatastructureVarsets();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets3;

        System.assertEquals(false, xmlAdamDatastructureVarsets1.equals(xmlAdamDatastructureVarsets3));
        System.assertEquals(false, xmlAdamDatastructureVarsets2.equals(xmlAdamDatastructureVarsets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets1 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets2 = new OASXmlAdamDatastructureVarsets();

        System.assertEquals(xmlAdamDatastructureVarsets1.hashCode(), xmlAdamDatastructureVarsets1.hashCode());
        System.assertEquals(xmlAdamDatastructureVarsets2.hashCode(), xmlAdamDatastructureVarsets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets1 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets2 = OASXmlAdamDatastructureVarsets.getExample();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets3 = new OASXmlAdamDatastructureVarsets();
        OASXmlAdamDatastructureVarsets xmlAdamDatastructureVarsets4 = new OASXmlAdamDatastructureVarsets();

        System.assert(xmlAdamDatastructureVarsets1.equals(xmlAdamDatastructureVarsets2));
        System.assert(xmlAdamDatastructureVarsets3.equals(xmlAdamDatastructureVarsets4));
        System.assertEquals(xmlAdamDatastructureVarsets1.hashCode(), xmlAdamDatastructureVarsets2.hashCode());
        System.assertEquals(xmlAdamDatastructureVarsets3.hashCode(), xmlAdamDatastructureVarsets4.hashCode());
    }
}
