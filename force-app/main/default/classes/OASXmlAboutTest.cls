@isTest
private class OASXmlAboutTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAbout xmlAbout1 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout2 = xmlAbout1;
        OASXmlAbout xmlAbout3 = new OASXmlAbout();
        OASXmlAbout xmlAbout4 = xmlAbout3;

        System.assert(xmlAbout1.equals(xmlAbout2));
        System.assert(xmlAbout2.equals(xmlAbout1));
        System.assert(xmlAbout1.equals(xmlAbout1));
        System.assert(xmlAbout3.equals(xmlAbout4));
        System.assert(xmlAbout4.equals(xmlAbout3));
        System.assert(xmlAbout3.equals(xmlAbout3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAbout xmlAbout1 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout2 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout3 = new OASXmlAbout();
        OASXmlAbout xmlAbout4 = new OASXmlAbout();

        System.assert(xmlAbout1.equals(xmlAbout2));
        System.assert(xmlAbout2.equals(xmlAbout1));
        System.assert(xmlAbout3.equals(xmlAbout4));
        System.assert(xmlAbout4.equals(xmlAbout3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAbout xmlAbout1 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout2 = new OASXmlAbout();

        System.assertEquals(false, xmlAbout1.equals('foo'));
        System.assertEquals(false, xmlAbout2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAbout xmlAbout1 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout2 = new OASXmlAbout();
        OASXmlAbout xmlAbout3;

        System.assertEquals(false, xmlAbout1.equals(xmlAbout3));
        System.assertEquals(false, xmlAbout2.equals(xmlAbout3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAbout xmlAbout1 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout2 = new OASXmlAbout();

        System.assertEquals(xmlAbout1.hashCode(), xmlAbout1.hashCode());
        System.assertEquals(xmlAbout2.hashCode(), xmlAbout2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAbout xmlAbout1 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout2 = OASXmlAbout.getExample();
        OASXmlAbout xmlAbout3 = new OASXmlAbout();
        OASXmlAbout xmlAbout4 = new OASXmlAbout();

        System.assert(xmlAbout1.equals(xmlAbout2));
        System.assert(xmlAbout3.equals(xmlAbout4));
        System.assertEquals(xmlAbout1.hashCode(), xmlAbout2.hashCode());
        System.assertEquals(xmlAbout3.hashCode(), xmlAbout4.hashCode());
    }
}
