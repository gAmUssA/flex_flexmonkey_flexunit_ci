package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=3)]
	public class Teardown1 extends FlexMonkeyCustomTestBase {

	    public function Teardown1() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createteardown1CommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupteardown1CommandList(arr);
            return arr;
        }

        private function setupteardown1CommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('Click', 'C', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function teardown1Test():void {
        	this.monkeyTestCaseName = "Teardown1";
        	this.monkeyTestName = "teardown1Test";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createteardown1CommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}