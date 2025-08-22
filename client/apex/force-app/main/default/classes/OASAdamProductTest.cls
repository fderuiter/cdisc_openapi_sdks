@isTest
private class OASAdamProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamProduct adamProduct1 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct2 = adamProduct1;
        OASAdamProduct adamProduct3 = new OASAdamProduct();
        OASAdamProduct adamProduct4 = adamProduct3;

        System.assert(adamProduct1.equals(adamProduct2));
        System.assert(adamProduct2.equals(adamProduct1));
        System.assert(adamProduct1.equals(adamProduct1));
        System.assert(adamProduct3.equals(adamProduct4));
        System.assert(adamProduct4.equals(adamProduct3));
        System.assert(adamProduct3.equals(adamProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamProduct adamProduct1 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct2 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct3 = new OASAdamProduct();
        OASAdamProduct adamProduct4 = new OASAdamProduct();

        System.assert(adamProduct1.equals(adamProduct2));
        System.assert(adamProduct2.equals(adamProduct1));
        System.assert(adamProduct3.equals(adamProduct4));
        System.assert(adamProduct4.equals(adamProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamProduct adamProduct1 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct2 = new OASAdamProduct();

        System.assertEquals(false, adamProduct1.equals('foo'));
        System.assertEquals(false, adamProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamProduct adamProduct1 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct2 = new OASAdamProduct();
        OASAdamProduct adamProduct3;

        System.assertEquals(false, adamProduct1.equals(adamProduct3));
        System.assertEquals(false, adamProduct2.equals(adamProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamProduct adamProduct1 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct2 = new OASAdamProduct();

        System.assertEquals(adamProduct1.hashCode(), adamProduct1.hashCode());
        System.assertEquals(adamProduct2.hashCode(), adamProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamProduct adamProduct1 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct2 = OASAdamProduct.getExample();
        OASAdamProduct adamProduct3 = new OASAdamProduct();
        OASAdamProduct adamProduct4 = new OASAdamProduct();

        System.assert(adamProduct1.equals(adamProduct2));
        System.assert(adamProduct3.equals(adamProduct4));
        System.assertEquals(adamProduct1.hashCode(), adamProduct2.hashCode());
        System.assertEquals(adamProduct3.hashCode(), adamProduct4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdamProduct adamProduct = new OASAdamProduct();
        Map<String, String> x-property-mappings = adamProduct.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAdamProduct adamProduct = new OASAdamProduct();
        System.assertEquals(new List<OASAdamDatastructure>(), adamProduct.dataStructures);
        System.assertEquals(null, adamProduct.name);
        System.assertEquals(null, adamProduct.label);
        System.assertEquals(null, adamProduct.description);
        System.assertEquals(null, adamProduct.source);
        System.assertEquals(null, adamProduct.effectiveDate);
        System.assertEquals(null, adamProduct.registrationStatus);
        System.assertEquals(null, adamProduct.version);
        System.assertEquals(null, adamProduct.links);
    }
}
