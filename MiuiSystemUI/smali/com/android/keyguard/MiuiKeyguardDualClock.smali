.class public Lcom/android/keyguard/MiuiKeyguardDualClock;
.super Landroid/widget/RelativeLayout;
.source "MiuiKeyguardDualClock.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiKeyguardDualClock$1;,
        Lcom/android/keyguard/MiuiKeyguardDualClock$2;,
        Lcom/android/keyguard/MiuiKeyguardDualClock$3;
    }
.end annotation


# instance fields
.field private m24HourFormat:Z

.field private mAttached:Z

.field private mAutoTimeZone:Z

.field mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mCalendar:Lmiui/date/Calendar;

.field private mDarkMode:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLanguage:Ljava/lang/String;

.field private mLocalCity:Landroid/widget/TextView;

.field mLocalCityObserver:Landroid/database/ContentObserver;

.field private mLocalDate:Landroid/widget/TextView;

.field private mLocalHour:Landroid/widget/TextView;

.field private mLocalMin:Landroid/widget/TextView;

.field private mLocalTimeDot:Landroid/widget/TextView;

.field private mLocalTimeZone:Ljava/lang/String;

.field private mResidentCalendar:Lmiui/date/Calendar;

.field private mResidentCity:Landroid/widget/TextView;

.field private mResidentDate:Landroid/widget/TextView;

.field private mResidentHour:Landroid/widget/TextView;

.field private mResidentMin:Landroid/widget/TextView;

.field private mResidentTimeDot:Landroid/widget/TextView;

.field private mResidentTimeZone:Ljava/lang/String;

.field private mThinFontTypeface:Landroid/graphics/Typeface;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/MiuiKeyguardDualClock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/MiuiKeyguardDualClock;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/MiuiKeyguardDualClock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAutoTimeZone:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/MiuiKeyguardDualClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateLocalCity()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MiuiKeyguardDualClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLanguage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mDarkMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAutoTimeZone:Z

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardDualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardDualClock$1;-><init>(Lcom/android/keyguard/MiuiKeyguardDualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardDualClock$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock$2;-><init>(Lcom/android/keyguard/MiuiKeyguardDualClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardDualClock$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock$3;-><init>(Lcom/android/keyguard/MiuiKeyguardDualClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCityObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Mitype2018-clock.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private updateLocalCity()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAutoTimeZone:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/MiuiKeyguardDualClock$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardDualClock$4;-><init>(Lcom/android/keyguard/MiuiKeyguardDualClock;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    const v2, 0x7f1101bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateResidentCityName()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentCity:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->getHeight()I

    move-result v0

    return v0
.end method

.method public getClockVisibleHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAttached:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAttached:Z

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportDualClock()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content://weather/actualWeatherData/1/1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCityObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCityObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_time_zone"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mDarkMode:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->setDarkMode(Z)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiKeyguardUtils"

    const-string/jumbo v2, "register weather observer:"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateResidentCityName()V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateLocalCity()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLanguage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAttached:Z

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v1, 0x7f0a0185

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCity:Landroid/widget/TextView;

    const v1, 0x7f0a0187

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalHour:Landroid/widget/TextView;

    const v1, 0x7f0a0189

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalTimeDot:Landroid/widget/TextView;

    const v1, 0x7f0a0188

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalMin:Landroid/widget/TextView;

    const v1, 0x7f0a0186

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalDate:Landroid/widget/TextView;

    const v1, 0x7f0a0237

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentCity:Landroid/widget/TextView;

    const v1, 0x7f0a0239

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentHour:Landroid/widget/TextView;

    const v1, 0x7f0a023b

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeDot:Landroid/widget/TextView;

    const v1, 0x7f0a023a

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentMin:Landroid/widget/TextView;

    const v1, 0x7f0a0238

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalMin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalTimeDot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentMin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeDot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLanguage:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalTimeZone:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateLocalCity()V

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeZone:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateResidentCityName()V

    new-instance v1, Lmiui/date/Calendar;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateHourFormat()V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateTime()V

    return-void
.end method

.method public setClockAlpha(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->setAlpha(F)V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mDarkMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateTime()V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public updateClockView(ZZ)V
    .locals 0

    return-void
.end method

.method public updateHourFormat()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->m24HourFormat:Z

    return-void
.end method

.method public updateResidentTimeZone(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeZone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmiui/date/Calendar;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateTime()V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateResidentCityName()V

    return-void
.end method

.method public updateTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalMin:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateTime(Lmiui/date/Calendar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentMin:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateTime(Lmiui/date/Calendar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public updateTime(Lmiui/date/Calendar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const/16 v3, 0x12

    invoke-virtual {p1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->m24HourFormat:Z

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-le v1, v3, :cond_0

    add-int/lit8 v1, v1, -0xc

    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->m24HourFormat:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    :cond_1
    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->m24HourFormat:Z

    if-eqz v3, :cond_2

    const v0, 0x7f1103b9

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const v0, 0x7f1103ba

    goto :goto_0
.end method

.method public updateTimeAndBatteryInfo()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateTime()V

    return-void
.end method

.method public updateTimeZone(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalTimeZone:Ljava/lang/String;

    new-instance v0, Lmiui/date/Calendar;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mLocalTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateTime()V

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->updateLocalCity()V

    return-void
.end method
