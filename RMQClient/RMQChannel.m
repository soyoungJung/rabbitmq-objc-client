#import "RMQChannel.h"

typedef NS_ENUM(NSUInteger, RMQChannelState) {
    RMQChannelStateClosed,
    RMQChannelStateOpen,
};

@interface RMQChannel ()
@property (nonatomic, readwrite) RMQChannelState state;
@end

@implementation RMQChannel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = RMQChannelStateClosed;
    }
    return self;
}

- (RMQQueue *)queue:(NSString *)queueName
         autoDelete:(BOOL)shouldAutoDelete
          exclusive:(BOOL)isExclusive {
    return [RMQQueue new];
}

- (RMQExchange *)defaultExchange {
    return [RMQExchange new];
}

- (RMQChannel *)open {
    self.state = RMQChannelStateOpen;
    return self;
}

- (void)close {
    self.state = RMQChannelStateClosed;
}

- (BOOL)isOpen {
    return self.state == RMQChannelStateOpen;
}

@end
