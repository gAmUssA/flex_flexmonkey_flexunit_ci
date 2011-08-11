package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=4)]
	public class Teardown extends FlexMonkeyCustomTestBase {

	    public function Teardown() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createteardownCommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupteardownCommandList(arr);
            return arr;
        }

        private function setupteardownCommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('Click', 'C', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function teardownTest():void {
        	this.monkeyTestCaseName = "Teardown";
        	this.monkeyTestName = "teardownTest";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createteardownCommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}