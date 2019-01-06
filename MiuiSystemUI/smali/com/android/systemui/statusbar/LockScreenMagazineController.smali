.class public Lcom/android/systemui/statusbar/LockScreenMagazineController;
.super Ljava/lang/Object;
.source "LockScreenMagazineController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/LockScreenMagazineController$1;,
        Lcom/android/systemui/statusbar/LockScreenMagazineController$2;,
        Lcom/android/systemui/statusbar/LockScreenMagazineController$3;,
        Lcom/android/systemui/statusbar/LockScreenMagazineController$4;,
        Lcom/android/systemui/statusbar/LockScreenMagazineController$5;,
        Lcom/android/systemui/statusbar/LockScreenMagazineController$6;,
        Lcom/android/systemui/statusbar/LockScreenMagazineController$7;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockValueAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDesValueAnimator:Landroid/animation/ValueAnimator;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsLockScreenMagazinePkgExist:Z

.field private mIsLongPress:Z

.field private mIsSwitchAnimating:Z

.field private mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastClickTime:J

.field private mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

.field private mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

.field private mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPackageLastChangeTime:J

.field private mPreLeftScreenActivityName:Ljava/lang/String;

.field private mPreLeftScreenDrawableResName:Ljava/lang/String;

.field private mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

.field private mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

.field private mPreMainEntryResDarkIconName:Ljava/lang/String;

.field private mPreMainEntryResLightIconName:Ljava/lang/String;

.field private mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

.field mResetClockRunnable:Ljava/lang/Runnable;

.field private mShowPreviewButton:Landroid/widget/TextView;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSwitchAnimator:Landroid/animation/AnimatorSet;

.field private mSwitchSystemUser:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private final mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

.field private mWallpaperPreviewAvailable:Z

.field private mWallpaperRefreshOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchSystemUser:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mWallpaperPreviewAvailable:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardClockContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/LockScreenMagazineController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/LockScreenMagazineController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPackageLastChangeTime:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreLeftScreenActivityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsLongPress:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsSwitchAnimating:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/LockScreenMagazineController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLastClickTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/LockScreenMagazineController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPackageLastChangeTime:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreLeftScreenActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreLeftScreenDrawableResName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryResDarkIconName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryResLightIconName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mWallpaperPreviewAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->needHideProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->initLockScreenMagazinePkgExist()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/LockScreenMagazineController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->setViewsAlpha(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->startAppStoreToDownload()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->switchToKeyguardWallpaperCarousel(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->updateWallpaperPreview(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "LockScreenMagazineController"

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->TAG:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLastClickTime:J

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/systemui/statusbar/LockScreenMagazineController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$1;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$2;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController$5;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mWallpaperRefreshOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$7;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mResetClockRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v2, 0x7f0a032e

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    const v2, 0x7f0a0212

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mShowPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mShowPreviewButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mWallpaperRefreshOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardClockContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v2, 0x7f0a013e

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLockScreenMagazineController(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v2, 0x7f0a02b9

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchSystemUser:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v2, 0x7f0a01e0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_provider_authority"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->updateWallpaperPreview(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    :cond_0
    return-void
.end method

.method private cancelSwitchAnimate()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method private initLockScreenMagazinePkgExist()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setLockScreenMagazinePkgExist(Z)V

    return-void
.end method

.method private needHideProvider()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private postDelayedResetClock()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mResetClockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeResetClockCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mResetClockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setViewsAlpha(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardClockContainer;->setClockAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setViewsAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchSystemUser:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startAppStoreToDownload()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&back=true&ref=keyguard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "miui_keyguard"

    const-string/jumbo v3, "start to download lockscreen wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startSwitchAnimator()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsSwitchAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->switchToKeyguardWallpaperCarousel(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordLockScreenMagazinePreviewAction(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->switchToKeyguardWallpaperCarousel(Z)V

    goto :goto_0
.end method

.method private switchToKeyguardWallpaperCarousel(Z)V
    .locals 4

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->cancelSwitchAnimate()V

    if-eqz p1, :cond_1

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$9;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$10;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->removeResetClockCallbacks()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->postDelayedResetClock()V

    :cond_0
    return-void

    :cond_1
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$11;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v2, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/LockScreenMagazineController$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$12;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateWallpaperPreview(Z)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getPreLeftScreenActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreLeftScreenActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreLeftScreenDrawableResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreLeftScreenDrawableResName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreMainEntryResDarkIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPreMainEntryResLightIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPreTransToLeftScreenDrawableResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

    return-object v0
.end method

.method public getWallPaperDes()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    return-object v0
.end method

.method public handleSingleClickEvent()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mWallpaperPreviewAvailable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->startSwitchAnimator()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleBottomButtonClicked(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startButtonLayoutAnimate(Z)V

    goto :goto_0
.end method

.method public initLockScreenMagazinePreRes()V
    .locals 3

    const-string/jumbo v0, "LockScreenMagazineController"

    const-string/jumbo v1, "initLockScreenMagazinePreRes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;-><init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initPreMainEntryIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryResDarkIconName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryResLightIconName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public isSwitchAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsSwitchAnimating:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;IFF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsLongPress:Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    if-ne p2, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQSFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float v1, p4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsLongPress:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->handleSingleClickEvent()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->cancelSwitchAnimate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->removeResetClockCallbacks()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardClockContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardClockContainer;->setClockAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setViewsAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mSwitchSystemUser:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetNotificationContainerParent()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->switchToKeyguardWallpaperCarousel(Z)V

    :cond_1
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    :cond_0
    return-void
.end method

.method public setWallPaperViewsAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mIsSwitchAnimating:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public updateResources(Z)V
    .locals 3

    const-string/jumbo v0, "LockScreenMagazineController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateResources isThemeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLockScreenMagazineStatus()V

    :cond_0
    return-void
.end method
