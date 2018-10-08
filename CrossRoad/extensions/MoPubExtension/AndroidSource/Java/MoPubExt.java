//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//

package ${YYAndroidPackageName};

import android.util.Log;


import com.mopub.mobileads.MoPubView;
import com.mopub.mobileads.MoPubView.BannerAdListener;
import android.app.Activity;
import android.view.ViewGroup;
import android.view.Display;

import android.util.Log;
import android.view.View;
import android.graphics.Color;
import ${YYAndroidPackageName}.RunnerActivity;
import android.view.Gravity;
import android.os.Build;
import com.yoyogames.runner.RunnerJNILib;
import android.os.Handler;
import android.app.Activity;
import android.view.ViewGroup;
import android.view.View;
import android.widget.AbsoluteLayout;
import android.util.TypedValue;
import android.util.DisplayMetrics;
import android.annotation.TargetApi;

import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener;
import com.mopub.mobileads.MoPubErrorCode;
//import com.mopub.mobileads.InterstitialAdListener;
//import com.mopub.mobileads.MoPubInterstitial.MoPubInterstitialListener;

public class MoPubExt implements InterstitialAdListener, BannerAdListener
{
	private MoPubInterstitial interstitialAd=null;
	private MoPubView mpv=null;
	private String BannerId;
	private String InterstitialId;
	private boolean mbUseTestAds=false;
	private int BannerX=0;
	private int BannerY=0;
	
	private static final int EVENT_OTHER_SOCIAL = 70;
	
	public void MoPub_Init(String _Arg1)
	{
		InterstitialId = _Arg1;		
	}
	
	//InterstitialAdListener methods
	@Override
	public void onInterstitialFailed(MoPubInterstitial interstitial, MoPubErrorCode errorCode) {
    	Log.i("yoyo","Mo Pub interstitial failed");
    	sendInterstitialLoadedEvent(false);
    }

	@Override
	public void onInterstitialLoaded(MoPubInterstitial interstitial) {
		Log.i("yoyo","Mo Pub interstitial loaded");
		sendInterstitialLoadedEvent(true);
    }
	@Override
    public void onInterstitialShown(MoPubInterstitial interstitial) {}

    @Override
    public void onInterstitialClicked(MoPubInterstitial interstitial) {}

    @Override
    public void onInterstitialDismissed(MoPubInterstitial interstitial) {}
	
  //BannerAdListener methods
    @Override
    public void onBannerLoaded(MoPubView moPubView) {
    	Log.i("yoyo","MoPub banner loaded");
    	sendBannerLoadedEvent(true);
    }

    @Override
    public void onBannerFailed(MoPubView moPubView, MoPubErrorCode errorCode) {
    	Log.i("yoyo","MoPub banner load failed");
    	sendBannerLoadedEvent(false);
    }

    @Override
    public void onBannerClicked(MoPubView moPubView) {}

    @Override
    public void onBannerExpanded(MoPubView moPubView) {}

    @Override
    public void onBannerCollapsed(MoPubView moPubView) {}
    
    
	public void MoPub_LoadInterstitial(){
		if(interstitialAd!=null)
			interstitialAd.load();
		else
		{
			final String Arg2 = InterstitialId;
			RunnerActivity.ViewHandler.post( new Runnable() {
					public void run() {
		
			
			
				interstitialAd = new MoPubInterstitial(RunnerActivity.CurrentActivity,Arg2);
				//interstitialAd.setAdUnitId(Arg2);
				interstitialAd.setTesting( mbUseTestAds );
				interstitialAd.setInterstitialAdListener(MoPubExt.this);
			
				interstitialAd.load();
			
			
			}
			});
		}
	}
	
	public void MoPub_ShowInterstitial(){
		if(interstitialAd!=null)
			if(interstitialAd.isReady())
				interstitialAd.show();
	}
	
	@TargetApi(11)
	void SetLayout()
	{
		int sdkVersion =Build.VERSION.SDK_INT;
		if (sdkVersion > 10)
			mpv.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
	}
	
	public void MoPub_AddBanner( String _bannerId )
	{
		MoPub_AddBannerAt( _bannerId, 0, 0);
	}
	
