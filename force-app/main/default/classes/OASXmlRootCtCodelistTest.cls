@isTest
private class OASXmlRootCtCodelistTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootCtCodelist xmlRootCtCodelist1 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist2 = xmlRootCtCodelist1;
        OASXmlRootCtCodelist xmlRootCtCodelist3 = new OASXmlRootCtCodelist();
        OASXmlRootCtCodelist xmlRootCtCodelist4 = xmlRootCtCodelist3;

        System.assert(xmlRootCtCodelist1.equals(xmlRootCtCodelist2));
        System.assert(xmlRootCtCodelist2.equals(xmlRootCtCodelist1));
        System.assert(xmlRootCtCodelist1.equals(xmlRootCtCodelist1));
        System.assert(xmlRootCtCodelist3.equals(xmlRootCtCodelist4));
        System.assert(xmlRootCtCodelist4.equals(xmlRootCtCodelist3));
        System.assert(xmlRootCtCodelist3.equals(xmlRootCtCodelist3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootCtCodelist xmlRootCtCodelist1 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist2 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist3 = new OASXmlRootCtCodelist();
        OASXmlRootCtCodelist xmlRootCtCodelist4 = new OASXmlRootCtCodelist();

        System.assert(xmlRootCtCodelist1.equals(xmlRootCtCodelist2));
        System.assert(xmlRootCtCodelist2.equals(xmlRootCtCodelist1));
        System.assert(xmlRootCtCodelist3.equals(xmlRootCtCodelist4));
        System.assert(xmlRootCtCodelist4.equals(xmlRootCtCodelist3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootCtCodelist xmlRootCtCodelist1 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist2 = new OASXmlRootCtCodelist();

        System.assertEquals(false, xmlRootCtCodelist1.equals('foo'));
        System.assertEquals(false, xmlRootCtCodelist2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootCtCodelist xmlRootCtCodelist1 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist2 = new OASXmlRootCtCodelist();
        OASXmlRootCtCodelist xmlRootCtCodelist3;

        System.assertEquals(false, xmlRootCtCodelist1.equals(xmlRootCtCodelist3));
        System.assertEquals(false, xmlRootCtCodelist2.equals(xmlRootCtCodelist3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootCtCodelist xmlRootCtCodelist1 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist2 = new OASXmlRootCtCodelist();

        System.assertEquals(xmlRootCtCodelist1.hashCode(), xmlRootCtCodelist1.hashCode());
        System.assertEquals(xmlRootCtCodelist2.hashCode(), xmlRootCtCodelist2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootCtCodelist xmlRootCtCodelist1 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist2 = OASXmlRootCtCodelist.getExample();
        OASXmlRootCtCodelist xmlRootCtCodelist3 = new OASXmlRootCtCodelist();
        OASXmlRootCtCodelist xmlRootCtCodelist4 = new OASXmlRootCtCodelist();

        System.assert(xmlRootCtCodelist1.equals(xmlRootCtCodelist2));
        System.assert(xmlRootCtCodelist3.equals(xmlRootCtCodelist4));
        System.assertEquals(xmlRootCtCodelist1.hashCode(), xmlRootCtCodelist2.hashCode());
        System.assertEquals(xmlRootCtCodelist3.hashCode(), xmlRootCtCodelist4.hashCode());
    }
}
