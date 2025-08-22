@isTest
private class OASXmlAdamProductDatastructuresTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures1 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures2 = xmlAdamProductDatastructures1;
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures3 = new OASXmlAdamProductDatastructures();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures4 = xmlAdamProductDatastructures3;

        System.assert(xmlAdamProductDatastructures1.equals(xmlAdamProductDatastructures2));
        System.assert(xmlAdamProductDatastructures2.equals(xmlAdamProductDatastructures1));
        System.assert(xmlAdamProductDatastructures1.equals(xmlAdamProductDatastructures1));
        System.assert(xmlAdamProductDatastructures3.equals(xmlAdamProductDatastructures4));
        System.assert(xmlAdamProductDatastructures4.equals(xmlAdamProductDatastructures3));
        System.assert(xmlAdamProductDatastructures3.equals(xmlAdamProductDatastructures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures1 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures2 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures3 = new OASXmlAdamProductDatastructures();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures4 = new OASXmlAdamProductDatastructures();

        System.assert(xmlAdamProductDatastructures1.equals(xmlAdamProductDatastructures2));
        System.assert(xmlAdamProductDatastructures2.equals(xmlAdamProductDatastructures1));
        System.assert(xmlAdamProductDatastructures3.equals(xmlAdamProductDatastructures4));
        System.assert(xmlAdamProductDatastructures4.equals(xmlAdamProductDatastructures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures1 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures2 = new OASXmlAdamProductDatastructures();

        System.assertEquals(false, xmlAdamProductDatastructures1.equals('foo'));
        System.assertEquals(false, xmlAdamProductDatastructures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures1 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures2 = new OASXmlAdamProductDatastructures();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures3;

        System.assertEquals(false, xmlAdamProductDatastructures1.equals(xmlAdamProductDatastructures3));
        System.assertEquals(false, xmlAdamProductDatastructures2.equals(xmlAdamProductDatastructures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures1 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures2 = new OASXmlAdamProductDatastructures();

        System.assertEquals(xmlAdamProductDatastructures1.hashCode(), xmlAdamProductDatastructures1.hashCode());
        System.assertEquals(xmlAdamProductDatastructures2.hashCode(), xmlAdamProductDatastructures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures1 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures2 = OASXmlAdamProductDatastructures.getExample();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures3 = new OASXmlAdamProductDatastructures();
        OASXmlAdamProductDatastructures xmlAdamProductDatastructures4 = new OASXmlAdamProductDatastructures();

        System.assert(xmlAdamProductDatastructures1.equals(xmlAdamProductDatastructures2));
        System.assert(xmlAdamProductDatastructures3.equals(xmlAdamProductDatastructures4));
        System.assertEquals(xmlAdamProductDatastructures1.hashCode(), xmlAdamProductDatastructures2.hashCode());
        System.assertEquals(xmlAdamProductDatastructures3.hashCode(), xmlAdamProductDatastructures4.hashCode());
    }
}
