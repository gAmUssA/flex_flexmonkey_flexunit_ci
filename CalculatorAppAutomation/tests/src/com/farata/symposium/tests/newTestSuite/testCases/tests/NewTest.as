package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=1)]
	public class NewTest extends FlexMonkeyCustomTestBase {

	    public function NewTest() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createnewTestCommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupnewTestCommandList(arr);
            return arr;
        }

        private function setupnewTestCommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('ChangeFocus', 'leftOperand', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new UIEventMonkeyCommand('Input', 'leftOperand', 'automationName', ['2'], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new UIEventMonkeyCommand('ChangeFocus', 'leftOperand', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new UIEventMonkeyCommand('Input', 'rightOperand', 'automationName', ['2'], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function newTestTest():void {
        	this.monkeyTestCaseName = "NewTest";
        	this.monkeyTestName = "newTestTest";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createnewTestCommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}