	public void MoPub_AddBannerAt( String _bannerId, double _x, double _y ){
		
		final String Arg1 = _bannerId;
		BannerX = (int)_x;
		BannerY = (int)_y;
		
		RunnerActivity.ViewHandler.post( new Runnable() {
			public void run() 
			{
				AbsoluteLayout layout = (AbsoluteLayout)RunnerActivity.CurrentActivity.findViewById(R.id.ad);
				ViewGroup vg = (ViewGroup)layout;
				
				//remove existing banner
				if( mpv != null )
				{
					if( vg != null)
					{
						vg.removeView(mpv);
					}
					mpv.destroy();
				}
				
				//create new banner
				mpv = new MoPubView( RunnerJNILib.ms_context);
				mpv.setAdUnitId(Arg1);
				mpv.setTesting( mbUseTestAds );
				mpv.setBannerAdListener(MoPubExt.this);
				mpv.setVisibility( View.INVISIBLE);
				
				SetLayout();
			
				
				if(vg!=null)
				{
					vg.addView((View)mpv);
					mpv.loadAd();
				}
			}
		});
	
	}
	
	public void MoPub_RemoveBanner()
	{
		RunnerActivity.ViewHandler.post( new Runnable() {
			public void run() 
			{
				if( mpv != null )
				{
					AbsoluteLayout layout = (AbsoluteLayout)RunnerActivity.CurrentActivity.findViewById(R.id.ad);
					ViewGroup vg = (ViewGroup)layout;
					if( vg != null)
					{
						vg.removeView( mpv );
					}
					mpv.destroy();
					mpv = null;
				}
			}
		});
	}
	
	public void MoPub_MoveBanner( double _x, double _y )
	{
		final int x = (int)_x;
		final int y = (int)_y;
		BannerX = x;
		BannerY = y;
		
		if( mpv != null )
		{
			RunnerActivity.ViewHandler.post( new Runnable() {
			public void run()
			{
				if( x < 0 || y < 0)
				{
					mpv.setVisibility( View.INVISIBLE);
				}
				else
				{
					mpv.setVisibility( View.VISIBLE);
					AbsoluteLayout.LayoutParams params = new AbsoluteLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, x,y );
					mpv.setLayoutParams( params);
					mpv.requestLayout();
				}
			}});
			
		}
	}

	public double MoPub_BannerGetWidth()
	{
		if( mpv != null )
		{
			int adWidth = mpv.getAdWidth();
			//->pixelWidth
			int adWidthPx = (int)TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, adWidth, RunnerActivity.CurrentActivity.getResources().getDisplayMetrics());
			return adWidthPx;
		}
		return 0;
	}
	
	public double MoPub_BannerGetHeight()
	{
		int adHeight = 50;
		if( mpv != null )
		{
			adHeight = mpv.getAdHeight();
		}

		int adHeightPx = (int)TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, adHeight, RunnerActivity.CurrentActivity.getResources().getDisplayMetrics());
		return adHeightPx;
	}
	
	public void MoPub_UseTestAds( double _testAds )
	{
		mbUseTestAds = (_testAds >=0.5);
		Log.i("yoyo", "MoPub UseTestAds=" + mbUseTestAds);
	}
	
	public String MoPub_InterstitialStatus(){
	
		if(interstitialAd!=null && interstitialAd.isReady())
		{
			return "Ready";
		}
		else
			return "Not Ready";
	}
	
	private void sendBannerLoadedEvent( boolean _bSuccess )
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "banner_load_mopub" );
		if( _bSuccess )
		{
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "width", MoPub_BannerGetWidth());
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "height",  MoPub_BannerGetHeight());
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "loaded", 1 );
			
			MoPub_MoveBanner(BannerX, BannerY);
		}
		else
		{
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "loaded", 0 );
		}
		
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
	}
	
	private void sendInterstitialLoadedEvent( boolean _bSuccess )
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "interstitial_load_mopub" );
		double result = (_bSuccess) ? 1 : 0;
		RunnerJNILib.DsMapAddDouble( dsMapIndex, "loaded", result );
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
	}
}



