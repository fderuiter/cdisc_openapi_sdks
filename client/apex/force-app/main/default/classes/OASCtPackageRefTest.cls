@isTest
private class OASCtPackageRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackageRef ctPackageRef1 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef2 = ctPackageRef1;
        OASCtPackageRef ctPackageRef3 = new OASCtPackageRef();
        OASCtPackageRef ctPackageRef4 = ctPackageRef3;

        System.assert(ctPackageRef1.equals(ctPackageRef2));
        System.assert(ctPackageRef2.equals(ctPackageRef1));
        System.assert(ctPackageRef1.equals(ctPackageRef1));
        System.assert(ctPackageRef3.equals(ctPackageRef4));
        System.assert(ctPackageRef4.equals(ctPackageRef3));
        System.assert(ctPackageRef3.equals(ctPackageRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackageRef ctPackageRef1 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef2 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef3 = new OASCtPackageRef();
        OASCtPackageRef ctPackageRef4 = new OASCtPackageRef();

        System.assert(ctPackageRef1.equals(ctPackageRef2));
        System.assert(ctPackageRef2.equals(ctPackageRef1));
        System.assert(ctPackageRef3.equals(ctPackageRef4));
        System.assert(ctPackageRef4.equals(ctPackageRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackageRef ctPackageRef1 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef2 = new OASCtPackageRef();

        System.assertEquals(false, ctPackageRef1.equals('foo'));
        System.assertEquals(false, ctPackageRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackageRef ctPackageRef1 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef2 = new OASCtPackageRef();
        OASCtPackageRef ctPackageRef3;

        System.assertEquals(false, ctPackageRef1.equals(ctPackageRef3));
        System.assertEquals(false, ctPackageRef2.equals(ctPackageRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackageRef ctPackageRef1 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef2 = new OASCtPackageRef();

        System.assertEquals(ctPackageRef1.hashCode(), ctPackageRef1.hashCode());
        System.assertEquals(ctPackageRef2.hashCode(), ctPackageRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackageRef ctPackageRef1 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef2 = OASCtPackageRef.getExample();
        OASCtPackageRef ctPackageRef3 = new OASCtPackageRef();
        OASCtPackageRef ctPackageRef4 = new OASCtPackageRef();

        System.assert(ctPackageRef1.equals(ctPackageRef2));
        System.assert(ctPackageRef3.equals(ctPackageRef4));
        System.assertEquals(ctPackageRef1.hashCode(), ctPackageRef2.hashCode());
        System.assertEquals(ctPackageRef3.hashCode(), ctPackageRef4.hashCode());
    }
}
