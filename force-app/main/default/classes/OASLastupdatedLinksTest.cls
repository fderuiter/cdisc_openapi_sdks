@isTest
private class OASLastupdatedLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASLastupdatedLinks lastupdatedLinks1 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks2 = lastupdatedLinks1;
        OASLastupdatedLinks lastupdatedLinks3 = new OASLastupdatedLinks();
        OASLastupdatedLinks lastupdatedLinks4 = lastupdatedLinks3;

        System.assert(lastupdatedLinks1.equals(lastupdatedLinks2));
        System.assert(lastupdatedLinks2.equals(lastupdatedLinks1));
        System.assert(lastupdatedLinks1.equals(lastupdatedLinks1));
        System.assert(lastupdatedLinks3.equals(lastupdatedLinks4));
        System.assert(lastupdatedLinks4.equals(lastupdatedLinks3));
        System.assert(lastupdatedLinks3.equals(lastupdatedLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLastupdatedLinks lastupdatedLinks1 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks2 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks3 = new OASLastupdatedLinks();
        OASLastupdatedLinks lastupdatedLinks4 = new OASLastupdatedLinks();

        System.assert(lastupdatedLinks1.equals(lastupdatedLinks2));
        System.assert(lastupdatedLinks2.equals(lastupdatedLinks1));
        System.assert(lastupdatedLinks3.equals(lastupdatedLinks4));
        System.assert(lastupdatedLinks4.equals(lastupdatedLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLastupdatedLinks lastupdatedLinks1 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks2 = new OASLastupdatedLinks();

        System.assertEquals(false, lastupdatedLinks1.equals('foo'));
        System.assertEquals(false, lastupdatedLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLastupdatedLinks lastupdatedLinks1 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks2 = new OASLastupdatedLinks();
        OASLastupdatedLinks lastupdatedLinks3;

        System.assertEquals(false, lastupdatedLinks1.equals(lastupdatedLinks3));
        System.assertEquals(false, lastupdatedLinks2.equals(lastupdatedLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLastupdatedLinks lastupdatedLinks1 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks2 = new OASLastupdatedLinks();

        System.assertEquals(lastupdatedLinks1.hashCode(), lastupdatedLinks1.hashCode());
        System.assertEquals(lastupdatedLinks2.hashCode(), lastupdatedLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLastupdatedLinks lastupdatedLinks1 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks2 = OASLastupdatedLinks.getExample();
        OASLastupdatedLinks lastupdatedLinks3 = new OASLastupdatedLinks();
        OASLastupdatedLinks lastupdatedLinks4 = new OASLastupdatedLinks();

        System.assert(lastupdatedLinks1.equals(lastupdatedLinks2));
        System.assert(lastupdatedLinks3.equals(lastupdatedLinks4));
        System.assertEquals(lastupdatedLinks1.hashCode(), lastupdatedLinks2.hashCode());
        System.assertEquals(lastupdatedLinks3.hashCode(), lastupdatedLinks4.hashCode());
    }
}
