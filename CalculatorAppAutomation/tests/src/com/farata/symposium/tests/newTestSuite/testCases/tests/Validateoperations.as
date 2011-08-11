package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexmonkey.monkeyCommands.VerifyMonkeyCommand;
    import com.gorillalogic.flexmonkey.vo.AttributeVO;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=3)]
	public class Validateoperations extends FlexMonkeyCustomTestBase {

	    public function Validateoperations() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createvalidateoperationsCommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupvalidateoperationsCommandList(arr);
            return arr;
        }

        private function setupvalidateoperationsCommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('Input', 'leftOperand', 'automationName', ['2'], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new UIEventMonkeyCommand('Input', 'rightOperand', 'automationName', ['2'], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new UIEventMonkeyCommand('Click', '+', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new VerifyMonkeyCommand('New Verify', null, 'resultLabel', 'automationName', false, 
                    new ArrayCollection([
                        new AttributeVO('text', null, 'property', '4')
                    ]), null, null, true, '500', '20', 0);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function validateoperationsTest():void {
        	this.monkeyTestCaseName = "Validateoperations";
        	this.monkeyTestName = "validateoperationsTest";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createvalidateoperationsCommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}