@isTest
private class OASProductsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductsRef productsRef1 = OASProductsRef.getExample();
        OASProductsRef productsRef2 = productsRef1;
        OASProductsRef productsRef3 = new OASProductsRef();
        OASProductsRef productsRef4 = productsRef3;

        System.assert(productsRef1.equals(productsRef2));
        System.assert(productsRef2.equals(productsRef1));
        System.assert(productsRef1.equals(productsRef1));
        System.assert(productsRef3.equals(productsRef4));
        System.assert(productsRef4.equals(productsRef3));
        System.assert(productsRef3.equals(productsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductsRef productsRef1 = OASProductsRef.getExample();
        OASProductsRef productsRef2 = OASProductsRef.getExample();
        OASProductsRef productsRef3 = new OASProductsRef();
        OASProductsRef productsRef4 = new OASProductsRef();

        System.assert(productsRef1.equals(productsRef2));
        System.assert(productsRef2.equals(productsRef1));
        System.assert(productsRef3.equals(productsRef4));
        System.assert(productsRef4.equals(productsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductsRef productsRef1 = OASProductsRef.getExample();
        OASProductsRef productsRef2 = new OASProductsRef();

        System.assertEquals(false, productsRef1.equals('foo'));
        System.assertEquals(false, productsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductsRef productsRef1 = OASProductsRef.getExample();
        OASProductsRef productsRef2 = new OASProductsRef();
        OASProductsRef productsRef3;

        System.assertEquals(false, productsRef1.equals(productsRef3));
        System.assertEquals(false, productsRef2.equals(productsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductsRef productsRef1 = OASProductsRef.getExample();
        OASProductsRef productsRef2 = new OASProductsRef();

        System.assertEquals(productsRef1.hashCode(), productsRef1.hashCode());
        System.assertEquals(productsRef2.hashCode(), productsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductsRef productsRef1 = OASProductsRef.getExample();
        OASProductsRef productsRef2 = OASProductsRef.getExample();
        OASProductsRef productsRef3 = new OASProductsRef();
        OASProductsRef productsRef4 = new OASProductsRef();

        System.assert(productsRef1.equals(productsRef2));
        System.assert(productsRef3.equals(productsRef4));
        System.assertEquals(productsRef1.hashCode(), productsRef2.hashCode());
        System.assertEquals(productsRef3.hashCode(), productsRef4.hashCode());
    }
}
