package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.VerifyMonkeyCommand;
    import com.gorillalogic.flexmonkey.vo.AttributeVO;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=2)]
	public class Validatecontrols extends FlexMonkeyCustomTestBase {

	    public function Validatecontrols() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createvalidatecontrolsCommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setupvalidatecontrolsCommandList(arr);
            return arr;
        }

        private function setupvalidatecontrolsCommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new VerifyMonkeyCommand('verify plus button', null, '+', 'automationName', false, 
                    new ArrayCollection([
                        new AttributeVO('label', null, 'property', '+')
                    ]), null, null, true, '500', '20', 0);
            arr.addItem(theRunnable);

            theRunnable=new VerifyMonkeyCommand('Verify minus button', null, '-', 'automationName', false, 
                    new ArrayCollection([
                        new AttributeVO('label', null, 'property', '-')
                    ]), null, null, true, '500', '20', 0);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function validatecontrolsTest():void {
        	this.monkeyTestCaseName = "Validatecontrols";
        	this.monkeyTestName = "validatecontrolsTest";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createvalidatecontrolsCommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}