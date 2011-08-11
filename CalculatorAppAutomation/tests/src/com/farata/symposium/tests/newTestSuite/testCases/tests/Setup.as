package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=1)]
	public class Setup extends FlexMonkeyCustomTestBase {

	    public function Setup() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createsetupCommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupsetupCommandList(arr);
            return arr;
        }

        private function setupsetupCommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('Click', 'C', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function setupTest():void {
        	this.monkeyTestCaseName = "Setup";
        	this.monkeyTestName = "setupTest";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createsetupCommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}