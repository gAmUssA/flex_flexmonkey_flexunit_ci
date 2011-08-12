package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=1)]
	public class Setup1 extends FlexMonkeyCustomTestBase {

	    public function Setup1() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createsetup1CommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupsetup1CommandList(arr);
            return arr;
        }

        private function setupsetup1CommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('Click', 'C', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function setup1Test():void {
        	this.monkeyTestCaseName = "Setup1";
        	this.monkeyTestName = "setup1Test";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createsetup1CommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}