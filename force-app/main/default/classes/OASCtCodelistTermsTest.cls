@isTest
private class OASCtCodelistTermsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelistTerms ctCodelistTerms1 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms2 = ctCodelistTerms1;
        OASCtCodelistTerms ctCodelistTerms3 = new OASCtCodelistTerms();
        OASCtCodelistTerms ctCodelistTerms4 = ctCodelistTerms3;

        System.assert(ctCodelistTerms1.equals(ctCodelistTerms2));
        System.assert(ctCodelistTerms2.equals(ctCodelistTerms1));
        System.assert(ctCodelistTerms1.equals(ctCodelistTerms1));
        System.assert(ctCodelistTerms3.equals(ctCodelistTerms4));
        System.assert(ctCodelistTerms4.equals(ctCodelistTerms3));
        System.assert(ctCodelistTerms3.equals(ctCodelistTerms3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelistTerms ctCodelistTerms1 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms2 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms3 = new OASCtCodelistTerms();
        OASCtCodelistTerms ctCodelistTerms4 = new OASCtCodelistTerms();

        System.assert(ctCodelistTerms1.equals(ctCodelistTerms2));
        System.assert(ctCodelistTerms2.equals(ctCodelistTerms1));
        System.assert(ctCodelistTerms3.equals(ctCodelistTerms4));
        System.assert(ctCodelistTerms4.equals(ctCodelistTerms3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelistTerms ctCodelistTerms1 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms2 = new OASCtCodelistTerms();

        System.assertEquals(false, ctCodelistTerms1.equals('foo'));
        System.assertEquals(false, ctCodelistTerms2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelistTerms ctCodelistTerms1 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms2 = new OASCtCodelistTerms();
        OASCtCodelistTerms ctCodelistTerms3;

        System.assertEquals(false, ctCodelistTerms1.equals(ctCodelistTerms3));
        System.assertEquals(false, ctCodelistTerms2.equals(ctCodelistTerms3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelistTerms ctCodelistTerms1 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms2 = new OASCtCodelistTerms();

        System.assertEquals(ctCodelistTerms1.hashCode(), ctCodelistTerms1.hashCode());
        System.assertEquals(ctCodelistTerms2.hashCode(), ctCodelistTerms2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelistTerms ctCodelistTerms1 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms2 = OASCtCodelistTerms.getExample();
        OASCtCodelistTerms ctCodelistTerms3 = new OASCtCodelistTerms();
        OASCtCodelistTerms ctCodelistTerms4 = new OASCtCodelistTerms();

        System.assert(ctCodelistTerms1.equals(ctCodelistTerms2));
        System.assert(ctCodelistTerms3.equals(ctCodelistTerms4));
        System.assertEquals(ctCodelistTerms1.hashCode(), ctCodelistTerms2.hashCode());
        System.assertEquals(ctCodelistTerms3.hashCode(), ctCodelistTerms4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCtCodelistTerms ctCodelistTerms = new OASCtCodelistTerms();
        Map<String, String> x-property-mappings = ctCodelistTerms.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtCodelistTerms ctCodelistTerms = new OASCtCodelistTerms();
        System.assertEquals(new List<String>(), ctCodelistTerms.synonyms);
        System.assertEquals(null, ctCodelistTerms.conceptId);
        System.assertEquals(null, ctCodelistTerms.extensible);
        System.assertEquals(null, ctCodelistTerms.name);
        System.assertEquals(null, ctCodelistTerms.submissionValue);
        System.assertEquals(null, ctCodelistTerms.definition);
        System.assertEquals(null, ctCodelistTerms.preferredTerm);
        System.assertEquals(null, ctCodelistTerms.links);
    }
}
