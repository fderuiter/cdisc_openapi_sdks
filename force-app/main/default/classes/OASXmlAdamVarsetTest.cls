@isTest
private class OASXmlAdamVarsetTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAdamVarset xmlAdamVarset1 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset2 = xmlAdamVarset1;
        OASXmlAdamVarset xmlAdamVarset3 = new OASXmlAdamVarset();
        OASXmlAdamVarset xmlAdamVarset4 = xmlAdamVarset3;

        System.assert(xmlAdamVarset1.equals(xmlAdamVarset2));
        System.assert(xmlAdamVarset2.equals(xmlAdamVarset1));
        System.assert(xmlAdamVarset1.equals(xmlAdamVarset1));
        System.assert(xmlAdamVarset3.equals(xmlAdamVarset4));
        System.assert(xmlAdamVarset4.equals(xmlAdamVarset3));
        System.assert(xmlAdamVarset3.equals(xmlAdamVarset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAdamVarset xmlAdamVarset1 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset2 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset3 = new OASXmlAdamVarset();
        OASXmlAdamVarset xmlAdamVarset4 = new OASXmlAdamVarset();

        System.assert(xmlAdamVarset1.equals(xmlAdamVarset2));
        System.assert(xmlAdamVarset2.equals(xmlAdamVarset1));
        System.assert(xmlAdamVarset3.equals(xmlAdamVarset4));
        System.assert(xmlAdamVarset4.equals(xmlAdamVarset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAdamVarset xmlAdamVarset1 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset2 = new OASXmlAdamVarset();

        System.assertEquals(false, xmlAdamVarset1.equals('foo'));
        System.assertEquals(false, xmlAdamVarset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAdamVarset xmlAdamVarset1 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset2 = new OASXmlAdamVarset();
        OASXmlAdamVarset xmlAdamVarset3;

        System.assertEquals(false, xmlAdamVarset1.equals(xmlAdamVarset3));
        System.assertEquals(false, xmlAdamVarset2.equals(xmlAdamVarset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAdamVarset xmlAdamVarset1 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset2 = new OASXmlAdamVarset();

        System.assertEquals(xmlAdamVarset1.hashCode(), xmlAdamVarset1.hashCode());
        System.assertEquals(xmlAdamVarset2.hashCode(), xmlAdamVarset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAdamVarset xmlAdamVarset1 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset2 = OASXmlAdamVarset.getExample();
        OASXmlAdamVarset xmlAdamVarset3 = new OASXmlAdamVarset();
        OASXmlAdamVarset xmlAdamVarset4 = new OASXmlAdamVarset();

        System.assert(xmlAdamVarset1.equals(xmlAdamVarset2));
        System.assert(xmlAdamVarset3.equals(xmlAdamVarset4));
        System.assertEquals(xmlAdamVarset1.hashCode(), xmlAdamVarset2.hashCode());
        System.assertEquals(xmlAdamVarset3.hashCode(), xmlAdamVarset4.hashCode());
    }
}
