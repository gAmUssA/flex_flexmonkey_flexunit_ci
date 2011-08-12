package com.farata.symposium.tests.newTestSuite.testCases.tests{

	import com.gorillalogic.flexunit.IFlexMonkeyTest
    import com.gorillalogic.flexmonkey.core.MonkeyRunnable;
    import com.gorillalogic.flexmonkey.monkeyCommands.UIEventMonkeyCommand;
    import com.gorillalogic.flexmonkey.monkeyCommands.VerifyMonkeyCommand;
    import com.gorillalogic.flexmonkey.vo.AttributeVO;
    import com.gorillalogic.flexunit.FlexMonkeyCustomTestBase;
    import mx.collections.ArrayCollection;

	[TestCase(order=2)]
	public class testtimes extends FlexMonkeyCustomTestBase {

	    public function testtimes() {
			super()    	}

		[Before]
		public function setUp():void {
		}

        private function createtesttimesCommandList():ArrayCollection {
            var arr:ArrayCollection = new ArrayCollection();
            setuptesttimesCommandList(arr);
            return arr;
        }

        private function setuptesttimesCommandList(arr:ArrayCollection):void {
            var theRunnable:MonkeyRunnable=null;
            theRunnable=new UIEventMonkeyCommand('Input', 'leftOperand', 'automationName', ['324'], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new UIEventMonkeyCommand('Input', 'rightOperand', 'automationName', ['2'], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new UIEventMonkeyCommand('Click', '*', 'automationName', [null], '', '', '10', '1000', false);
            arr.addItem(theRunnable);

            theRunnable=new VerifyMonkeyCommand('New Verify', null, 'resultLabel', 'automationName', false, 
                    new ArrayCollection([
                        new AttributeVO('text', null, 'property', '648')
                    ]), null, null, true, '500', '2', 0);
            arr.addItem(theRunnable);

        }
		[Test(async, timeout=12250)]
        public function testtimesTest():void {
        	this.monkeyTestCaseName = "testtimes";
        	this.monkeyTestName = "testtimesTest";
        	trace(this.monkeyTestCaseName + "." + this.monkeyTestName);
        	beforeTest(this.monkeyTestCaseName, this.monkeyTestName);
        	var commandList:ArrayCollection = createtesttimesCommandList();
        	runFlexMonkeyCommands(commandList);
        }


    }
}