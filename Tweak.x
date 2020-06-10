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

%hook SCLMoatOnOff
-(bool)isDevelopmentEnvironment {
  return YES;
  }
  %end