@isTest
private class OASXmlQrsItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlQrsItem xmlQrsItem1 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem2 = xmlQrsItem1;
        OASXmlQrsItem xmlQrsItem3 = new OASXmlQrsItem();
        OASXmlQrsItem xmlQrsItem4 = xmlQrsItem3;

        System.assert(xmlQrsItem1.equals(xmlQrsItem2));
        System.assert(xmlQrsItem2.equals(xmlQrsItem1));
        System.assert(xmlQrsItem1.equals(xmlQrsItem1));
        System.assert(xmlQrsItem3.equals(xmlQrsItem4));
        System.assert(xmlQrsItem4.equals(xmlQrsItem3));
        System.assert(xmlQrsItem3.equals(xmlQrsItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlQrsItem xmlQrsItem1 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem2 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem3 = new OASXmlQrsItem();
        OASXmlQrsItem xmlQrsItem4 = new OASXmlQrsItem();

        System.assert(xmlQrsItem1.equals(xmlQrsItem2));
        System.assert(xmlQrsItem2.equals(xmlQrsItem1));
        System.assert(xmlQrsItem3.equals(xmlQrsItem4));
        System.assert(xmlQrsItem4.equals(xmlQrsItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlQrsItem xmlQrsItem1 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem2 = new OASXmlQrsItem();

        System.assertEquals(false, xmlQrsItem1.equals('foo'));
        System.assertEquals(false, xmlQrsItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlQrsItem xmlQrsItem1 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem2 = new OASXmlQrsItem();
        OASXmlQrsItem xmlQrsItem3;

        System.assertEquals(false, xmlQrsItem1.equals(xmlQrsItem3));
        System.assertEquals(false, xmlQrsItem2.equals(xmlQrsItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlQrsItem xmlQrsItem1 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem2 = new OASXmlQrsItem();

        System.assertEquals(xmlQrsItem1.hashCode(), xmlQrsItem1.hashCode());
        System.assertEquals(xmlQrsItem2.hashCode(), xmlQrsItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlQrsItem xmlQrsItem1 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem2 = OASXmlQrsItem.getExample();
        OASXmlQrsItem xmlQrsItem3 = new OASXmlQrsItem();
        OASXmlQrsItem xmlQrsItem4 = new OASXmlQrsItem();

        System.assert(xmlQrsItem1.equals(xmlQrsItem2));
        System.assert(xmlQrsItem3.equals(xmlQrsItem4));
        System.assertEquals(xmlQrsItem1.hashCode(), xmlQrsItem2.hashCode());
        System.assertEquals(xmlQrsItem3.hashCode(), xmlQrsItem4.hashCode());
    }
}
