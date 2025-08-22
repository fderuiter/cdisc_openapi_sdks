@isTest
private class OASCtPackageCodelistsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackageCodelistsRef ctPackageCodelistsRef1 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef2 = ctPackageCodelistsRef1;
        OASCtPackageCodelistsRef ctPackageCodelistsRef3 = new OASCtPackageCodelistsRef();
        OASCtPackageCodelistsRef ctPackageCodelistsRef4 = ctPackageCodelistsRef3;

        System.assert(ctPackageCodelistsRef1.equals(ctPackageCodelistsRef2));
        System.assert(ctPackageCodelistsRef2.equals(ctPackageCodelistsRef1));
        System.assert(ctPackageCodelistsRef1.equals(ctPackageCodelistsRef1));
        System.assert(ctPackageCodelistsRef3.equals(ctPackageCodelistsRef4));
        System.assert(ctPackageCodelistsRef4.equals(ctPackageCodelistsRef3));
        System.assert(ctPackageCodelistsRef3.equals(ctPackageCodelistsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackageCodelistsRef ctPackageCodelistsRef1 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef2 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef3 = new OASCtPackageCodelistsRef();
        OASCtPackageCodelistsRef ctPackageCodelistsRef4 = new OASCtPackageCodelistsRef();

        System.assert(ctPackageCodelistsRef1.equals(ctPackageCodelistsRef2));
        System.assert(ctPackageCodelistsRef2.equals(ctPackageCodelistsRef1));
        System.assert(ctPackageCodelistsRef3.equals(ctPackageCodelistsRef4));
        System.assert(ctPackageCodelistsRef4.equals(ctPackageCodelistsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackageCodelistsRef ctPackageCodelistsRef1 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef2 = new OASCtPackageCodelistsRef();

        System.assertEquals(false, ctPackageCodelistsRef1.equals('foo'));
        System.assertEquals(false, ctPackageCodelistsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackageCodelistsRef ctPackageCodelistsRef1 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef2 = new OASCtPackageCodelistsRef();
        OASCtPackageCodelistsRef ctPackageCodelistsRef3;

        System.assertEquals(false, ctPackageCodelistsRef1.equals(ctPackageCodelistsRef3));
        System.assertEquals(false, ctPackageCodelistsRef2.equals(ctPackageCodelistsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackageCodelistsRef ctPackageCodelistsRef1 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef2 = new OASCtPackageCodelistsRef();

        System.assertEquals(ctPackageCodelistsRef1.hashCode(), ctPackageCodelistsRef1.hashCode());
        System.assertEquals(ctPackageCodelistsRef2.hashCode(), ctPackageCodelistsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackageCodelistsRef ctPackageCodelistsRef1 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef2 = OASCtPackageCodelistsRef.getExample();
        OASCtPackageCodelistsRef ctPackageCodelistsRef3 = new OASCtPackageCodelistsRef();
        OASCtPackageCodelistsRef ctPackageCodelistsRef4 = new OASCtPackageCodelistsRef();

        System.assert(ctPackageCodelistsRef1.equals(ctPackageCodelistsRef2));
        System.assert(ctPackageCodelistsRef3.equals(ctPackageCodelistsRef4));
        System.assertEquals(ctPackageCodelistsRef1.hashCode(), ctPackageCodelistsRef2.hashCode());
        System.assertEquals(ctPackageCodelistsRef3.hashCode(), ctPackageCodelistsRef4.hashCode());
    }
}
