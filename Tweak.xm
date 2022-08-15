
@interface YTNGWatchMiniBarView: UIView
@property (nonatomic, assign, readwrite) NSInteger watchMiniPlayerLayout;
@end

%hook YTNGWatchMiniBarView

- (void)drawRect:(CGRect)rect {
	
	%orig;
	
	self.clipsToBounds = true;
	self.layer.cornerRadius = 10;
	
}

%end
