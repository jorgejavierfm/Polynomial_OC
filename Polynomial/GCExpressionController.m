#import "GCExpressionController.h"
#import "GCMathParser.h"

@implementation GCExpressionController

- (IBAction)	evaluate:(id) sender
{
    NSString*	input = [expInputTextField stringValue];
    if([input length] > 0 )
    {
        if ( _parser == nil )
            [expResultTextField setDoubleValue:[input evaluateMath]];
        else
            [expResultTextField setDoubleValue:[_parser evaluate:input]];
    }
}




@end
