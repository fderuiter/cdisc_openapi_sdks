@isTest
private class OASRootCtTermTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCtTerm rootCtTerm1 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm2 = rootCtTerm1;
        OASRootCtTerm rootCtTerm3 = new OASRootCtTerm();
        OASRootCtTerm rootCtTerm4 = rootCtTerm3;

        System.assert(rootCtTerm1.equals(rootCtTerm2));
        System.assert(rootCtTerm2.equals(rootCtTerm1));
        System.assert(rootCtTerm1.equals(rootCtTerm1));
        System.assert(rootCtTerm3.equals(rootCtTerm4));
        System.assert(rootCtTerm4.equals(rootCtTerm3));
        System.assert(rootCtTerm3.equals(rootCtTerm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCtTerm rootCtTerm1 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm2 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm3 = new OASRootCtTerm();
        OASRootCtTerm rootCtTerm4 = new OASRootCtTerm();

        System.assert(rootCtTerm1.equals(rootCtTerm2));
        System.assert(rootCtTerm2.equals(rootCtTerm1));
        System.assert(rootCtTerm3.equals(rootCtTerm4));
        System.assert(rootCtTerm4.equals(rootCtTerm3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCtTerm rootCtTerm1 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm2 = new OASRootCtTerm();

        System.assertEquals(false, rootCtTerm1.equals('foo'));
        System.assertEquals(false, rootCtTerm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCtTerm rootCtTerm1 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm2 = new OASRootCtTerm();
        OASRootCtTerm rootCtTerm3;

        System.assertEquals(false, rootCtTerm1.equals(rootCtTerm3));
        System.assertEquals(false, rootCtTerm2.equals(rootCtTerm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCtTerm rootCtTerm1 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm2 = new OASRootCtTerm();

        System.assertEquals(rootCtTerm1.hashCode(), rootCtTerm1.hashCode());
        System.assertEquals(rootCtTerm2.hashCode(), rootCtTerm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCtTerm rootCtTerm1 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm2 = OASRootCtTerm.getExample();
        OASRootCtTerm rootCtTerm3 = new OASRootCtTerm();
        OASRootCtTerm rootCtTerm4 = new OASRootCtTerm();

        System.assert(rootCtTerm1.equals(rootCtTerm2));
        System.assert(rootCtTerm3.equals(rootCtTerm4));
        System.assertEquals(rootCtTerm1.hashCode(), rootCtTerm2.hashCode());
        System.assertEquals(rootCtTerm3.hashCode(), rootCtTerm4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootCtTerm rootCtTerm = new OASRootCtTerm();
        Map<String, String> x-property-mappings = rootCtTerm.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
