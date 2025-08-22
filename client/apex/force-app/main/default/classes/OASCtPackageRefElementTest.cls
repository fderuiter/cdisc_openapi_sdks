@isTest
private class OASCtPackageRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackageRefElement ctPackageRefElement1 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement2 = ctPackageRefElement1;
        OASCtPackageRefElement ctPackageRefElement3 = new OASCtPackageRefElement();
        OASCtPackageRefElement ctPackageRefElement4 = ctPackageRefElement3;

        System.assert(ctPackageRefElement1.equals(ctPackageRefElement2));
        System.assert(ctPackageRefElement2.equals(ctPackageRefElement1));
        System.assert(ctPackageRefElement1.equals(ctPackageRefElement1));
        System.assert(ctPackageRefElement3.equals(ctPackageRefElement4));
        System.assert(ctPackageRefElement4.equals(ctPackageRefElement3));
        System.assert(ctPackageRefElement3.equals(ctPackageRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackageRefElement ctPackageRefElement1 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement2 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement3 = new OASCtPackageRefElement();
        OASCtPackageRefElement ctPackageRefElement4 = new OASCtPackageRefElement();

        System.assert(ctPackageRefElement1.equals(ctPackageRefElement2));
        System.assert(ctPackageRefElement2.equals(ctPackageRefElement1));
        System.assert(ctPackageRefElement3.equals(ctPackageRefElement4));
        System.assert(ctPackageRefElement4.equals(ctPackageRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackageRefElement ctPackageRefElement1 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement2 = new OASCtPackageRefElement();

        System.assertEquals(false, ctPackageRefElement1.equals('foo'));
        System.assertEquals(false, ctPackageRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackageRefElement ctPackageRefElement1 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement2 = new OASCtPackageRefElement();
        OASCtPackageRefElement ctPackageRefElement3;

        System.assertEquals(false, ctPackageRefElement1.equals(ctPackageRefElement3));
        System.assertEquals(false, ctPackageRefElement2.equals(ctPackageRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackageRefElement ctPackageRefElement1 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement2 = new OASCtPackageRefElement();

        System.assertEquals(ctPackageRefElement1.hashCode(), ctPackageRefElement1.hashCode());
        System.assertEquals(ctPackageRefElement2.hashCode(), ctPackageRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackageRefElement ctPackageRefElement1 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement2 = OASCtPackageRefElement.getExample();
        OASCtPackageRefElement ctPackageRefElement3 = new OASCtPackageRefElement();
        OASCtPackageRefElement ctPackageRefElement4 = new OASCtPackageRefElement();

        System.assert(ctPackageRefElement1.equals(ctPackageRefElement2));
        System.assert(ctPackageRefElement3.equals(ctPackageRefElement4));
        System.assertEquals(ctPackageRefElement1.hashCode(), ctPackageRefElement2.hashCode());
        System.assertEquals(ctPackageRefElement3.hashCode(), ctPackageRefElement4.hashCode());
    }
}
