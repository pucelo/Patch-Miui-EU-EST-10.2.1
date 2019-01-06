.class public Lcom/android/keyguard/MiuiKeyguardClock;
.super Lcom/android/keyguard/MiuiKeyguardBaseClock;
.source "MiuiKeyguardClock.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiKeyguardClock$1;,
        Lcom/android/keyguard/MiuiKeyguardClock$2;,
        Lcom/android/keyguard/MiuiKeyguardClock$3;,
        Lcom/android/keyguard/MiuiKeyguardClock$4;,
        Lcom/android/keyguard/MiuiKeyguardClock$5;
    }
.end annotation


# static fields
.field private static mBatteryInfo:Landroid/widget/TextView;

.field private static mCurrentDate:Landroid/widget/TextView;

.field private static mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

.field private static mHorizontalDot:Landroid/widget/TextView;

.field private static mHorizontalHour:Landroid/widget/TextView;

.field private static mHorizontalMin:Landroid/widget/TextView;

.field private static mHorizontalTimeLayout:Landroid/widget/LinearLayout;

.field private static mOwnerInfo:Landroid/widget/TextView;

.field private static mShowHorizontalTime:Z

.field private static mTimeLayout:Landroid/widget/FrameLayout;

.field private static mVerticalHour:Landroid/widget/TextView;

.field private static mVerticalMin:Landroid/widget/TextView;

.field private static mVerticalTimeLayout:Landroid/widget/LinearLayout;


# instance fields
.field private m24HourFormat:Z

.field private mAttached:Z

.field private final mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

.field private mCalendar:Lmiui/date/Calendar;

.field private mDarkMode:Z

.field private mDensityDpi:I

.field private mFontScale:F

.field private mFontScaleChanged:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasNotification:Z

.field private mHorizontalTimeLayoutHeight:F

.field private mHorizontalTimePaddingTop:F

.field private mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

.field private mInSmartCoverSmallWindowMode:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLanguage:Ljava/lang/String;

.field private mLockScreenMagazineInfo:Landroid/widget/TextView;

.field private mLunarCalendarInfo:Landroid/widget/TextView;

.field private mOldHasNotification:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShowBatteryInfo:Z

.field private mSimCardInfo:Landroid/widget/TextView;

.field private final mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

.field private mThinFontTypeface:Landroid/graphics/Typeface;

.field private mVerticalTimeLayoutHeight:F

.field private mVerticalTimePaddingTop:F

.field private mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

.field private final mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;


