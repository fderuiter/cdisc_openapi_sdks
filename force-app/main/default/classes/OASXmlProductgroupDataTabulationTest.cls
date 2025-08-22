@isTest
private class OASXmlProductgroupDataTabulationTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation1 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation2 = xmlProductgroupDataTabulation1;
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation3 = new OASXmlProductgroupDataTabulation();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation4 = xmlProductgroupDataTabulation3;

        System.assert(xmlProductgroupDataTabulation1.equals(xmlProductgroupDataTabulation2));
        System.assert(xmlProductgroupDataTabulation2.equals(xmlProductgroupDataTabulation1));
        System.assert(xmlProductgroupDataTabulation1.equals(xmlProductgroupDataTabulation1));
        System.assert(xmlProductgroupDataTabulation3.equals(xmlProductgroupDataTabulation4));
        System.assert(xmlProductgroupDataTabulation4.equals(xmlProductgroupDataTabulation3));
        System.assert(xmlProductgroupDataTabulation3.equals(xmlProductgroupDataTabulation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation1 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation2 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation3 = new OASXmlProductgroupDataTabulation();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation4 = new OASXmlProductgroupDataTabulation();

        System.assert(xmlProductgroupDataTabulation1.equals(xmlProductgroupDataTabulation2));
        System.assert(xmlProductgroupDataTabulation2.equals(xmlProductgroupDataTabulation1));
        System.assert(xmlProductgroupDataTabulation3.equals(xmlProductgroupDataTabulation4));
        System.assert(xmlProductgroupDataTabulation4.equals(xmlProductgroupDataTabulation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation1 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation2 = new OASXmlProductgroupDataTabulation();

        System.assertEquals(false, xmlProductgroupDataTabulation1.equals('foo'));
        System.assertEquals(false, xmlProductgroupDataTabulation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation1 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation2 = new OASXmlProductgroupDataTabulation();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation3;

        System.assertEquals(false, xmlProductgroupDataTabulation1.equals(xmlProductgroupDataTabulation3));
        System.assertEquals(false, xmlProductgroupDataTabulation2.equals(xmlProductgroupDataTabulation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation1 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation2 = new OASXmlProductgroupDataTabulation();

        System.assertEquals(xmlProductgroupDataTabulation1.hashCode(), xmlProductgroupDataTabulation1.hashCode());
        System.assertEquals(xmlProductgroupDataTabulation2.hashCode(), xmlProductgroupDataTabulation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation1 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation2 = OASXmlProductgroupDataTabulation.getExample();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation3 = new OASXmlProductgroupDataTabulation();
        OASXmlProductgroupDataTabulation xmlProductgroupDataTabulation4 = new OASXmlProductgroupDataTabulation();

        System.assert(xmlProductgroupDataTabulation1.equals(xmlProductgroupDataTabulation2));
        System.assert(xmlProductgroupDataTabulation3.equals(xmlProductgroupDataTabulation4));
        System.assertEquals(xmlProductgroupDataTabulation1.hashCode(), xmlProductgroupDataTabulation2.hashCode());
        System.assertEquals(xmlProductgroupDataTabulation3.hashCode(), xmlProductgroupDataTabulation4.hashCode());
    }
}
