.class public Lcom/android/keyguard/fod/MiuiGxzwIconView;
.super Landroid/widget/FrameLayout;
.source "MiuiGxzwIconView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwIconView$1;,
        Lcom/android/keyguard/fod/MiuiGxzwIconView$2;,
        Lcom/android/keyguard/fod/MiuiGxzwIconView$3;,
        Lcom/android/keyguard/fod/MiuiGxzwIconView$4;,
        Lcom/android/keyguard/fod/MiuiGxzwIconView$5;,
        Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;
    }
.end annotation


# static fields
.field private static AOD_DOZE_SUSPEND_DELAY:J

.field private static TYPE_PUT_UP_DETECT:I


# instance fields
.field private final FINGERPRINT_ERROR_LOCKOUT:I

.field private final FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthFailedSignal:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDozing:Z

.field private mEnrolling:Z

.field private mFingerprintLockout:Z

.field private mGotoUnlockRunnable:Ljava/lang/Runnable;

.field private mGxzwIconHeight:I

.field private mGxzwIconTransparent:Z

.field private mGxzwIconWidth:I

.field private mGxzwIconX:I

.field private mGxzwIconY:I

.field private mHandler:Landroid/os/Handler;

.field private mHasPressureSensor:Z

.field private mHighlightView:Landroid/view/View;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mKeyguardAuthen:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

.field private mNeedVibrator:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPortraitOrientation:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPressureValue:I

.field private mPutUpSensorListener:Landroid/hardware/SensorEventListener;

.field private mScreenHeight:I

.field private mScreenOn:Z

.field private mScreenWidth:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowed:Z

.field private mTouchDown:Z

