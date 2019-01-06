.class public Lcom/android/keyguard/KeyguardClockContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardClockContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardClockContainer$1;,
        Lcom/android/keyguard/KeyguardClockContainer$2;,
        Lcom/android/keyguard/KeyguardClockContainer$3;,
        Lcom/android/keyguard/KeyguardClockContainer$4;,
        Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;
    }
.end annotation


# instance fields
.field private mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mDualClockOpen:Z

.field mDualClockOpenObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mResidentTimezone:Ljava/lang/String;

.field mResidentTimezoneObserver:Landroid/database/ContentObserver;

.field private mShowDualClock:Z

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardClockContainer;)Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardClockContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardClockContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardClockContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardClockContainer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardClockContainer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mCurrentTimezone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardClockContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpen:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardClockContainer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezone:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/keyguard/KeyguardClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/keyguard/KeyguardClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mCurrentTimezone:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpen:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mShowDualClock:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardClockContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockContainer$1;-><init>(Lcom/android/keyguard/KeyguardClockContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/KeyguardClockContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockContainer$2;-><init>(Lcom/android/keyguard/KeyguardClockContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/KeyguardClockContainer$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardClockContainer$3;-><init>(Lcom/android/keyguard/KeyguardClockContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/KeyguardClockContainer$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardClockContainer$4;-><init>(Lcom/android/keyguard/KeyguardClockContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private registerDualClockObserver()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_dual_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "resident_timezone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method private unregisterDualClockObserver()V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->getClockHeight()I

    move-result v0

    return v0
.end method

.method public getClockVisibleHeight()F
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->getClockVisibleHeight()F

    move-result v0

    return v0
.end method

.method public getTopMargin()F
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mShowDualClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07020d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockContainer;->registerDualClockObserver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockContainer;->unregisterDualClockObserver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0071

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardClockContainer;->addView(Landroid/view/View;)V

    check-cast v1, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockContainer;->updateKeyguardClock()V

    return-void
.end method

.method public onUserChanged()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public setClockAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->setClockAlpha(F)V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->setDarkMode(Z)V

    return-void
.end method

.method public updateClockView(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->updateClockView(ZZ)V

    return-void
.end method

.method public updateKeyguardClock()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mDualClockOpen:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezone:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezone:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockContainer;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mShowDualClock:Z

    if-eq v3, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mShowDualClock:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockContainer;->removeAllViews()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mShowDualClock:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0d0072

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardClockContainer;->addView(Landroid/view/View;)V

    check-cast v2, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockContainer;->mResidentTimezone:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->updateResidentTimeZone(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockContainer;->mCurrentTimezone:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->updateTimeZone(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const v3, 0x7f0d0071

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public updateTimeAndBatteryInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->updateTimeAndBatteryInfo()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer;->mClockView:Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;->updateTime()V

    return-void
.end method
