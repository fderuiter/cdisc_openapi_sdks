@isTest
private class OASCtCodelistRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelistRef ctCodelistRef1 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef2 = ctCodelistRef1;
        OASCtCodelistRef ctCodelistRef3 = new OASCtCodelistRef();
        OASCtCodelistRef ctCodelistRef4 = ctCodelistRef3;

        System.assert(ctCodelistRef1.equals(ctCodelistRef2));
        System.assert(ctCodelistRef2.equals(ctCodelistRef1));
        System.assert(ctCodelistRef1.equals(ctCodelistRef1));
        System.assert(ctCodelistRef3.equals(ctCodelistRef4));
        System.assert(ctCodelistRef4.equals(ctCodelistRef3));
        System.assert(ctCodelistRef3.equals(ctCodelistRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelistRef ctCodelistRef1 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef2 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef3 = new OASCtCodelistRef();
        OASCtCodelistRef ctCodelistRef4 = new OASCtCodelistRef();

        System.assert(ctCodelistRef1.equals(ctCodelistRef2));
        System.assert(ctCodelistRef2.equals(ctCodelistRef1));
        System.assert(ctCodelistRef3.equals(ctCodelistRef4));
        System.assert(ctCodelistRef4.equals(ctCodelistRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelistRef ctCodelistRef1 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef2 = new OASCtCodelistRef();

        System.assertEquals(false, ctCodelistRef1.equals('foo'));
        System.assertEquals(false, ctCodelistRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelistRef ctCodelistRef1 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef2 = new OASCtCodelistRef();
        OASCtCodelistRef ctCodelistRef3;

        System.assertEquals(false, ctCodelistRef1.equals(ctCodelistRef3));
        System.assertEquals(false, ctCodelistRef2.equals(ctCodelistRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelistRef ctCodelistRef1 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef2 = new OASCtCodelistRef();

        System.assertEquals(ctCodelistRef1.hashCode(), ctCodelistRef1.hashCode());
        System.assertEquals(ctCodelistRef2.hashCode(), ctCodelistRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelistRef ctCodelistRef1 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef2 = OASCtCodelistRef.getExample();
        OASCtCodelistRef ctCodelistRef3 = new OASCtCodelistRef();
        OASCtCodelistRef ctCodelistRef4 = new OASCtCodelistRef();

        System.assert(ctCodelistRef1.equals(ctCodelistRef2));
        System.assert(ctCodelistRef3.equals(ctCodelistRef4));
        System.assertEquals(ctCodelistRef1.hashCode(), ctCodelistRef2.hashCode());
        System.assertEquals(ctCodelistRef3.hashCode(), ctCodelistRef4.hashCode());
    }
}
