#import "DIGTouchLockPasscodeCharacterView.h"

@interface DIGTouchLockPasscodeCharacterView ()

@property (strong, nonatomic) CAShapeLayer *filledInShape;
@property (strong, nonatomic) CAShapeLayer *emptyShape;

@end

@implementation DIGTouchLockPasscodeCharacterView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    _isEmpty = YES;
    self.backgroundColor = [UIColor clearColor];
    [self drawFilledInShape];
    [self drawEmptyShape];
    [self redraw];
}

- (void)redraw
{
    self.filledInShape.hidden = self.isEmpty;
    self.emptyShape.hidden = !self.isEmpty;
}

- (void)drawFilledInShape
{
    CGFloat borderWidth = 2;
    CGFloat radius = CGRectGetWidth(self.bounds) / 2 - borderWidth;
    CAShapeLayer *filledInShape = [CAShapeLayer layer];
    filledInShape.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(borderWidth, borderWidth, 2.0*radius, 2.0*radius)
                          
                                                    cornerRadius:radius].CGPath;
    UIColor *filledInShapeColor = [UIColor blackColor];
    filledInShape.fillColor = filledInShapeColor.CGColor;
    filledInShape.strokeColor =  filledInShapeColor.CGColor;
    filledInShape.borderWidth = borderWidth;
    [self.layer addSublayer:filledInShape];
    _filledInShape = filledInShape;
}

- (void)drawEmptyShape
{
    CGFloat borderWidth = 2;
    CGFloat radius = CGRectGetWidth(self.bounds) / 2 - borderWidth;
    CAShapeLayer *emptyShape = [CAShapeLayer layer];
    emptyShape.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(borderWidth, borderWidth, 2.0*radius, 2.0*radius)
                       
                                                 cornerRadius:radius].CGPath;
    UIColor *emptyShapeColor = [UIColor blackColor];
    emptyShape.fillColor = emptyShapeColor.CGColor;
    emptyShape.strokeColor =  emptyShapeColor.CGColor;
    emptyShape.borderWidth = borderWidth;
    emptyShape.opacity = 0.3;
    [self.layer addSublayer:emptyShape];
    _emptyShape = emptyShape;
}

- (void)setIsEmpty:(BOOL)isEmpty {
    if (_isEmpty != isEmpty) {
        _isEmpty = isEmpty;
        [self redraw];
    }
}
- (void)setFillColor:(UIColor *)fillColor
{
    _fillColor = fillColor;
    CGColorRef cgColor = fillColor.CGColor;
    self.emptyShape.fillColor = cgColor;
    self.emptyShape.strokeColor = cgColor;
    self.filledInShape.fillColor = cgColor;
    self.filledInShape.strokeColor = cgColor;
}

@end
