@isTest
private class OASSdtmigDatasetVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariables sdtmigDatasetVariables1 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables2 = sdtmigDatasetVariables1;
        OASSdtmigDatasetVariables sdtmigDatasetVariables3 = new OASSdtmigDatasetVariables();
        OASSdtmigDatasetVariables sdtmigDatasetVariables4 = sdtmigDatasetVariables3;

        System.assert(sdtmigDatasetVariables1.equals(sdtmigDatasetVariables2));
        System.assert(sdtmigDatasetVariables2.equals(sdtmigDatasetVariables1));
        System.assert(sdtmigDatasetVariables1.equals(sdtmigDatasetVariables1));
        System.assert(sdtmigDatasetVariables3.equals(sdtmigDatasetVariables4));
        System.assert(sdtmigDatasetVariables4.equals(sdtmigDatasetVariables3));
        System.assert(sdtmigDatasetVariables3.equals(sdtmigDatasetVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariables sdtmigDatasetVariables1 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables2 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables3 = new OASSdtmigDatasetVariables();
        OASSdtmigDatasetVariables sdtmigDatasetVariables4 = new OASSdtmigDatasetVariables();

        System.assert(sdtmigDatasetVariables1.equals(sdtmigDatasetVariables2));
        System.assert(sdtmigDatasetVariables2.equals(sdtmigDatasetVariables1));
        System.assert(sdtmigDatasetVariables3.equals(sdtmigDatasetVariables4));
        System.assert(sdtmigDatasetVariables4.equals(sdtmigDatasetVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariables sdtmigDatasetVariables1 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables2 = new OASSdtmigDatasetVariables();

        System.assertEquals(false, sdtmigDatasetVariables1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariables sdtmigDatasetVariables1 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables2 = new OASSdtmigDatasetVariables();
        OASSdtmigDatasetVariables sdtmigDatasetVariables3;

        System.assertEquals(false, sdtmigDatasetVariables1.equals(sdtmigDatasetVariables3));
        System.assertEquals(false, sdtmigDatasetVariables2.equals(sdtmigDatasetVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariables sdtmigDatasetVariables1 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables2 = new OASSdtmigDatasetVariables();

        System.assertEquals(sdtmigDatasetVariables1.hashCode(), sdtmigDatasetVariables1.hashCode());
        System.assertEquals(sdtmigDatasetVariables2.hashCode(), sdtmigDatasetVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariables sdtmigDatasetVariables1 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables2 = OASSdtmigDatasetVariables.getExample();
        OASSdtmigDatasetVariables sdtmigDatasetVariables3 = new OASSdtmigDatasetVariables();
        OASSdtmigDatasetVariables sdtmigDatasetVariables4 = new OASSdtmigDatasetVariables();

        System.assert(sdtmigDatasetVariables1.equals(sdtmigDatasetVariables2));
        System.assert(sdtmigDatasetVariables3.equals(sdtmigDatasetVariables4));
        System.assertEquals(sdtmigDatasetVariables1.hashCode(), sdtmigDatasetVariables2.hashCode());
        System.assertEquals(sdtmigDatasetVariables3.hashCode(), sdtmigDatasetVariables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigDatasetVariables sdtmigDatasetVariables = new OASSdtmigDatasetVariables();
        Map<String, String> x-property-mappings = sdtmigDatasetVariables.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
