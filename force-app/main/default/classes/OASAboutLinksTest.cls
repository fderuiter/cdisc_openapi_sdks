@isTest
private class OASAboutLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAboutLinks aboutLinks1 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks2 = aboutLinks1;
        OASAboutLinks aboutLinks3 = new OASAboutLinks();
        OASAboutLinks aboutLinks4 = aboutLinks3;

        System.assert(aboutLinks1.equals(aboutLinks2));
        System.assert(aboutLinks2.equals(aboutLinks1));
        System.assert(aboutLinks1.equals(aboutLinks1));
        System.assert(aboutLinks3.equals(aboutLinks4));
        System.assert(aboutLinks4.equals(aboutLinks3));
        System.assert(aboutLinks3.equals(aboutLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAboutLinks aboutLinks1 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks2 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks3 = new OASAboutLinks();
        OASAboutLinks aboutLinks4 = new OASAboutLinks();

        System.assert(aboutLinks1.equals(aboutLinks2));
        System.assert(aboutLinks2.equals(aboutLinks1));
        System.assert(aboutLinks3.equals(aboutLinks4));
        System.assert(aboutLinks4.equals(aboutLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAboutLinks aboutLinks1 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks2 = new OASAboutLinks();

        System.assertEquals(false, aboutLinks1.equals('foo'));
        System.assertEquals(false, aboutLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAboutLinks aboutLinks1 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks2 = new OASAboutLinks();
        OASAboutLinks aboutLinks3;

        System.assertEquals(false, aboutLinks1.equals(aboutLinks3));
        System.assertEquals(false, aboutLinks2.equals(aboutLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAboutLinks aboutLinks1 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks2 = new OASAboutLinks();

        System.assertEquals(aboutLinks1.hashCode(), aboutLinks1.hashCode());
        System.assertEquals(aboutLinks2.hashCode(), aboutLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAboutLinks aboutLinks1 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks2 = OASAboutLinks.getExample();
        OASAboutLinks aboutLinks3 = new OASAboutLinks();
        OASAboutLinks aboutLinks4 = new OASAboutLinks();

        System.assert(aboutLinks1.equals(aboutLinks2));
        System.assert(aboutLinks3.equals(aboutLinks4));
        System.assertEquals(aboutLinks1.hashCode(), aboutLinks2.hashCode());
        System.assertEquals(aboutLinks3.hashCode(), aboutLinks4.hashCode());
    }
}
