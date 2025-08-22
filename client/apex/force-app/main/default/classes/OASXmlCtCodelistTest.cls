@isTest
private class OASXmlCtCodelistTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCtCodelist xmlCtCodelist1 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist2 = xmlCtCodelist1;
        OASXmlCtCodelist xmlCtCodelist3 = new OASXmlCtCodelist();
        OASXmlCtCodelist xmlCtCodelist4 = xmlCtCodelist3;

        System.assert(xmlCtCodelist1.equals(xmlCtCodelist2));
        System.assert(xmlCtCodelist2.equals(xmlCtCodelist1));
        System.assert(xmlCtCodelist1.equals(xmlCtCodelist1));
        System.assert(xmlCtCodelist3.equals(xmlCtCodelist4));
        System.assert(xmlCtCodelist4.equals(xmlCtCodelist3));
        System.assert(xmlCtCodelist3.equals(xmlCtCodelist3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCtCodelist xmlCtCodelist1 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist2 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist3 = new OASXmlCtCodelist();
        OASXmlCtCodelist xmlCtCodelist4 = new OASXmlCtCodelist();

        System.assert(xmlCtCodelist1.equals(xmlCtCodelist2));
        System.assert(xmlCtCodelist2.equals(xmlCtCodelist1));
        System.assert(xmlCtCodelist3.equals(xmlCtCodelist4));
        System.assert(xmlCtCodelist4.equals(xmlCtCodelist3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCtCodelist xmlCtCodelist1 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist2 = new OASXmlCtCodelist();

        System.assertEquals(false, xmlCtCodelist1.equals('foo'));
        System.assertEquals(false, xmlCtCodelist2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCtCodelist xmlCtCodelist1 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist2 = new OASXmlCtCodelist();
        OASXmlCtCodelist xmlCtCodelist3;

        System.assertEquals(false, xmlCtCodelist1.equals(xmlCtCodelist3));
        System.assertEquals(false, xmlCtCodelist2.equals(xmlCtCodelist3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCtCodelist xmlCtCodelist1 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist2 = new OASXmlCtCodelist();

        System.assertEquals(xmlCtCodelist1.hashCode(), xmlCtCodelist1.hashCode());
        System.assertEquals(xmlCtCodelist2.hashCode(), xmlCtCodelist2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCtCodelist xmlCtCodelist1 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist2 = OASXmlCtCodelist.getExample();
        OASXmlCtCodelist xmlCtCodelist3 = new OASXmlCtCodelist();
        OASXmlCtCodelist xmlCtCodelist4 = new OASXmlCtCodelist();

        System.assert(xmlCtCodelist1.equals(xmlCtCodelist2));
        System.assert(xmlCtCodelist3.equals(xmlCtCodelist4));
        System.assertEquals(xmlCtCodelist1.hashCode(), xmlCtCodelist2.hashCode());
        System.assertEquals(xmlCtCodelist3.hashCode(), xmlCtCodelist4.hashCode());
    }
}
