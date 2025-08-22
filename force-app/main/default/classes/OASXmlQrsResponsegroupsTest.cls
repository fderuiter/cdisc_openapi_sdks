@isTest
private class OASXmlQrsResponsegroupsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlQrsResponsegroups xmlQrsResponsegroups1 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups2 = xmlQrsResponsegroups1;
        OASXmlQrsResponsegroups xmlQrsResponsegroups3 = new OASXmlQrsResponsegroups();
        OASXmlQrsResponsegroups xmlQrsResponsegroups4 = xmlQrsResponsegroups3;

        System.assert(xmlQrsResponsegroups1.equals(xmlQrsResponsegroups2));
        System.assert(xmlQrsResponsegroups2.equals(xmlQrsResponsegroups1));
        System.assert(xmlQrsResponsegroups1.equals(xmlQrsResponsegroups1));
        System.assert(xmlQrsResponsegroups3.equals(xmlQrsResponsegroups4));
        System.assert(xmlQrsResponsegroups4.equals(xmlQrsResponsegroups3));
        System.assert(xmlQrsResponsegroups3.equals(xmlQrsResponsegroups3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlQrsResponsegroups xmlQrsResponsegroups1 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups2 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups3 = new OASXmlQrsResponsegroups();
        OASXmlQrsResponsegroups xmlQrsResponsegroups4 = new OASXmlQrsResponsegroups();

        System.assert(xmlQrsResponsegroups1.equals(xmlQrsResponsegroups2));
        System.assert(xmlQrsResponsegroups2.equals(xmlQrsResponsegroups1));
        System.assert(xmlQrsResponsegroups3.equals(xmlQrsResponsegroups4));
        System.assert(xmlQrsResponsegroups4.equals(xmlQrsResponsegroups3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlQrsResponsegroups xmlQrsResponsegroups1 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups2 = new OASXmlQrsResponsegroups();

        System.assertEquals(false, xmlQrsResponsegroups1.equals('foo'));
        System.assertEquals(false, xmlQrsResponsegroups2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlQrsResponsegroups xmlQrsResponsegroups1 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups2 = new OASXmlQrsResponsegroups();
        OASXmlQrsResponsegroups xmlQrsResponsegroups3;

        System.assertEquals(false, xmlQrsResponsegroups1.equals(xmlQrsResponsegroups3));
        System.assertEquals(false, xmlQrsResponsegroups2.equals(xmlQrsResponsegroups3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlQrsResponsegroups xmlQrsResponsegroups1 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups2 = new OASXmlQrsResponsegroups();

        System.assertEquals(xmlQrsResponsegroups1.hashCode(), xmlQrsResponsegroups1.hashCode());
        System.assertEquals(xmlQrsResponsegroups2.hashCode(), xmlQrsResponsegroups2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlQrsResponsegroups xmlQrsResponsegroups1 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups2 = OASXmlQrsResponsegroups.getExample();
        OASXmlQrsResponsegroups xmlQrsResponsegroups3 = new OASXmlQrsResponsegroups();
        OASXmlQrsResponsegroups xmlQrsResponsegroups4 = new OASXmlQrsResponsegroups();

        System.assert(xmlQrsResponsegroups1.equals(xmlQrsResponsegroups2));
        System.assert(xmlQrsResponsegroups3.equals(xmlQrsResponsegroups4));
        System.assertEquals(xmlQrsResponsegroups1.hashCode(), xmlQrsResponsegroups2.hashCode());
        System.assertEquals(xmlQrsResponsegroups3.hashCode(), xmlQrsResponsegroups4.hashCode());
    }
}
