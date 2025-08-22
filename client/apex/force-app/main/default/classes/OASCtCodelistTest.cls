@isTest
private class OASCtCodelistTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelist ctCodelist1 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist2 = ctCodelist1;
        OASCtCodelist ctCodelist3 = new OASCtCodelist();
        OASCtCodelist ctCodelist4 = ctCodelist3;

        System.assert(ctCodelist1.equals(ctCodelist2));
        System.assert(ctCodelist2.equals(ctCodelist1));
        System.assert(ctCodelist1.equals(ctCodelist1));
        System.assert(ctCodelist3.equals(ctCodelist4));
        System.assert(ctCodelist4.equals(ctCodelist3));
        System.assert(ctCodelist3.equals(ctCodelist3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelist ctCodelist1 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist2 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist3 = new OASCtCodelist();
        OASCtCodelist ctCodelist4 = new OASCtCodelist();

        System.assert(ctCodelist1.equals(ctCodelist2));
        System.assert(ctCodelist2.equals(ctCodelist1));
        System.assert(ctCodelist3.equals(ctCodelist4));
        System.assert(ctCodelist4.equals(ctCodelist3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelist ctCodelist1 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist2 = new OASCtCodelist();

        System.assertEquals(false, ctCodelist1.equals('foo'));
        System.assertEquals(false, ctCodelist2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelist ctCodelist1 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist2 = new OASCtCodelist();
        OASCtCodelist ctCodelist3;

        System.assertEquals(false, ctCodelist1.equals(ctCodelist3));
        System.assertEquals(false, ctCodelist2.equals(ctCodelist3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelist ctCodelist1 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist2 = new OASCtCodelist();

        System.assertEquals(ctCodelist1.hashCode(), ctCodelist1.hashCode());
        System.assertEquals(ctCodelist2.hashCode(), ctCodelist2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelist ctCodelist1 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist2 = OASCtCodelist.getExample();
        OASCtCodelist ctCodelist3 = new OASCtCodelist();
        OASCtCodelist ctCodelist4 = new OASCtCodelist();

        System.assert(ctCodelist1.equals(ctCodelist2));
        System.assert(ctCodelist3.equals(ctCodelist4));
        System.assertEquals(ctCodelist1.hashCode(), ctCodelist2.hashCode());
        System.assertEquals(ctCodelist3.hashCode(), ctCodelist4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCtCodelist ctCodelist = new OASCtCodelist();
        Map<String, String> x-property-mappings = ctCodelist.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtCodelist ctCodelist = new OASCtCodelist();
        System.assertEquals(new List<String>(), ctCodelist.synonyms);
        System.assertEquals(new List<OASCtPackageTerm>(), ctCodelist.terms);
        System.assertEquals(null, ctCodelist.conceptId);
        System.assertEquals(null, ctCodelist.extensible);
        System.assertEquals(null, ctCodelist.name);
        System.assertEquals(null, ctCodelist.submissionValue);
        System.assertEquals(null, ctCodelist.definition);
        System.assertEquals(null, ctCodelist.preferredTerm);
        System.assertEquals(null, ctCodelist.links);
    }
}
