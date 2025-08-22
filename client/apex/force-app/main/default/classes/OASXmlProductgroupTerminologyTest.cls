@isTest
private class OASXmlProductgroupTerminologyTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlProductgroupTerminology xmlProductgroupTerminology1 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology2 = xmlProductgroupTerminology1;
        OASXmlProductgroupTerminology xmlProductgroupTerminology3 = new OASXmlProductgroupTerminology();
        OASXmlProductgroupTerminology xmlProductgroupTerminology4 = xmlProductgroupTerminology3;

        System.assert(xmlProductgroupTerminology1.equals(xmlProductgroupTerminology2));
        System.assert(xmlProductgroupTerminology2.equals(xmlProductgroupTerminology1));
        System.assert(xmlProductgroupTerminology1.equals(xmlProductgroupTerminology1));
        System.assert(xmlProductgroupTerminology3.equals(xmlProductgroupTerminology4));
        System.assert(xmlProductgroupTerminology4.equals(xmlProductgroupTerminology3));
        System.assert(xmlProductgroupTerminology3.equals(xmlProductgroupTerminology3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlProductgroupTerminology xmlProductgroupTerminology1 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology2 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology3 = new OASXmlProductgroupTerminology();
        OASXmlProductgroupTerminology xmlProductgroupTerminology4 = new OASXmlProductgroupTerminology();

        System.assert(xmlProductgroupTerminology1.equals(xmlProductgroupTerminology2));
        System.assert(xmlProductgroupTerminology2.equals(xmlProductgroupTerminology1));
        System.assert(xmlProductgroupTerminology3.equals(xmlProductgroupTerminology4));
        System.assert(xmlProductgroupTerminology4.equals(xmlProductgroupTerminology3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlProductgroupTerminology xmlProductgroupTerminology1 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology2 = new OASXmlProductgroupTerminology();

        System.assertEquals(false, xmlProductgroupTerminology1.equals('foo'));
        System.assertEquals(false, xmlProductgroupTerminology2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlProductgroupTerminology xmlProductgroupTerminology1 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology2 = new OASXmlProductgroupTerminology();
        OASXmlProductgroupTerminology xmlProductgroupTerminology3;

        System.assertEquals(false, xmlProductgroupTerminology1.equals(xmlProductgroupTerminology3));
        System.assertEquals(false, xmlProductgroupTerminology2.equals(xmlProductgroupTerminology3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlProductgroupTerminology xmlProductgroupTerminology1 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology2 = new OASXmlProductgroupTerminology();

        System.assertEquals(xmlProductgroupTerminology1.hashCode(), xmlProductgroupTerminology1.hashCode());
        System.assertEquals(xmlProductgroupTerminology2.hashCode(), xmlProductgroupTerminology2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlProductgroupTerminology xmlProductgroupTerminology1 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology2 = OASXmlProductgroupTerminology.getExample();
        OASXmlProductgroupTerminology xmlProductgroupTerminology3 = new OASXmlProductgroupTerminology();
        OASXmlProductgroupTerminology xmlProductgroupTerminology4 = new OASXmlProductgroupTerminology();

        System.assert(xmlProductgroupTerminology1.equals(xmlProductgroupTerminology2));
        System.assert(xmlProductgroupTerminology3.equals(xmlProductgroupTerminology4));
        System.assertEquals(xmlProductgroupTerminology1.hashCode(), xmlProductgroupTerminology2.hashCode());
        System.assertEquals(xmlProductgroupTerminology3.hashCode(), xmlProductgroupTerminology4.hashCode());
    }
}
