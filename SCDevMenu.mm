

// Enable Developer Menu in SoundCloud App //



%hook FIRRemoteConfigSettings
-(bool)isDeveloperModeEnabled {
	return YES;
}
%end

%hook UserFeaturesService
-(bool)isDevelopmentMenuEnabled {
	return YES;
}
%end

%hook AppDelegate

- (void)viewWillAppear:(BOOL)arg1 {
	%orig;
	[[[UIAlertView alloc] initWithTitle:@"Hello Developer" message:@"You are in Dev Mode" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil] show];
}

%end
