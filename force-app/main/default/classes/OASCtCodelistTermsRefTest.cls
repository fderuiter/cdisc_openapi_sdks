@isTest
private class OASCtCodelistTermsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelistTermsRef ctCodelistTermsRef1 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef2 = ctCodelistTermsRef1;
        OASCtCodelistTermsRef ctCodelistTermsRef3 = new OASCtCodelistTermsRef();
        OASCtCodelistTermsRef ctCodelistTermsRef4 = ctCodelistTermsRef3;

        System.assert(ctCodelistTermsRef1.equals(ctCodelistTermsRef2));
        System.assert(ctCodelistTermsRef2.equals(ctCodelistTermsRef1));
        System.assert(ctCodelistTermsRef1.equals(ctCodelistTermsRef1));
        System.assert(ctCodelistTermsRef3.equals(ctCodelistTermsRef4));
        System.assert(ctCodelistTermsRef4.equals(ctCodelistTermsRef3));
        System.assert(ctCodelistTermsRef3.equals(ctCodelistTermsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelistTermsRef ctCodelistTermsRef1 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef2 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef3 = new OASCtCodelistTermsRef();
        OASCtCodelistTermsRef ctCodelistTermsRef4 = new OASCtCodelistTermsRef();

        System.assert(ctCodelistTermsRef1.equals(ctCodelistTermsRef2));
        System.assert(ctCodelistTermsRef2.equals(ctCodelistTermsRef1));
        System.assert(ctCodelistTermsRef3.equals(ctCodelistTermsRef4));
        System.assert(ctCodelistTermsRef4.equals(ctCodelistTermsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelistTermsRef ctCodelistTermsRef1 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef2 = new OASCtCodelistTermsRef();

        System.assertEquals(false, ctCodelistTermsRef1.equals('foo'));
        System.assertEquals(false, ctCodelistTermsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelistTermsRef ctCodelistTermsRef1 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef2 = new OASCtCodelistTermsRef();
        OASCtCodelistTermsRef ctCodelistTermsRef3;

        System.assertEquals(false, ctCodelistTermsRef1.equals(ctCodelistTermsRef3));
        System.assertEquals(false, ctCodelistTermsRef2.equals(ctCodelistTermsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelistTermsRef ctCodelistTermsRef1 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef2 = new OASCtCodelistTermsRef();

        System.assertEquals(ctCodelistTermsRef1.hashCode(), ctCodelistTermsRef1.hashCode());
        System.assertEquals(ctCodelistTermsRef2.hashCode(), ctCodelistTermsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelistTermsRef ctCodelistTermsRef1 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef2 = OASCtCodelistTermsRef.getExample();
        OASCtCodelistTermsRef ctCodelistTermsRef3 = new OASCtCodelistTermsRef();
        OASCtCodelistTermsRef ctCodelistTermsRef4 = new OASCtCodelistTermsRef();

        System.assert(ctCodelistTermsRef1.equals(ctCodelistTermsRef2));
        System.assert(ctCodelistTermsRef3.equals(ctCodelistTermsRef4));
        System.assertEquals(ctCodelistTermsRef1.hashCode(), ctCodelistTermsRef2.hashCode());
        System.assertEquals(ctCodelistTermsRef3.hashCode(), ctCodelistTermsRef4.hashCode());
    }
}
