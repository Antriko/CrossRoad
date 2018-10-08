//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//


#import "MoPubExt.h"
#import "MPLogging.h"
#import "MPAdConversionTracker.h"
#import "MPIdentityProvider.h"
#import <UIKit/UIKit.h>

const int EVENT_OTHER_SOCIAL = 70;
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
extern UIViewController *g_controller;
extern UIView *g_glView;

extern int g_GUI_Width;
extern int g_GUI_Height;
extern int g_DeviceWidth;
extern int g_DeviceHeight;

@implementation MoPubExt

- (void) MoPub_Init:(char *)IntID
{
	m_bUseTestAds = false;
	m_bBannerLoaded = false;

	NSLog(@"This device's advertising identifier: %@",[MPIdentityProvider identifier]);
//	[[MPAdConversionTracker sharedConversionTracker] reportApplicationOpenForApplicationID:@"112358"];
	
	g_AdId = [NSString stringWithCString:IntID encoding:NSUTF8StringEncoding];
	
	//Initialise interstitials
	mpInterstitial = [MPInterstitialAdController interstitialAdControllerForAdUnitId:g_AdId];
	mpInterstitial.delegate = self;	
	mpInterstitial.testing = m_bUseTestAds;
}

-(void) sendBannerLoadEvent:(int)_loaded width:(int)bannerWidth height:(int)bannerHeight
{
	//NSLog(@"sendBannerLoadEvent %d", _loaded);
	int dsMapIndex;
	double scale = [UIScreen mainScreen].scale;
	if( _loaded != 0 )
	{
		dsMapIndex = CreateDsMap(4,
						"type", 0.0, "banner_load_mopub",
						"loaded", 1.0, (void*)NULL,
						"width", bannerWidth*scale, (void*)NULL,
						"height", bannerHeight*scale,(void*)NULL
						);
	}
	else
	{
		dsMapIndex = CreateDsMap(2,
						"type", 0.0, "banner_load_mopub",
						"loaded", 0.0, (void*)NULL );
	}
	
	//send async event 
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(void) sendInterstitialLoadEvent:(int)_loaded
{
	//NSLog(@"sendInterstitialLoadEvent %d", _loaded);
	double loaded = (double)_loaded;
	int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "interstitial_load_mopub",
					"loaded", loaded, (void*)NULL );
	
	//send async event 
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (UIViewController *)viewControllerForPresentingModalView
{
    return g_controller;
}

- (void) interstitialDidLoadAd:(MPInterstitialAdController *)interstitial
{
	NSLog(@"Interstitial did load");
	[self sendInterstitialLoadEvent:1];
}


-(void)dismissInterstitial:(MPInterstitialAdController *)interstitial
{
	NSLog(@"dismiss interstitial");
	[MPInterstitialAdController removeSharedInterstitialAdController:interstitial];
	mpInterstitial = nil;
	
	mpInterstitial = [MPInterstitialAdController interstitialAdControllerForAdUnitId:g_AdId];
	mpInterstitial.delegate = self;
	//[mpInterstitial loadAd];
	
}

-(void)interstitialDidDisappear:(MPInterstitialAdController *)interstitial{

    //if(mpInterstitial !=nil)
    {
        [MPInterstitialAdController removeSharedInterstitialAdController:interstitial];
        mpInterstitial =nil;
        
        mpInterstitial = [MPInterstitialAdController interstitialAdControllerForAdUnitId:g_AdId];
        mpInterstitial.delegate = self;

        //if([mpInterstitial ready])
       //     [mpInterstitial loadAd]; //Kick off a refresh at this point
    }
    
}

- (void)interstitialDidFailToLoadAd:(MPInterstitialAdController *)interstitial
{
	NSLog(@"interstitialDidFailToLoadAd");

	[self sendInterstitialLoadEvent:0];
}

- (void)interstitialWillAppear:(MPInterstitialAdController *)interstitial{
	NSLog(@"Interstitial will appear: %@",interstitial);
}

- (void)interstitialDidExpire:(MPInterstitialAdController *)interstitial {
    // Reload the interstitial ad, if desired.
   // if(mpInterstitial !=nil)
    //    [mpInterstitial loadAd];
}

- (void)adViewDidLoadAd:(MPAdView *)view
{
    CGSize size = [view adContentViewSize];
	NSLog(@"adViewDidLoadAd: size=%d,%d",(int)size.width, (int)size.height);
    m_bBannerLoaded = true;
    [self sendBannerLoadEvent:1 width:(int)size.width height:(int)size.height];
}

- (void)adViewDidLoadAd:(MPAdView *)view withConfig:(MPAdConfiguration *)config
{
    CGSize size = [view adContentViewSize];
	NSLog(@"adViewDidLoadAd: size=%d,%d",(int)size.width, (int)size.height);
    m_bBannerLoaded = true;
    mpAdConfiguration = config;
    [self sendBannerLoadEvent:1 width:(int)size.width height:(int)size.height];
}

- (void)adViewDidFailToLoadAd:(MPAdView *)view
{
	NSLog(@"adViewDidFailToLoadAd");
	[self sendBannerLoadEvent:0 width:0 height:0];
}

-(void) MoPub_AddBanner:(char*)_BannerId 
{
	[self MoPub_AddBannerAt:_BannerId Arg2:0 Arg3:0 ];
}

- (void) MoPub_AddBannerAt:(char*)_BannerId Arg2:(double)_x Arg3:(double)_y 
{
	m_bBannerLoaded = false;	//the actual banner size is unknown until it has loaded
	
	NSString* bannerId = [NSString stringWithUTF8String:_BannerId];
	if( adView != nil )
	{
		//remove existing banner
		[adView removeFromSuperview];
		adView.delegate = nil;
		adView = nil;
	}
	CGSize adsize = MOPUB_BANNER_SIZE;
	
	
	adView = [[MPAdView alloc] initWithAdUnitId:bannerId size:adsize];
	adView.testing = m_bUseTestAds;
	//adView.frame = CGRectMake(_x, _y, [self MoPub_BannerGetWidth], [self MoPub_BannerGetHeight]);
	adView.frame = CGRectMake((g_glView.bounds.size.width - adsize.width) / 2, 
                                 // g_glView.bounds.size.height - MOPUB_BANNER_SIZE.height,
								 0,
                                  adsize.width, adsize.height);
	adView.delegate = self;
	
	[g_glView addSubview:adView];
	[adView loadAd];
}

- (void) MoPub_RemoveBanner
{
	if( adView != nil )
	{
		//remove existing banner
		[adView removeFromSuperview];
		adView.delegate = nil;
		adView = nil;
		m_bBannerLoaded = false;
	}
}

- (NSString *) MoPub_InterstitialStatus
{
	if( mpInterstitial != nil )
	{
		if([mpInterstitial ready])
		{
			return @"Ready";
		}
	}
	return @"Not Ready";
}
- (void) MoPub_ShowInterstitial
{
	if([mpInterstitial ready])
	{
		[mpInterstitial showFromViewController:g_controller];
	}
	else
		NSLog(@"Can't show; not ready");
}

- (void) MoPub_LoadInterstitial
{
	 if(mpInterstitial !=nil)
     {
		mpInterstitial.testing = m_bUseTestAds;
		mpInterstitial.delegate = self;
		[mpInterstitial loadAd];
	}
}

- (void) MoPub_MoveBanner:(double)_x  Arg2:(double)_y
{
	//NSLog(@"MoPub_MoveBanner: %d,%d", (int)_x, (int)_y);
	
	if( adView != nil )
	{
		if( _x < 0 || _y < 0 )
		{
			//hide the view
			adView.hidden = YES;
		}
		else
		{
            //display->view coords
            int width = [self MoPub_BannerGetWidth];
            int height = [self MoPub_BannerGetHeight];
            if ([mpAdConfiguration.networkType isEqualToString:@"mraid"])
            {
                width = mpAdConfiguration.preferredSize.width;
                height = mpAdConfiguration.preferredSize.height;
                _x = (g_glView.bounds.size.width-width)/2;
                _y = 0;
            }
			else
			{
				double scale = [UIScreen mainScreen].scale;
				_x/=scale;
				_y/=scale;
			}
           
			adView.frame = CGRectMake(_x, _y, width, height);
			adView.hidden = NO;
		}
	}
}

- (double) MoPub_BannerGetWidth
{
	if( adView != nil && m_bBannerLoaded)
	{
		CGSize size = [adView adContentViewSize];
        return size.width * [UIScreen mainScreen].scale;
	}
	
	return 0;
}

- (double) MoPub_BannerGetHeight
{
	if( adView != nil && m_bBannerLoaded)
	{
        CGSize size = [adView adContentViewSize];
        return size.height * [UIScreen mainScreen].scale;
	}
	
	return 0;
}

- (void) MoPub_UseTestAds:(double)useTest
{
	m_bUseTestAds = (useTest>=0.5) ? YES : NO;
	NSLog(@"TestAds: %d", (int)m_bUseTestAds);
}

@end