//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//


#import "MPInterstitialAdController.h"
#import "MPAdConfiguration.h"
#import "MPAdView.h"

@interface MoPubExt:NSObject<MPInterstitialAdControllerDelegate,MPAdViewDelegate>
{
	MPInterstitialAdController *mpInterstitial;
    MPAdConfiguration* mpAdConfiguration;
	MPAdView *adView;
	NSString *g_AdId;
	bool m_bUseTestAds;
	bool m_bBannerLoaded;

}
- (void) MoPub_Init:(char*)IntID;
- (NSString *) MoPub_InterstitialStatus;
- (void) MoPub_ShowInterstitial;
- (void) MoPub_LoadInterstitial;
- (void) MoPub_AddBanner:(char*)BannerId;
- (void) MoPub_AddBannerAt:(char*)BannerId Arg2:(double)_x Arg3:(double)_y;
- (void) MoPub_RemoveBanner;
- (void) MoPub_MoveBanner:(double)_x  Arg2:(double)_y;
- (double) MoPub_BannerGetWidth;
- (double) MoPub_BannerGetHeight;
- (void) MoPub_UseTestAds:(double)useTest;

-(void) sendBannerLoadEvent:(int)_loaded width:(int)bannerWidth height:(int)bannerHeight;
-(void) sendInterstitialLoadEvent:(int)_loaded;



@end
