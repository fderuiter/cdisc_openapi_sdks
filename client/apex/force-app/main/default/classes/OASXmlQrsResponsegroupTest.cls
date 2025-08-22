@isTest
private class OASXmlQrsResponsegroupTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlQrsResponsegroup xmlQrsResponsegroup1 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup2 = xmlQrsResponsegroup1;
        OASXmlQrsResponsegroup xmlQrsResponsegroup3 = new OASXmlQrsResponsegroup();
        OASXmlQrsResponsegroup xmlQrsResponsegroup4 = xmlQrsResponsegroup3;

        System.assert(xmlQrsResponsegroup1.equals(xmlQrsResponsegroup2));
        System.assert(xmlQrsResponsegroup2.equals(xmlQrsResponsegroup1));
        System.assert(xmlQrsResponsegroup1.equals(xmlQrsResponsegroup1));
        System.assert(xmlQrsResponsegroup3.equals(xmlQrsResponsegroup4));
        System.assert(xmlQrsResponsegroup4.equals(xmlQrsResponsegroup3));
        System.assert(xmlQrsResponsegroup3.equals(xmlQrsResponsegroup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlQrsResponsegroup xmlQrsResponsegroup1 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup2 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup3 = new OASXmlQrsResponsegroup();
        OASXmlQrsResponsegroup xmlQrsResponsegroup4 = new OASXmlQrsResponsegroup();

        System.assert(xmlQrsResponsegroup1.equals(xmlQrsResponsegroup2));
        System.assert(xmlQrsResponsegroup2.equals(xmlQrsResponsegroup1));
        System.assert(xmlQrsResponsegroup3.equals(xmlQrsResponsegroup4));
        System.assert(xmlQrsResponsegroup4.equals(xmlQrsResponsegroup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlQrsResponsegroup xmlQrsResponsegroup1 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup2 = new OASXmlQrsResponsegroup();

        System.assertEquals(false, xmlQrsResponsegroup1.equals('foo'));
        System.assertEquals(false, xmlQrsResponsegroup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlQrsResponsegroup xmlQrsResponsegroup1 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup2 = new OASXmlQrsResponsegroup();
        OASXmlQrsResponsegroup xmlQrsResponsegroup3;

        System.assertEquals(false, xmlQrsResponsegroup1.equals(xmlQrsResponsegroup3));
        System.assertEquals(false, xmlQrsResponsegroup2.equals(xmlQrsResponsegroup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlQrsResponsegroup xmlQrsResponsegroup1 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup2 = new OASXmlQrsResponsegroup();

        System.assertEquals(xmlQrsResponsegroup1.hashCode(), xmlQrsResponsegroup1.hashCode());
        System.assertEquals(xmlQrsResponsegroup2.hashCode(), xmlQrsResponsegroup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlQrsResponsegroup xmlQrsResponsegroup1 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup2 = OASXmlQrsResponsegroup.getExample();
        OASXmlQrsResponsegroup xmlQrsResponsegroup3 = new OASXmlQrsResponsegroup();
        OASXmlQrsResponsegroup xmlQrsResponsegroup4 = new OASXmlQrsResponsegroup();

        System.assert(xmlQrsResponsegroup1.equals(xmlQrsResponsegroup2));
        System.assert(xmlQrsResponsegroup3.equals(xmlQrsResponsegroup4));
        System.assertEquals(xmlQrsResponsegroup1.hashCode(), xmlQrsResponsegroup2.hashCode());
        System.assertEquals(xmlQrsResponsegroup3.hashCode(), xmlQrsResponsegroup4.hashCode());
    }
}
