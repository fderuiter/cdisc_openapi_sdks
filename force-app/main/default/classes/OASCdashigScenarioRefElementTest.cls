@isTest
private class OASCdashigScenarioRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioRefElement cdashigScenarioRefElement1 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement2 = cdashigScenarioRefElement1;
        OASCdashigScenarioRefElement cdashigScenarioRefElement3 = new OASCdashigScenarioRefElement();
        OASCdashigScenarioRefElement cdashigScenarioRefElement4 = cdashigScenarioRefElement3;

        System.assert(cdashigScenarioRefElement1.equals(cdashigScenarioRefElement2));
        System.assert(cdashigScenarioRefElement2.equals(cdashigScenarioRefElement1));
        System.assert(cdashigScenarioRefElement1.equals(cdashigScenarioRefElement1));
        System.assert(cdashigScenarioRefElement3.equals(cdashigScenarioRefElement4));
        System.assert(cdashigScenarioRefElement4.equals(cdashigScenarioRefElement3));
        System.assert(cdashigScenarioRefElement3.equals(cdashigScenarioRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioRefElement cdashigScenarioRefElement1 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement2 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement3 = new OASCdashigScenarioRefElement();
        OASCdashigScenarioRefElement cdashigScenarioRefElement4 = new OASCdashigScenarioRefElement();

        System.assert(cdashigScenarioRefElement1.equals(cdashigScenarioRefElement2));
        System.assert(cdashigScenarioRefElement2.equals(cdashigScenarioRefElement1));
        System.assert(cdashigScenarioRefElement3.equals(cdashigScenarioRefElement4));
        System.assert(cdashigScenarioRefElement4.equals(cdashigScenarioRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioRefElement cdashigScenarioRefElement1 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement2 = new OASCdashigScenarioRefElement();

        System.assertEquals(false, cdashigScenarioRefElement1.equals('foo'));
        System.assertEquals(false, cdashigScenarioRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioRefElement cdashigScenarioRefElement1 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement2 = new OASCdashigScenarioRefElement();
        OASCdashigScenarioRefElement cdashigScenarioRefElement3;

        System.assertEquals(false, cdashigScenarioRefElement1.equals(cdashigScenarioRefElement3));
        System.assertEquals(false, cdashigScenarioRefElement2.equals(cdashigScenarioRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioRefElement cdashigScenarioRefElement1 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement2 = new OASCdashigScenarioRefElement();

        System.assertEquals(cdashigScenarioRefElement1.hashCode(), cdashigScenarioRefElement1.hashCode());
        System.assertEquals(cdashigScenarioRefElement2.hashCode(), cdashigScenarioRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioRefElement cdashigScenarioRefElement1 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement2 = OASCdashigScenarioRefElement.getExample();
        OASCdashigScenarioRefElement cdashigScenarioRefElement3 = new OASCdashigScenarioRefElement();
        OASCdashigScenarioRefElement cdashigScenarioRefElement4 = new OASCdashigScenarioRefElement();

        System.assert(cdashigScenarioRefElement1.equals(cdashigScenarioRefElement2));
        System.assert(cdashigScenarioRefElement3.equals(cdashigScenarioRefElement4));
        System.assertEquals(cdashigScenarioRefElement1.hashCode(), cdashigScenarioRefElement2.hashCode());
        System.assertEquals(cdashigScenarioRefElement3.hashCode(), cdashigScenarioRefElement4.hashCode());
    }
}
