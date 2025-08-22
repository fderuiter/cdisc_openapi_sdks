@isTest
private class OASSendigProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigProduct sendigProduct1 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct2 = sendigProduct1;
        OASSendigProduct sendigProduct3 = new OASSendigProduct();
        OASSendigProduct sendigProduct4 = sendigProduct3;

        System.assert(sendigProduct1.equals(sendigProduct2));
        System.assert(sendigProduct2.equals(sendigProduct1));
        System.assert(sendigProduct1.equals(sendigProduct1));
        System.assert(sendigProduct3.equals(sendigProduct4));
        System.assert(sendigProduct4.equals(sendigProduct3));
        System.assert(sendigProduct3.equals(sendigProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigProduct sendigProduct1 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct2 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct3 = new OASSendigProduct();
        OASSendigProduct sendigProduct4 = new OASSendigProduct();

        System.assert(sendigProduct1.equals(sendigProduct2));
        System.assert(sendigProduct2.equals(sendigProduct1));
        System.assert(sendigProduct3.equals(sendigProduct4));
        System.assert(sendigProduct4.equals(sendigProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigProduct sendigProduct1 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct2 = new OASSendigProduct();

        System.assertEquals(false, sendigProduct1.equals('foo'));
        System.assertEquals(false, sendigProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigProduct sendigProduct1 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct2 = new OASSendigProduct();
        OASSendigProduct sendigProduct3;

        System.assertEquals(false, sendigProduct1.equals(sendigProduct3));
        System.assertEquals(false, sendigProduct2.equals(sendigProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigProduct sendigProduct1 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct2 = new OASSendigProduct();

        System.assertEquals(sendigProduct1.hashCode(), sendigProduct1.hashCode());
        System.assertEquals(sendigProduct2.hashCode(), sendigProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigProduct sendigProduct1 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct2 = OASSendigProduct.getExample();
        OASSendigProduct sendigProduct3 = new OASSendigProduct();
        OASSendigProduct sendigProduct4 = new OASSendigProduct();

        System.assert(sendigProduct1.equals(sendigProduct2));
        System.assert(sendigProduct3.equals(sendigProduct4));
        System.assertEquals(sendigProduct1.hashCode(), sendigProduct2.hashCode());
        System.assertEquals(sendigProduct3.hashCode(), sendigProduct4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigProduct sendigProduct = new OASSendigProduct();
        Map<String, String> x-property-mappings = sendigProduct.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigProduct sendigProduct = new OASSendigProduct();
        System.assertEquals(new List<OASSendigClass>(), sendigProduct.classes);
        System.assertEquals(null, sendigProduct.name);
        System.assertEquals(null, sendigProduct.label);
        System.assertEquals(null, sendigProduct.description);
        System.assertEquals(null, sendigProduct.source);
        System.assertEquals(null, sendigProduct.effectiveDate);
        System.assertEquals(null, sendigProduct.registrationStatus);
        System.assertEquals(null, sendigProduct.version);
        System.assertEquals(null, sendigProduct.links);
    }
}
