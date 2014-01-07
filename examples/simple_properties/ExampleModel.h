#import "JSONModel.h"
#import "ExampleObjectModel.h"

@interface ExampleModel : JSONModel

@property (strong, nonatomic) NSArray *array;
@property (assign, nonatomic) BOOL boolean;
@property (assign, nonatomic) NSInteger integer;
@property (nonatomic) double number;
@property (strong, nonatomic) NSString *string;
@property (strong, nonatomic) ExampleObjectModel *object;

@end
