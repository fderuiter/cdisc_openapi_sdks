@isTest
private class OASCtPackageTermTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackageTerm ctPackageTerm1 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm2 = ctPackageTerm1;
        OASCtPackageTerm ctPackageTerm3 = new OASCtPackageTerm();
        OASCtPackageTerm ctPackageTerm4 = ctPackageTerm3;

        System.assert(ctPackageTerm1.equals(ctPackageTerm2));
        System.assert(ctPackageTerm2.equals(ctPackageTerm1));
        System.assert(ctPackageTerm1.equals(ctPackageTerm1));
        System.assert(ctPackageTerm3.equals(ctPackageTerm4));
        System.assert(ctPackageTerm4.equals(ctPackageTerm3));
        System.assert(ctPackageTerm3.equals(ctPackageTerm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackageTerm ctPackageTerm1 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm2 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm3 = new OASCtPackageTerm();
        OASCtPackageTerm ctPackageTerm4 = new OASCtPackageTerm();

        System.assert(ctPackageTerm1.equals(ctPackageTerm2));
        System.assert(ctPackageTerm2.equals(ctPackageTerm1));
        System.assert(ctPackageTerm3.equals(ctPackageTerm4));
        System.assert(ctPackageTerm4.equals(ctPackageTerm3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackageTerm ctPackageTerm1 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm2 = new OASCtPackageTerm();

        System.assertEquals(false, ctPackageTerm1.equals('foo'));
        System.assertEquals(false, ctPackageTerm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackageTerm ctPackageTerm1 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm2 = new OASCtPackageTerm();
        OASCtPackageTerm ctPackageTerm3;

        System.assertEquals(false, ctPackageTerm1.equals(ctPackageTerm3));
        System.assertEquals(false, ctPackageTerm2.equals(ctPackageTerm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackageTerm ctPackageTerm1 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm2 = new OASCtPackageTerm();

        System.assertEquals(ctPackageTerm1.hashCode(), ctPackageTerm1.hashCode());
        System.assertEquals(ctPackageTerm2.hashCode(), ctPackageTerm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackageTerm ctPackageTerm1 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm2 = OASCtPackageTerm.getExample();
        OASCtPackageTerm ctPackageTerm3 = new OASCtPackageTerm();
        OASCtPackageTerm ctPackageTerm4 = new OASCtPackageTerm();

        System.assert(ctPackageTerm1.equals(ctPackageTerm2));
        System.assert(ctPackageTerm3.equals(ctPackageTerm4));
        System.assertEquals(ctPackageTerm1.hashCode(), ctPackageTerm2.hashCode());
        System.assertEquals(ctPackageTerm3.hashCode(), ctPackageTerm4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtPackageTerm ctPackageTerm = new OASCtPackageTerm();
        System.assertEquals(new List<String>(), ctPackageTerm.synonyms);
        System.assertEquals(null, ctPackageTerm.conceptId);
        System.assertEquals(null, ctPackageTerm.submissionValue);
        System.assertEquals(null, ctPackageTerm.definition);
        System.assertEquals(null, ctPackageTerm.preferredTerm);
    }
}