# direct methods
.method static synthetic -get0()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get3()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/MiuiKeyguardClock;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/MiuiKeyguardClock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/keyguard/MiuiKeyguardClock;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/MiuiKeyguardClock;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardClock;->updateBatteryLevelText(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MiuiKeyguardClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDarkMode:Z

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOldHasNotification:Z

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$1;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$2;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$3;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$4;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock$4;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$5;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Mitype2018-clock.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private clearAnim()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    return-void
.end method

.method private getLockScreenMagazineInfo()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1103bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockScreenMagazineWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->isTitleCustomized:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->title:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v2, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->entryTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_4

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    iget-object v0, v1, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->entryTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private getLockScreenMagazineInfoTranslationY()F
    .locals 5

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    iget v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    sub-float v2, v3, v4

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleNotificationChange()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    iget-boolean v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOldHasNotification:Z

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    aput v3, v8, v9

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_1

    move v3, v5

    :goto_1
    aput v3, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v6, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    aput v3, v8, v9

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_3

    :goto_3
    aput v5, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v11, [Landroid/animation/Animator;

    aput-object v1, v3, v9

    aput-object v2, v3, v10

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    iput-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOldHasNotification:Z

    :goto_4
    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v5, v4

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_5

    move v3, v5

    :goto_5
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v6, :cond_6

    :goto_6
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_4

    :cond_5
    move v3, v4

    goto :goto_5

    :cond_6
    move v5, v4

    goto :goto_6
.end method

.method private showHorizontalTime()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    sub-float v0, v1, v2

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->clearAnim()V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->playVerticalToHorizontalAnim()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getLockScreenMagazineInfoTranslationY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->handleNotificationChange()V

    goto :goto_0
.end method

.method private showVerticalTime()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->clearAnim()V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->playHorizontalToVerticalAnim()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateBatteryLevelText(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowBatteryInfo:Z

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    const v1, 0x7f110690

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f110691

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    const v1, 0x7f11068f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowBatteryInfo:Z

    goto :goto_0
.end method

.method private updateClockView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->showVerticalTime()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->showHorizontalTime()V

    goto :goto_0
.end method

.method private updateDrawableResources()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDarkMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f080232

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const v1, 0x7f080231

    goto :goto_0
.end method

.method private updateViewsForNotch()V
    .locals 3

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_0

    const v1, 0x7f070185

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const v1, 0x7f070184

    goto :goto_0
.end method

.method private updateViewsLayoutParams()V
    .locals 12

    const v11, 0x7f0701a4

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07020d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsForNotch()V

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0701b6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v10, v8, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0701b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f070184

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v7, v10, v8, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07016f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07048c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v7, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateViewsTextSize()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070186

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v5, 0x7f0701b8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0701ef

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v5, 0x7f0701f1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    int-to-float v6, v1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    int-to-float v6, v4

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    int-to-float v6, v1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    int-to-float v6, v4

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    int-to-float v6, v1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    int-to-float v6, v0

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    int-to-float v6, v0

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    int-to-float v6, v2

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    int-to-float v6, v2

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    int-to-float v6, v2

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    int-to-float v6, v2

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getHeight()I

    move-result v0

    return v0
.end method

.method public getClockVisibleHeight()F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    sub-float/2addr v2, v3

    sub-float v0, v1, v2

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    const-string/jumbo v1, "is_small_window"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDarkMode:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->setDarkMode(Z)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsTextSize()V

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScale:F

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDensityDpi:I

    if-eq v3, v0, :cond_1

    iput-boolean v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsTextSize()V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsLayoutParams()V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateDrawableResources()V

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDensityDpi:I

    :cond_1
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateLockScreenMagazineInfo()V

    iput-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLanguage:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->clearAnim()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onFinishInflate()V

    const v1, 0x7f0a02d0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mTimeLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsForNotch()V

    const v1, 0x7f0a030e

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const v1, 0x7f0a030f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const v1, 0x7f0a0111

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    const v1, 0x7f0a0110

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    const v1, 0x7f0a0112

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    const v1, 0x7f0a0113

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0310

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00a2

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a009b

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    const v1, 0x7f0a02ff

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0a02fe

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const v1, 0x7f0a02fd

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    const v1, 0x7f0a02fb

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    const v1, 0x7f0a02fc

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/MiuiKeyguardClock$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiKeyguardClock$6;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/keyguard/MiuiKeyguardClock$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiKeyguardClock$7;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/keyguard/MiuiKeyguardClock$8;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiKeyguardClock$8;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateHourFormat()V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateOwnerInfo()V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateLunarCalendarInfo()V

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDisplaySimCardInfo:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->initCarrier(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateSimCardInfo()V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onMeasure(II)V

    iget-boolean v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v1, :cond_1

    int-to-float v2, v1

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    iput-boolean v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    :cond_0
    return-void

    :cond_1
    if-lez v0, :cond_0

    int-to-float v2, v0

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public playHorizontalToVerticalAnim()V
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v16, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    move/from16 v18, v0

    sub-float v15, v17, v18

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Sine;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Sine;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v16, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v18, 0xd2

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    neg-float v0, v15

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    neg-float v0, v15

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    neg-float v0, v15

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_3

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    neg-float v0, v15

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v17, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_4

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getLockScreenMagazineInfoTranslationY()F

    move-result v20

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v18, 0x1a9

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v17, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/keyguard/MiuiKeyguardClock$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/MiuiKeyguardClock$10;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
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

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public playVerticalToHorizontalAnim()V
    .locals 26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v23, v0

    add-float v22, v22, v23

    sub-float v20, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    move/from16 v22, v0

    sub-float v19, v21, v22

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v24, v23, v25

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v22, 0xd2

    move-wide/from16 v0, v22

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v24, v23, v25

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_1

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v22, 0xd2

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v22, "scaleX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v22, "scaleY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_3

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v20, v24

    const/16 v25, 0x0

    aput v24, v23, v25

    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_4

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v24, v23, v25

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v24, v23, v25

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v22, 0x1a9

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v24, v23, v25

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_5

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v22, 0xd2

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v24, v23, v25

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-wide/16 v22, 0x1a9

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v21, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_6

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    const-wide/16 v22, 0xd2

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v24, v23, v25

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getLockScreenMagazineInfoTranslationY()F

    move-result v24

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v22, 0x1a9

    move-wide/from16 v0, v22

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v21, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/keyguard/MiuiKeyguardClock$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/MiuiKeyguardClock$9;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setClockAlpha(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardClock;->setAlpha(F)V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDarkMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateTime()V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateDrawableResources()V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public updateBatteryInfoAndDate()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowBatteryInfo:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "is_pad"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateClockView(ZZ)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->showHorizontalTime()V

    goto :goto_0
.end method

.method public updateHourFormat()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    return-void
.end method

.method public updateLockScreenMagazineInfo()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazinePkgExist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getLockScreenMagazineInfo()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockScreenMagazineInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLunarCalendarInfo()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_lunar_calendar"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    const-string/jumbo v2, "YY\u5e74 N\u6708e"

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateOwnerInfo()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->getOwnerInfo(Landroid/security/MiuiLockPatternUtils;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfoString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfoString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateResidentTimeZone(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSimCardInfo()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDisplaySimCardInfo:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v1, " | "

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mRealCarrier:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1103bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateTime()V
    .locals 6

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-le v1, v3, :cond_0

    add-int/lit8 v1, v1, -0xc

    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    if-eqz v3, :cond_2

    const v0, 0x7f1103b9

    :goto_0
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const v0, 0x7f1103ba

    goto :goto_0
.end method

.method public updateTimeAndBatteryInfo()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateBatteryInfoAndDate()V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateTime()V

    return-void
.end method

.method public updateTimeZone(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmiui/date/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateTime()V

    return-void
.end method