.field private mUnlockLockout:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mAuthFailedSignal:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHasPressureSensor:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Lcom/android/keyguard/fod/MiuiGxzwAnimView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwIconView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mAuthFailedSignal:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/fod/MiuiGxzwIconView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mFingerprintLockout:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->dismissFingerpirntIcon()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->showBouncer()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->showFingerprintIcon()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const v0, 0x1fa2656

    sput v0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->TYPE_PUT_UP_DETECT:I

    const-wide/16 v0, 0x32

    sput-wide v0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->AOD_DOZE_SUSPEND_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPressureValue:I

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenOn:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mNeedVibrator:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mFingerprintLockout:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mUnlockLockout:Z

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPortraitOrientation:Z

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwIconView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwIconView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView$2;-><init>(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGotoUnlockRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwIconView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView$3;-><init>(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPutUpSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->FINGERPRINT_ERROR_LOCKOUT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mAuthFailedSignal:Z

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;-><init>(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwIconView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView$5;-><init>(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->initView()V

    return-void
.end method

.method private dismissFingerpirntIcon()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setGxzwIconTransparent()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->unscheduleSetIconTransparen()V

    return-void
.end method

.method private initView()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0074

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f0a0103

    invoke-virtual {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHighlightView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHighlightView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {p0, p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mVibrator:Landroid/os/Vibrator;

    iput v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconX:I

    iput v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconY:I

    iput v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconWidth:I

    iput v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenWidth:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenHeight:I

    const/16 v3, 0x1304

    invoke-virtual {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "action_set_icon_transparent"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "action_set_icon_transparent"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwUtils;->hasPressureSensor()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHasPressureSensor:Z

    return-void
.end method

.method private isInValidRegion(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/high16 v4, -0x3d880000    # -62.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v3, v0, v4

    if-ltz v3, :cond_0

    cmpl-float v3, v1, v4

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconWidth:I

    add-int/lit8 v3, v3, 0x3e

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconHeight:I

    add-int/lit8 v3, v3, 0x3e

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private onTouchDown()V
    .locals 8

    const/16 v7, 0x3e9

    const/4 v6, 0x1

    const-string/jumbo v2, "MiuiGxzwViewIcon"

    const-string/jumbo v3, "onTouchDown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->turnOnAodIfScreenOff()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setGxzwIconOpaque()V

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mFingerprintLockout:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mUnlockLockout:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGotoUnlockRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iput-boolean v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    iput-boolean v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mNeedVibrator:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v2

    sget-wide v4, Lcom/android/keyguard/fod/MiuiGxzwIconView;->AOD_DOZE_SUSPEND_DELAY:J

    invoke-virtual {v2, v4, v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    invoke-interface {v2, v6}, Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;->onCollectStateChange(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardCompatibilityHelperForP;->saveShowTouchesState(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHasPressureSensor:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startRecognizingAnim()V

    goto :goto_0
.end method

.method private onTouchUp(Z)V
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v3, "MiuiGxzwViewIcon"

    const-string/jumbo v4, "onTouchUp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGotoUnlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    invoke-interface {v3, v2}, Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;->onCollectStateChange(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mNeedVibrator:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v3

    sget-wide v4, Lcom/android/keyguard/fod/MiuiGxzwIconView;->AOD_DOZE_SUSPEND_DELAY:J

    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    :cond_2
    if-eqz p1, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startBackAnim()V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->stopTip()V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardCompatibilityHelperForP;->restoreShowTouchesState(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_4
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isUnlockByGxzw()Z

    move-result v2

    :cond_5
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->stopAnim()V

    goto :goto_0
.end method

.method private registerPutUpSensor()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "MiuiGxzwViewIcon"

    const-string/jumbo v2, "sensor not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Lcom/android/keyguard/fod/MiuiGxzwIconView;->TYPE_PUT_UP_DETECT:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPutUpSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "MiuiGxzwViewIcon"

    const-string/jumbo v2, "no put up sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestWindowFocus()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private scheduleSetIconTransparen()V
    .locals 6

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "scheduleSetIconTransparen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private setGxzwIconOpaque()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "setGxzwIconOpaque"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->updateGxzwIconAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    invoke-interface {v0, v2}, Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;->onIconStateChange(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    return-void
.end method

.method private setGxzwIconTransparent()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "setGxzwIconTransparent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->updateGxzwIconAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    invoke-interface {v0, v2}, Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;->onIconStateChange(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->turnOffScreenIfInAod()V

    :cond_1
    return-void
.end method

.method private showBouncer()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/Application;

    invoke-virtual {v2}, Lcom/android/systemui/Application;->getSystemUIApplication()Lcom/android/systemui/SystemUIApplication;

    move-result-object v0

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanels()V

    return-void
.end method

.method private showFingerprintIcon()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setGxzwIconOpaque()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->turnOnAodIfScreenOff()V

    :cond_0
    return-void
.end method

.method private turnOffScreenIfInAod()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "MiuiGxzwViewIcon"

    const-string/jumbo v3, "turnOffScreenIfInAod"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/systemui/doze/DozeHost;->fireAodState(Z)V

    :cond_1
    return-void
.end method

.method private turnOnAodIfScreenOff()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "MiuiGxzwViewIcon"

    const-string/jumbo v3, "turnOnAodIfScreenOff"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v2, :cond_0

    if-ne v1, v4, :cond_0

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/systemui/doze/DozeHost;->fireAodState(Z)V

    :cond_0
    return-void
.end method

.method private unregisterPutUpSensor()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "sensor not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPutUpSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private unscheduleSetIconTransparen()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "unscheduleSetIconTransparen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private updateGxzwIconAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setAlpha(F)V

    return-void
.end method

.method private updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V
    .locals 11

    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPortraitOrientation:Z

    if-eqz v9, :cond_2

    iget v7, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconX:I

    iget v8, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconY:I

    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconWidth:I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    if-nez v9, :cond_1

    const/4 v9, 0x2

    if-eq v3, v9, :cond_0

    const/4 v9, 0x3

    if-ne v3, v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPortraitOrientation:Z

    if-eqz v9, :cond_3

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenWidth:I

    :goto_1
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPortraitOrientation:Z

    if-eqz v9, :cond_4

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenHeight:I

    :goto_2
    sub-int v9, v5, v7

    sub-int v7, v9, v6

    sub-int v9, v4, v8

    sub-int v8, v9, v2

    :cond_1
    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_2
    iget v8, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconX:I

    iget v7, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconY:I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconWidth:I

    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconHeight:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenHeight:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenWidth:I

    goto :goto_2
.end method

.method private updateOrientation(Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPortraitOrientation:Z

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPortraitOrientation:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private userActivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "MiuiGxzwViewIcon"

    const-string/jumbo v2, "dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setGxzwIconOpaque()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->unregisterPutUpSensor()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->unscheduleSetIconTransparen()V

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->onTouchUp(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->dismiss()V

    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchKeyEvent: keycode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->showFingerprintIcon()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x162
        :pswitch_0
    .end packed-switch
.end method

.method public isShowFingerprintIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->updateOrientation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyguardAuthen(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->onKeyguardAuthen(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->updateOrientation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mScreenOn:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return v5

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->userActivity()V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch down: mTouchDown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mShowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->onTouchDown()V

    goto :goto_1

    :pswitch_1
    iput v4, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPressureValue:I

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch up or cancel: mTouchDown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mShowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v5}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->onTouchUp(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    const/high16 v1, 0x45000000    # 2048.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPressureValue:I

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "press value: , mPressureValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPressureValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPressureValue:I

    const/16 v1, 0x46

    if-le v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mNeedVibrator:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHasPressureSensor:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "pressure value is more than 70, vibrator!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mEnrolling:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mNeedVibrator:Z

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startRecognizingAnim()V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isInValidRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mTouchDown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v5}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->onTouchUp(Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCollectGxzwListener(Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;

    return-void
.end method

.method public setEnrolling(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mEnrolling:Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setEnrolling(Z)V

    return-void
.end method

.method public setUnlockLockout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mUnlockLockout:Z

    return-void
.end method

.method public show(Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "MiuiGxzwViewIcon"

    const-string/jumbo v3, "show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mNeedVibrator:Z

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->show(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mKeyguardAuthen:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mPortraitOrientation:Z

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconX:I

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconY:I

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconWidth:I

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconHeight:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconWidth:I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mGxzwIconHeight:I

    const/16 v3, 0x7e2

    const v4, 0x1800608

    const/4 v5, -0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    const-string/jumbo v1, "gxzw_icon"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->registerPutUpSensor()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setVisibility(I)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v6, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startDozing()V
    .locals 3

    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "startDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startDozing()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->registerPutUpSensor()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->requestWindowFocus()V

    :cond_0
    return-void
.end method

.method public stopDozing()V
    .locals 4

    const-string/jumbo v2, "MiuiGxzwViewIcon"

    const-string/jumbo v3, "stopDozing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->stopDozing()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mDozing:Z

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mShowed:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setGxzwIconOpaque()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->unregisterPutUpSensor()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->unscheduleSetIconTransparen()V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
