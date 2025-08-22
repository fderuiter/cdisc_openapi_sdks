@isTest
private class OASCtTermRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtTermRef ctTermRef1 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef2 = ctTermRef1;
        OASCtTermRef ctTermRef3 = new OASCtTermRef();
        OASCtTermRef ctTermRef4 = ctTermRef3;

        System.assert(ctTermRef1.equals(ctTermRef2));
        System.assert(ctTermRef2.equals(ctTermRef1));
        System.assert(ctTermRef1.equals(ctTermRef1));
        System.assert(ctTermRef3.equals(ctTermRef4));
        System.assert(ctTermRef4.equals(ctTermRef3));
        System.assert(ctTermRef3.equals(ctTermRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtTermRef ctTermRef1 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef2 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef3 = new OASCtTermRef();
        OASCtTermRef ctTermRef4 = new OASCtTermRef();

        System.assert(ctTermRef1.equals(ctTermRef2));
        System.assert(ctTermRef2.equals(ctTermRef1));
        System.assert(ctTermRef3.equals(ctTermRef4));
        System.assert(ctTermRef4.equals(ctTermRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtTermRef ctTermRef1 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef2 = new OASCtTermRef();

        System.assertEquals(false, ctTermRef1.equals('foo'));
        System.assertEquals(false, ctTermRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtTermRef ctTermRef1 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef2 = new OASCtTermRef();
        OASCtTermRef ctTermRef3;

        System.assertEquals(false, ctTermRef1.equals(ctTermRef3));
        System.assertEquals(false, ctTermRef2.equals(ctTermRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtTermRef ctTermRef1 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef2 = new OASCtTermRef();

        System.assertEquals(ctTermRef1.hashCode(), ctTermRef1.hashCode());
        System.assertEquals(ctTermRef2.hashCode(), ctTermRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtTermRef ctTermRef1 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef2 = OASCtTermRef.getExample();
        OASCtTermRef ctTermRef3 = new OASCtTermRef();
        OASCtTermRef ctTermRef4 = new OASCtTermRef();

        System.assert(ctTermRef1.equals(ctTermRef2));
        System.assert(ctTermRef3.equals(ctTermRef4));
        System.assertEquals(ctTermRef1.hashCode(), ctTermRef2.hashCode());
        System.assertEquals(ctTermRef3.hashCode(), ctTermRef4.hashCode());
    }
}
