@isTest
private class OASCtPackagesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackagesRef ctPackagesRef1 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef2 = ctPackagesRef1;
        OASCtPackagesRef ctPackagesRef3 = new OASCtPackagesRef();
        OASCtPackagesRef ctPackagesRef4 = ctPackagesRef3;

        System.assert(ctPackagesRef1.equals(ctPackagesRef2));
        System.assert(ctPackagesRef2.equals(ctPackagesRef1));
        System.assert(ctPackagesRef1.equals(ctPackagesRef1));
        System.assert(ctPackagesRef3.equals(ctPackagesRef4));
        System.assert(ctPackagesRef4.equals(ctPackagesRef3));
        System.assert(ctPackagesRef3.equals(ctPackagesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackagesRef ctPackagesRef1 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef2 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef3 = new OASCtPackagesRef();
        OASCtPackagesRef ctPackagesRef4 = new OASCtPackagesRef();

        System.assert(ctPackagesRef1.equals(ctPackagesRef2));
        System.assert(ctPackagesRef2.equals(ctPackagesRef1));
        System.assert(ctPackagesRef3.equals(ctPackagesRef4));
        System.assert(ctPackagesRef4.equals(ctPackagesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackagesRef ctPackagesRef1 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef2 = new OASCtPackagesRef();

        System.assertEquals(false, ctPackagesRef1.equals('foo'));
        System.assertEquals(false, ctPackagesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackagesRef ctPackagesRef1 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef2 = new OASCtPackagesRef();
        OASCtPackagesRef ctPackagesRef3;

        System.assertEquals(false, ctPackagesRef1.equals(ctPackagesRef3));
        System.assertEquals(false, ctPackagesRef2.equals(ctPackagesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackagesRef ctPackagesRef1 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef2 = new OASCtPackagesRef();

        System.assertEquals(ctPackagesRef1.hashCode(), ctPackagesRef1.hashCode());
        System.assertEquals(ctPackagesRef2.hashCode(), ctPackagesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackagesRef ctPackagesRef1 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef2 = OASCtPackagesRef.getExample();
        OASCtPackagesRef ctPackagesRef3 = new OASCtPackagesRef();
        OASCtPackagesRef ctPackagesRef4 = new OASCtPackagesRef();

        System.assert(ctPackagesRef1.equals(ctPackagesRef2));
        System.assert(ctPackagesRef3.equals(ctPackagesRef4));
        System.assertEquals(ctPackagesRef1.hashCode(), ctPackagesRef2.hashCode());
        System.assertEquals(ctPackagesRef3.hashCode(), ctPackagesRef4.hashCode());
    }
}
