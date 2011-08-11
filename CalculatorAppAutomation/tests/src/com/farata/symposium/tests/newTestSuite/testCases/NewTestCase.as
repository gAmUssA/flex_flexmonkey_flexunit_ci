package com.farata.symposium.tests.newTestSuite.testCases {

	import com.gorillalogic.flexunit.IFlexMonkeyTestCase
    import com.farata.symposium.tests.newTestSuite.testCases.tests.Setup;
    import com.farata.symposium.tests.newTestSuite.testCases.tests.Validatecontrols;
    import com.farata.symposium.tests.newTestSuite.testCases.tests.Validateoperations;
    import com.farata.symposium.tests.newTestSuite.testCases.tests.Teardown;

    [Suite (order=1)]
    [RunWith("org.flexunit.runners.Suite")]
    public class NewTestCase implements IFlexMonkeyTestCase {

        public var test1:Setup;
        public var test2:Validatecontrols;
        public var test3:Validateoperations;
        public var test4:Teardown;

    }
}