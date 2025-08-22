@isTest
private class OASXmlQrsItemsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlQrsItems xmlQrsItems1 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems2 = xmlQrsItems1;
        OASXmlQrsItems xmlQrsItems3 = new OASXmlQrsItems();
        OASXmlQrsItems xmlQrsItems4 = xmlQrsItems3;

        System.assert(xmlQrsItems1.equals(xmlQrsItems2));
        System.assert(xmlQrsItems2.equals(xmlQrsItems1));
        System.assert(xmlQrsItems1.equals(xmlQrsItems1));
        System.assert(xmlQrsItems3.equals(xmlQrsItems4));
        System.assert(xmlQrsItems4.equals(xmlQrsItems3));
        System.assert(xmlQrsItems3.equals(xmlQrsItems3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlQrsItems xmlQrsItems1 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems2 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems3 = new OASXmlQrsItems();
        OASXmlQrsItems xmlQrsItems4 = new OASXmlQrsItems();

        System.assert(xmlQrsItems1.equals(xmlQrsItems2));
        System.assert(xmlQrsItems2.equals(xmlQrsItems1));
        System.assert(xmlQrsItems3.equals(xmlQrsItems4));
        System.assert(xmlQrsItems4.equals(xmlQrsItems3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlQrsItems xmlQrsItems1 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems2 = new OASXmlQrsItems();

        System.assertEquals(false, xmlQrsItems1.equals('foo'));
        System.assertEquals(false, xmlQrsItems2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlQrsItems xmlQrsItems1 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems2 = new OASXmlQrsItems();
        OASXmlQrsItems xmlQrsItems3;

        System.assertEquals(false, xmlQrsItems1.equals(xmlQrsItems3));
        System.assertEquals(false, xmlQrsItems2.equals(xmlQrsItems3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlQrsItems xmlQrsItems1 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems2 = new OASXmlQrsItems();

        System.assertEquals(xmlQrsItems1.hashCode(), xmlQrsItems1.hashCode());
        System.assertEquals(xmlQrsItems2.hashCode(), xmlQrsItems2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlQrsItems xmlQrsItems1 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems2 = OASXmlQrsItems.getExample();
        OASXmlQrsItems xmlQrsItems3 = new OASXmlQrsItems();
        OASXmlQrsItems xmlQrsItems4 = new OASXmlQrsItems();

        System.assert(xmlQrsItems1.equals(xmlQrsItems2));
        System.assert(xmlQrsItems3.equals(xmlQrsItems4));
        System.assertEquals(xmlQrsItems1.hashCode(), xmlQrsItems2.hashCode());
        System.assertEquals(xmlQrsItems3.hashCode(), xmlQrsItems4.hashCode());
    }
}
