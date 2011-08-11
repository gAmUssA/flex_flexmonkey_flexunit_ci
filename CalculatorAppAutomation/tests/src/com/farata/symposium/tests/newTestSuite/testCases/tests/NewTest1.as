package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=2)]
	public class NewTest1 extends FlexMonkeyCustomTestBase {

	    public function NewTest1() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createnewTest1CommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupnewTest1CommandList(arr);
            return arr;
        }

        private function setupnewTest1CommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('Click', 'C', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function newTest1Test():void {
        	this.monkeyTestCaseName = "NewTest1";
        	this.monkeyTestName = "newTest1Test";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createnewTest1CommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}