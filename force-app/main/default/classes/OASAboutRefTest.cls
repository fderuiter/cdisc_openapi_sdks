@isTest
private class OASAboutRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASAboutRef aboutRef1 = OASAboutRef.getExample();
        OASAboutRef aboutRef2 = aboutRef1;
        OASAboutRef aboutRef3 = new OASAboutRef();
        OASAboutRef aboutRef4 = aboutRef3;

        System.assert(aboutRef1.equals(aboutRef2));
        System.assert(aboutRef2.equals(aboutRef1));
        System.assert(aboutRef1.equals(aboutRef1));
        System.assert(aboutRef3.equals(aboutRef4));
        System.assert(aboutRef4.equals(aboutRef3));
        System.assert(aboutRef3.equals(aboutRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAboutRef aboutRef1 = OASAboutRef.getExample();
        OASAboutRef aboutRef2 = OASAboutRef.getExample();
        OASAboutRef aboutRef3 = new OASAboutRef();
        OASAboutRef aboutRef4 = new OASAboutRef();

        System.assert(aboutRef1.equals(aboutRef2));
        System.assert(aboutRef2.equals(aboutRef1));
        System.assert(aboutRef3.equals(aboutRef4));
        System.assert(aboutRef4.equals(aboutRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAboutRef aboutRef1 = OASAboutRef.getExample();
        OASAboutRef aboutRef2 = new OASAboutRef();

        System.assertEquals(false, aboutRef1.equals('foo'));
        System.assertEquals(false, aboutRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAboutRef aboutRef1 = OASAboutRef.getExample();
        OASAboutRef aboutRef2 = new OASAboutRef();
        OASAboutRef aboutRef3;

        System.assertEquals(false, aboutRef1.equals(aboutRef3));
        System.assertEquals(false, aboutRef2.equals(aboutRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAboutRef aboutRef1 = OASAboutRef.getExample();
        OASAboutRef aboutRef2 = new OASAboutRef();

        System.assertEquals(aboutRef1.hashCode(), aboutRef1.hashCode());
        System.assertEquals(aboutRef2.hashCode(), aboutRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAboutRef aboutRef1 = OASAboutRef.getExample();
        OASAboutRef aboutRef2 = OASAboutRef.getExample();
        OASAboutRef aboutRef3 = new OASAboutRef();
        OASAboutRef aboutRef4 = new OASAboutRef();

        System.assert(aboutRef1.equals(aboutRef2));
        System.assert(aboutRef3.equals(aboutRef4));
        System.assertEquals(aboutRef1.hashCode(), aboutRef2.hashCode());
        System.assertEquals(aboutRef3.hashCode(), aboutRef4.hashCode());
    }
}
