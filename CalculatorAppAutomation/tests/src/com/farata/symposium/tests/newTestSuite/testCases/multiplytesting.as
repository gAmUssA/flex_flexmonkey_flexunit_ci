package com.farata.symposium.tests.newTestSuite.testCases {

	import com.gorillalogic.flexunit.IFlexMonkeyTestCase
    import com.farata.symposium.tests.newTestSuite.testCases.tests.Setup1;
    import com.farata.symposium.tests.newTestSuite.testCases.tests.testtimes;
    import com.farata.symposium.tests.newTestSuite.testCases.tests.Teardown1;

    [Suite (order=2)]
    [RunWith("org.flexunit.runners.Suite")]
    public class multiplytesting implements IFlexMonkeyTestCase {

        public var test1:Setup1;
        public var test2:testtimes;
        public var test3:Teardown1;

    }
}