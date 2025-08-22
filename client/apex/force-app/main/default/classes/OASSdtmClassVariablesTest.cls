@isTest
private class OASSdtmClassVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariables sdtmClassVariables1 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables2 = sdtmClassVariables1;
        OASSdtmClassVariables sdtmClassVariables3 = new OASSdtmClassVariables();
        OASSdtmClassVariables sdtmClassVariables4 = sdtmClassVariables3;

        System.assert(sdtmClassVariables1.equals(sdtmClassVariables2));
        System.assert(sdtmClassVariables2.equals(sdtmClassVariables1));
        System.assert(sdtmClassVariables1.equals(sdtmClassVariables1));
        System.assert(sdtmClassVariables3.equals(sdtmClassVariables4));
        System.assert(sdtmClassVariables4.equals(sdtmClassVariables3));
        System.assert(sdtmClassVariables3.equals(sdtmClassVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariables sdtmClassVariables1 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables2 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables3 = new OASSdtmClassVariables();
        OASSdtmClassVariables sdtmClassVariables4 = new OASSdtmClassVariables();

        System.assert(sdtmClassVariables1.equals(sdtmClassVariables2));
        System.assert(sdtmClassVariables2.equals(sdtmClassVariables1));
        System.assert(sdtmClassVariables3.equals(sdtmClassVariables4));
        System.assert(sdtmClassVariables4.equals(sdtmClassVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariables sdtmClassVariables1 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables2 = new OASSdtmClassVariables();

        System.assertEquals(false, sdtmClassVariables1.equals('foo'));
        System.assertEquals(false, sdtmClassVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariables sdtmClassVariables1 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables2 = new OASSdtmClassVariables();
        OASSdtmClassVariables sdtmClassVariables3;

        System.assertEquals(false, sdtmClassVariables1.equals(sdtmClassVariables3));
        System.assertEquals(false, sdtmClassVariables2.equals(sdtmClassVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariables sdtmClassVariables1 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables2 = new OASSdtmClassVariables();

        System.assertEquals(sdtmClassVariables1.hashCode(), sdtmClassVariables1.hashCode());
        System.assertEquals(sdtmClassVariables2.hashCode(), sdtmClassVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariables sdtmClassVariables1 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables2 = OASSdtmClassVariables.getExample();
        OASSdtmClassVariables sdtmClassVariables3 = new OASSdtmClassVariables();
        OASSdtmClassVariables sdtmClassVariables4 = new OASSdtmClassVariables();

        System.assert(sdtmClassVariables1.equals(sdtmClassVariables2));
        System.assert(sdtmClassVariables3.equals(sdtmClassVariables4));
        System.assertEquals(sdtmClassVariables1.hashCode(), sdtmClassVariables2.hashCode());
        System.assertEquals(sdtmClassVariables3.hashCode(), sdtmClassVariables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmClassVariables sdtmClassVariables = new OASSdtmClassVariables();
        Map<String, String> x-property-mappings = sdtmClassVariables.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
