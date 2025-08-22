@isTest
private class OASCdashigScenarioFieldRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement1 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement2 = cdashigScenarioFieldRefElement1;
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement3 = new OASCdashigScenarioFieldRefElement();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement4 = cdashigScenarioFieldRefElement3;

        System.assert(cdashigScenarioFieldRefElement1.equals(cdashigScenarioFieldRefElement2));
        System.assert(cdashigScenarioFieldRefElement2.equals(cdashigScenarioFieldRefElement1));
        System.assert(cdashigScenarioFieldRefElement1.equals(cdashigScenarioFieldRefElement1));
        System.assert(cdashigScenarioFieldRefElement3.equals(cdashigScenarioFieldRefElement4));
        System.assert(cdashigScenarioFieldRefElement4.equals(cdashigScenarioFieldRefElement3));
        System.assert(cdashigScenarioFieldRefElement3.equals(cdashigScenarioFieldRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement1 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement2 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement3 = new OASCdashigScenarioFieldRefElement();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement4 = new OASCdashigScenarioFieldRefElement();

        System.assert(cdashigScenarioFieldRefElement1.equals(cdashigScenarioFieldRefElement2));
        System.assert(cdashigScenarioFieldRefElement2.equals(cdashigScenarioFieldRefElement1));
        System.assert(cdashigScenarioFieldRefElement3.equals(cdashigScenarioFieldRefElement4));
        System.assert(cdashigScenarioFieldRefElement4.equals(cdashigScenarioFieldRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement1 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement2 = new OASCdashigScenarioFieldRefElement();

        System.assertEquals(false, cdashigScenarioFieldRefElement1.equals('foo'));
        System.assertEquals(false, cdashigScenarioFieldRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement1 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement2 = new OASCdashigScenarioFieldRefElement();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement3;

        System.assertEquals(false, cdashigScenarioFieldRefElement1.equals(cdashigScenarioFieldRefElement3));
        System.assertEquals(false, cdashigScenarioFieldRefElement2.equals(cdashigScenarioFieldRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement1 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement2 = new OASCdashigScenarioFieldRefElement();

        System.assertEquals(cdashigScenarioFieldRefElement1.hashCode(), cdashigScenarioFieldRefElement1.hashCode());
        System.assertEquals(cdashigScenarioFieldRefElement2.hashCode(), cdashigScenarioFieldRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement1 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement2 = OASCdashigScenarioFieldRefElement.getExample();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement3 = new OASCdashigScenarioFieldRefElement();
        OASCdashigScenarioFieldRefElement cdashigScenarioFieldRefElement4 = new OASCdashigScenarioFieldRefElement();

        System.assert(cdashigScenarioFieldRefElement1.equals(cdashigScenarioFieldRefElement2));
        System.assert(cdashigScenarioFieldRefElement3.equals(cdashigScenarioFieldRefElement4));
        System.assertEquals(cdashigScenarioFieldRefElement1.hashCode(), cdashigScenarioFieldRefElement2.hashCode());
        System.assertEquals(cdashigScenarioFieldRefElement3.hashCode(), cdashigScenarioFieldRefElement4.hashCode());
    }
}
