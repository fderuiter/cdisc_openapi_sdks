@isTest
private class OASCtTermTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtTerm ctTerm1 = OASCtTerm.getExample();
        OASCtTerm ctTerm2 = ctTerm1;
        OASCtTerm ctTerm3 = new OASCtTerm();
        OASCtTerm ctTerm4 = ctTerm3;

        System.assert(ctTerm1.equals(ctTerm2));
        System.assert(ctTerm2.equals(ctTerm1));
        System.assert(ctTerm1.equals(ctTerm1));
        System.assert(ctTerm3.equals(ctTerm4));
        System.assert(ctTerm4.equals(ctTerm3));
        System.assert(ctTerm3.equals(ctTerm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtTerm ctTerm1 = OASCtTerm.getExample();
        OASCtTerm ctTerm2 = OASCtTerm.getExample();
        OASCtTerm ctTerm3 = new OASCtTerm();
        OASCtTerm ctTerm4 = new OASCtTerm();

        System.assert(ctTerm1.equals(ctTerm2));
        System.assert(ctTerm2.equals(ctTerm1));
        System.assert(ctTerm3.equals(ctTerm4));
        System.assert(ctTerm4.equals(ctTerm3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtTerm ctTerm1 = OASCtTerm.getExample();
        OASCtTerm ctTerm2 = new OASCtTerm();

        System.assertEquals(false, ctTerm1.equals('foo'));
        System.assertEquals(false, ctTerm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtTerm ctTerm1 = OASCtTerm.getExample();
        OASCtTerm ctTerm2 = new OASCtTerm();
        OASCtTerm ctTerm3;

        System.assertEquals(false, ctTerm1.equals(ctTerm3));
        System.assertEquals(false, ctTerm2.equals(ctTerm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtTerm ctTerm1 = OASCtTerm.getExample();
        OASCtTerm ctTerm2 = new OASCtTerm();

        System.assertEquals(ctTerm1.hashCode(), ctTerm1.hashCode());
        System.assertEquals(ctTerm2.hashCode(), ctTerm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtTerm ctTerm1 = OASCtTerm.getExample();
        OASCtTerm ctTerm2 = OASCtTerm.getExample();
        OASCtTerm ctTerm3 = new OASCtTerm();
        OASCtTerm ctTerm4 = new OASCtTerm();

        System.assert(ctTerm1.equals(ctTerm2));
        System.assert(ctTerm3.equals(ctTerm4));
        System.assertEquals(ctTerm1.hashCode(), ctTerm2.hashCode());
        System.assertEquals(ctTerm3.hashCode(), ctTerm4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCtTerm ctTerm = new OASCtTerm();
        Map<String, String> x-property-mappings = ctTerm.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtTerm ctTerm = new OASCtTerm();
        System.assertEquals(new List<String>(), ctTerm.synonyms);
        System.assertEquals(null, ctTerm.conceptId);
        System.assertEquals(null, ctTerm.submissionValue);
        System.assertEquals(null, ctTerm.definition);
        System.assertEquals(null, ctTerm.preferredTerm);
        System.assertEquals(null, ctTerm.links);
    }
}
