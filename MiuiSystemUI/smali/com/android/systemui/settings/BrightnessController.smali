.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$1;,
        Lcom/android/systemui/settings/BrightnessController$2;,
        Lcom/android/systemui/settings/BrightnessController$3;,
        Lcom/android/systemui/settings/BrightnessController$4;,
        Lcom/android/systemui/settings/BrightnessController$5;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final IS_PINECONE:Z

.field public static final MINIMUM_BACKLIGHT:I

.field public static final RANGE:I

.field private static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private mAutoScreenBrightness:I

.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mManualScreenBrightness:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUpdateMiuiSliderRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateMiuiSliderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateBrightnessMode(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateBrightness(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updatePineconeBrightness()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    sput-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    const-string/jumbo v0, "pinecone"

    const-string/jumbo v1, "auto_brightness_optimize_strategy"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    const-string/jumbo v0, "persist.power.useautobrightadj"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/settings/BrightnessController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sget v0, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    rsub-int v0, v0, 0xff

    sput v0, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    const/16 v0, 0x80

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mManualScreenBrightness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutoScreenBrightness:I

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateMiuiSliderRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyUI;->initDependencies(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$6;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPowerManager:Landroid/os/PowerManager;

    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->getBrightnessFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    :cond_0
    return-void
.end method

.method private getBrightnessFile()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "/sys/class/leds/lcd-backlight/brightness"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1106001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v0, v1, v2

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setPineconeAutoBrightnessCustomizing(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "setAutoBrightnessCustomizing"

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    return-void
.end method

.method private updateBrightness(Z)V
    .locals 5

    const/4 v3, -0x2

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getScreenBrightness()I

    move-result v2

    sget v3, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutoScreenBrightness:I

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutoScreenBrightness:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/16 v2, 0x80

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mManualScreenBrightness:I

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mManualScreenBrightness:I

    sget v3, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private updateBrightnessMode(Z)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x2

    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->startWatching(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updatePineconeBrightness()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->updateBrightness(Z)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getScreenBrightness()I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    :goto_1
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->stopWatching()V

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getPineconeScreenBrightness()I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->updateBrightness(Z)V

    goto :goto_1
.end method

.method private updatePineconeBrightness()V
    .locals 6

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getPineconeScreenBrightness()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    sget v2, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    sget v2, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public getPineconeScreenBrightness()I
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    sget v3, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    const-string/jumbo v3, "getScreenBrightness"

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getScreenBrightness()I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    const-string/jumbo v3, "getScreenBrightnessReal"

    const-class v4, Ljava/lang/Integer;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZIZ)V
    .locals 7

    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/settings/BrightnessController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v1, p3, v4

    invoke-static {v1}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenBrightness(I)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    :cond_2
    int-to-float v4, p3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sget v5, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    invoke-static {v0}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenAutoBrightness(F)V

    if-eqz p4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    float-to-int v5, v0

    const/16 v6, 0xdb

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    new-instance v4, Lcom/android/systemui/settings/BrightnessController$7;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;F)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    sget v4, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v1, p3, v4

    invoke-static {v1}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenBrightness(I)V

    if-eqz p4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v5, 0xda

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    new-instance v4, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public onStart(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->stopObserverBrightness()V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenAutoBrightness(F)V

    :cond_0
    :goto_0
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v3, :cond_2

    :goto_1
    const-string/jumbo v3, ""

    invoke-virtual {v2, v1, p1, v0, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setPineconeAutoBrightnessCustomizing(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onStop(I)V
    .locals 6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/settings/BrightnessController;->startObserverBrightness(J)V

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v2}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenAutoBrightness(F)V

    :cond_0
    :goto_0
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {v2, v1, p1, v0, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    return-void

    :cond_2
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setPineconeAutoBrightnessCustomizing(Z)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public registerCallbacks()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void
.end method

.method public startObserverBrightness(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->startWatching(J)V

    :cond_0
    return-void
.end method

.method public stopObserverBrightness()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->stopWatching()V

    :cond_0
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->stopWatching()V

    :cond_1
    return-void
.end method
