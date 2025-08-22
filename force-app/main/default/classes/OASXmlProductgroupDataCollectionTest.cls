@isTest
private class OASXmlProductgroupDataCollectionTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection1 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection2 = xmlProductgroupDataCollection1;
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection3 = new OASXmlProductgroupDataCollection();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection4 = xmlProductgroupDataCollection3;

        System.assert(xmlProductgroupDataCollection1.equals(xmlProductgroupDataCollection2));
        System.assert(xmlProductgroupDataCollection2.equals(xmlProductgroupDataCollection1));
        System.assert(xmlProductgroupDataCollection1.equals(xmlProductgroupDataCollection1));
        System.assert(xmlProductgroupDataCollection3.equals(xmlProductgroupDataCollection4));
        System.assert(xmlProductgroupDataCollection4.equals(xmlProductgroupDataCollection3));
        System.assert(xmlProductgroupDataCollection3.equals(xmlProductgroupDataCollection3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection1 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection2 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection3 = new OASXmlProductgroupDataCollection();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection4 = new OASXmlProductgroupDataCollection();

        System.assert(xmlProductgroupDataCollection1.equals(xmlProductgroupDataCollection2));
        System.assert(xmlProductgroupDataCollection2.equals(xmlProductgroupDataCollection1));
        System.assert(xmlProductgroupDataCollection3.equals(xmlProductgroupDataCollection4));
        System.assert(xmlProductgroupDataCollection4.equals(xmlProductgroupDataCollection3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection1 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection2 = new OASXmlProductgroupDataCollection();

        System.assertEquals(false, xmlProductgroupDataCollection1.equals('foo'));
        System.assertEquals(false, xmlProductgroupDataCollection2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection1 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection2 = new OASXmlProductgroupDataCollection();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection3;

        System.assertEquals(false, xmlProductgroupDataCollection1.equals(xmlProductgroupDataCollection3));
        System.assertEquals(false, xmlProductgroupDataCollection2.equals(xmlProductgroupDataCollection3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection1 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection2 = new OASXmlProductgroupDataCollection();

        System.assertEquals(xmlProductgroupDataCollection1.hashCode(), xmlProductgroupDataCollection1.hashCode());
        System.assertEquals(xmlProductgroupDataCollection2.hashCode(), xmlProductgroupDataCollection2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection1 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection2 = OASXmlProductgroupDataCollection.getExample();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection3 = new OASXmlProductgroupDataCollection();
        OASXmlProductgroupDataCollection xmlProductgroupDataCollection4 = new OASXmlProductgroupDataCollection();

        System.assert(xmlProductgroupDataCollection1.equals(xmlProductgroupDataCollection2));
        System.assert(xmlProductgroupDataCollection3.equals(xmlProductgroupDataCollection4));
        System.assertEquals(xmlProductgroupDataCollection1.hashCode(), xmlProductgroupDataCollection2.hashCode());
        System.assertEquals(xmlProductgroupDataCollection3.hashCode(), xmlProductgroupDataCollection4.hashCode());
    }
}
