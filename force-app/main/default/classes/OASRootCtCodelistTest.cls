@isTest
private class OASRootCtCodelistTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCtCodelist rootCtCodelist1 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist2 = rootCtCodelist1;
        OASRootCtCodelist rootCtCodelist3 = new OASRootCtCodelist();
        OASRootCtCodelist rootCtCodelist4 = rootCtCodelist3;

        System.assert(rootCtCodelist1.equals(rootCtCodelist2));
        System.assert(rootCtCodelist2.equals(rootCtCodelist1));
        System.assert(rootCtCodelist1.equals(rootCtCodelist1));
        System.assert(rootCtCodelist3.equals(rootCtCodelist4));
        System.assert(rootCtCodelist4.equals(rootCtCodelist3));
        System.assert(rootCtCodelist3.equals(rootCtCodelist3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCtCodelist rootCtCodelist1 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist2 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist3 = new OASRootCtCodelist();
        OASRootCtCodelist rootCtCodelist4 = new OASRootCtCodelist();

        System.assert(rootCtCodelist1.equals(rootCtCodelist2));
        System.assert(rootCtCodelist2.equals(rootCtCodelist1));
        System.assert(rootCtCodelist3.equals(rootCtCodelist4));
        System.assert(rootCtCodelist4.equals(rootCtCodelist3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCtCodelist rootCtCodelist1 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist2 = new OASRootCtCodelist();

        System.assertEquals(false, rootCtCodelist1.equals('foo'));
        System.assertEquals(false, rootCtCodelist2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCtCodelist rootCtCodelist1 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist2 = new OASRootCtCodelist();
        OASRootCtCodelist rootCtCodelist3;

        System.assertEquals(false, rootCtCodelist1.equals(rootCtCodelist3));
        System.assertEquals(false, rootCtCodelist2.equals(rootCtCodelist3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCtCodelist rootCtCodelist1 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist2 = new OASRootCtCodelist();

        System.assertEquals(rootCtCodelist1.hashCode(), rootCtCodelist1.hashCode());
        System.assertEquals(rootCtCodelist2.hashCode(), rootCtCodelist2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCtCodelist rootCtCodelist1 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist2 = OASRootCtCodelist.getExample();
        OASRootCtCodelist rootCtCodelist3 = new OASRootCtCodelist();
        OASRootCtCodelist rootCtCodelist4 = new OASRootCtCodelist();

        System.assert(rootCtCodelist1.equals(rootCtCodelist2));
        System.assert(rootCtCodelist3.equals(rootCtCodelist4));
        System.assertEquals(rootCtCodelist1.hashCode(), rootCtCodelist2.hashCode());
        System.assertEquals(rootCtCodelist3.hashCode(), rootCtCodelist4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootCtCodelist rootCtCodelist = new OASRootCtCodelist();
        Map<String, String> x-property-mappings = rootCtCodelist.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
