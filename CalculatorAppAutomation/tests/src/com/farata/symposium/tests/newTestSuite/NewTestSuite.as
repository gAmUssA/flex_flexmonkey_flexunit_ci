package com.farata.symposium.tests.newTestSuite {

	import com.gorillalogic.flexunit.IFlexMonkeyTestSuite
    import com.farata.symposium.tests.newTestSuite.testCases.NewTestCase;
    import com.farata.symposium.tests.newTestSuite.testCases.multiplytesting;

    [Suite(order=1)]
    [RunWith("org.flexunit.runners.Suite")]
    public class NewTestSuite implements IFlexMonkeyTestSuite {

        public var test1:NewTestCase;
        public var test2:multiplytesting;

    }
}