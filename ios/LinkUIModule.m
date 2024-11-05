#import "React/RCTBridgeModule.h"
@interface RCT_EXTERN_MODULE(LinkUIModule, NSObject)
- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXTERN_METHOD(show:(NSString *)token callback:(RCTResponseSenderBlock)callback)
@end
