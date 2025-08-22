@isTest
private class OASSendigClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClass sendigClass1 = OASSendigClass.getExample();
        OASSendigClass sendigClass2 = sendigClass1;
        OASSendigClass sendigClass3 = new OASSendigClass();
        OASSendigClass sendigClass4 = sendigClass3;

        System.assert(sendigClass1.equals(sendigClass2));
        System.assert(sendigClass2.equals(sendigClass1));
        System.assert(sendigClass1.equals(sendigClass1));
        System.assert(sendigClass3.equals(sendigClass4));
        System.assert(sendigClass4.equals(sendigClass3));
        System.assert(sendigClass3.equals(sendigClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClass sendigClass1 = OASSendigClass.getExample();
        OASSendigClass sendigClass2 = OASSendigClass.getExample();
        OASSendigClass sendigClass3 = new OASSendigClass();
        OASSendigClass sendigClass4 = new OASSendigClass();

        System.assert(sendigClass1.equals(sendigClass2));
        System.assert(sendigClass2.equals(sendigClass1));
        System.assert(sendigClass3.equals(sendigClass4));
        System.assert(sendigClass4.equals(sendigClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClass sendigClass1 = OASSendigClass.getExample();
        OASSendigClass sendigClass2 = new OASSendigClass();

        System.assertEquals(false, sendigClass1.equals('foo'));
        System.assertEquals(false, sendigClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClass sendigClass1 = OASSendigClass.getExample();
        OASSendigClass sendigClass2 = new OASSendigClass();
        OASSendigClass sendigClass3;

        System.assertEquals(false, sendigClass1.equals(sendigClass3));
        System.assertEquals(false, sendigClass2.equals(sendigClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClass sendigClass1 = OASSendigClass.getExample();
        OASSendigClass sendigClass2 = new OASSendigClass();

        System.assertEquals(sendigClass1.hashCode(), sendigClass1.hashCode());
        System.assertEquals(sendigClass2.hashCode(), sendigClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClass sendigClass1 = OASSendigClass.getExample();
        OASSendigClass sendigClass2 = OASSendigClass.getExample();
        OASSendigClass sendigClass3 = new OASSendigClass();
        OASSendigClass sendigClass4 = new OASSendigClass();

        System.assert(sendigClass1.equals(sendigClass2));
        System.assert(sendigClass3.equals(sendigClass4));
        System.assertEquals(sendigClass1.hashCode(), sendigClass2.hashCode());
        System.assertEquals(sendigClass3.hashCode(), sendigClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigClass sendigClass = new OASSendigClass();
        Map<String, String> x-property-mappings = sendigClass.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigClass sendigClass = new OASSendigClass();
        System.assertEquals(new List<OASSendigDataset>(), sendigClass.datasets);
        System.assertEquals(null, sendigClass.ordinal);
        System.assertEquals(null, sendigClass.name);
        System.assertEquals(null, sendigClass.label);
        System.assertEquals(null, sendigClass.description);
        System.assertEquals(null, sendigClass.links);
    }
}
