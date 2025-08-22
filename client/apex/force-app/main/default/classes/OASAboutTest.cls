@isTest
private class OASAboutTest {
    @isTest
    private static void equalsSameInstance() {
        OASAbout about1 = OASAbout.getExample();
        OASAbout about2 = about1;
        OASAbout about3 = new OASAbout();
        OASAbout about4 = about3;

        System.assert(about1.equals(about2));
        System.assert(about2.equals(about1));
        System.assert(about1.equals(about1));
        System.assert(about3.equals(about4));
        System.assert(about4.equals(about3));
        System.assert(about3.equals(about3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAbout about1 = OASAbout.getExample();
        OASAbout about2 = OASAbout.getExample();
        OASAbout about3 = new OASAbout();
        OASAbout about4 = new OASAbout();

        System.assert(about1.equals(about2));
        System.assert(about2.equals(about1));
        System.assert(about3.equals(about4));
        System.assert(about4.equals(about3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAbout about1 = OASAbout.getExample();
        OASAbout about2 = new OASAbout();

        System.assertEquals(false, about1.equals('foo'));
        System.assertEquals(false, about2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAbout about1 = OASAbout.getExample();
        OASAbout about2 = new OASAbout();
        OASAbout about3;

        System.assertEquals(false, about1.equals(about3));
        System.assertEquals(false, about2.equals(about3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAbout about1 = OASAbout.getExample();
        OASAbout about2 = new OASAbout();

        System.assertEquals(about1.hashCode(), about1.hashCode());
        System.assertEquals(about2.hashCode(), about2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAbout about1 = OASAbout.getExample();
        OASAbout about2 = OASAbout.getExample();
        OASAbout about3 = new OASAbout();
        OASAbout about4 = new OASAbout();

        System.assert(about1.equals(about2));
        System.assert(about3.equals(about4));
        System.assertEquals(about1.hashCode(), about2.hashCode());
        System.assertEquals(about3.hashCode(), about4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAbout about = new OASAbout();
        Map<String, String> x-property-mappings = about.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
        System.assertEquals('releaseNotes', x-property-mappings.get('release-notes'));
        System.assertEquals('apiDocumentation', x-property-mappings.get('api-documentation'));
    }
}
