@isTest
private class OASScopeValuesTest {
    @isTest
    private static void equalsSameInstance() {
        OASScopeValues scopeValues1 = OASScopeValues.getExample();
        OASScopeValues scopeValues2 = scopeValues1;
        OASScopeValues scopeValues3 = new OASScopeValues();
        OASScopeValues scopeValues4 = scopeValues3;

        System.assert(scopeValues1.equals(scopeValues2));
        System.assert(scopeValues2.equals(scopeValues1));
        System.assert(scopeValues1.equals(scopeValues1));
        System.assert(scopeValues3.equals(scopeValues4));
        System.assert(scopeValues4.equals(scopeValues3));
        System.assert(scopeValues3.equals(scopeValues3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScopeValues scopeValues1 = OASScopeValues.getExample();
        OASScopeValues scopeValues2 = OASScopeValues.getExample();
        OASScopeValues scopeValues3 = new OASScopeValues();
        OASScopeValues scopeValues4 = new OASScopeValues();

        System.assert(scopeValues1.equals(scopeValues2));
        System.assert(scopeValues2.equals(scopeValues1));
        System.assert(scopeValues3.equals(scopeValues4));
        System.assert(scopeValues4.equals(scopeValues3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScopeValues scopeValues1 = OASScopeValues.getExample();
        OASScopeValues scopeValues2 = new OASScopeValues();

        System.assertEquals(false, scopeValues1.equals('foo'));
        System.assertEquals(false, scopeValues2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScopeValues scopeValues1 = OASScopeValues.getExample();
        OASScopeValues scopeValues2 = new OASScopeValues();
        OASScopeValues scopeValues3;

        System.assertEquals(false, scopeValues1.equals(scopeValues3));
        System.assertEquals(false, scopeValues2.equals(scopeValues3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScopeValues scopeValues1 = OASScopeValues.getExample();
        OASScopeValues scopeValues2 = new OASScopeValues();

        System.assertEquals(scopeValues1.hashCode(), scopeValues1.hashCode());
        System.assertEquals(scopeValues2.hashCode(), scopeValues2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScopeValues scopeValues1 = OASScopeValues.getExample();
        OASScopeValues scopeValues2 = OASScopeValues.getExample();
        OASScopeValues scopeValues3 = new OASScopeValues();
        OASScopeValues scopeValues4 = new OASScopeValues();

        System.assert(scopeValues1.equals(scopeValues2));
        System.assert(scopeValues3.equals(scopeValues4));
        System.assertEquals(scopeValues1.hashCode(), scopeValues2.hashCode());
        System.assertEquals(scopeValues3.hashCode(), scopeValues4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASScopeValues scopeValues = new OASScopeValues();
        System.assertEquals(new List<String>(), scopeValues.values);
        System.assertEquals(null, scopeValues.total);
        System.assertEquals(null, scopeValues.hasMore);
    }
}
