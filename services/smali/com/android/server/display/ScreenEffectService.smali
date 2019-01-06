.class public Lcom/android/server/display/ScreenEffectService;
.super Lcom/android/server/SystemService;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ScreenEffectService$LocalService;,
        Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;,
        Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;,
        Lcom/android/server/display/ScreenEffectService$SettingsObserver;,
        Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_MONOCHROME_MODE:I = 0x3

.field private static final MSG_UPDATE_NIGHT_LIGHT_COLOR:I = 0x5

.field private static final MSG_UPDATE_PAPER_MODE:I = 0x1

.field private static final MSG_UPDATE_PAPER_MODE_CACHE:I = 0x4

.field private static final MSG_UPDATE_SCREEN_OPTIMIZE:I = 0x2

.field private static final SUPPORT_MONOCHROME_MODE:Z

.field private static final TAG:Ljava/lang/String; = "ScreenEffectService"

.field private static sDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field static sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

.field private mDisplayState:I

.field private mDriveMode:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMonochromeModeEnabled:Z

.field private mMonochromeModeType:I

.field private mMonochromeWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNightLightBrightness:I

.field private mNightLightColor:I

.field private mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/MiuiRampAnimator",
            "<",
            "Lmiui/hardware/display/DisplayFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private mPaperModeEnabled:Z

.field private mPaperModeLevel:I

.field private mPaperModeMinRate:I

.field private mScreenColorLevel:I

.field private mScreenOptimizeMode:I

.field private mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

.field private mTopAppPkg:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/MiuiRampAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/display/ScreenEffectService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/display/ScreenEffectService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13()Lcom/android/server/display/DisplayPowerController;
    .registers 1

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mDriveMode:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/ScreenEffectService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/ScreenEffectService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mDriveMode:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/display/ScreenEffectService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/display/ScreenEffectService;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/display/ScreenEffectService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->loadSettings()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateMonochromeMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateNightLightColor()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updatePaperModeOffCache()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/ScreenEffectService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ScreenEffectService;->updatePaperMode(ZZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    sput-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ScreenEffectThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;-><init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkSettingsData()V
    .registers 9

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_30

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_enabled"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_30
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_level"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5c

    const-string/jumbo v1, "persist.sys.eyecare_cache"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_level"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_level"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8c

    const-string/jumbo v1, "persist.sys.display_prefer"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_level"

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/hardware/display/DisplayFeatureManager;->getColorPrefer()I

    move-result v3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8c
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_be

    const-string/jumbo v1, "persist.sys.display_ce"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_be

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hardware/display/DisplayFeatureManager;->isAdEnable()Z

    move-result v1

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v1, v2, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_be
    :goto_be
    return-void

    :cond_bf
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_level"

    sget v3, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_5c

    :cond_ce
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hardware/display/DisplayFeatureManager;->getScreenGamut()I

    move-result v1

    if-nez v1, :cond_e5

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v1, v2, v7, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_be

    :cond_e5
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_optimize_mode"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_be
.end method

.method public static getDimDurationExtraTime(J)J
    .registers 4

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/ScreenEffectService$LocalService;->getDimDurationExtraTime(J)J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private loadSettings()V
    .registers 10

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_paper_mode_enabled"

    invoke-static {v1, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_f5

    move v1, v2

    :goto_15
    iput-boolean v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_paper_mode_level"

    sget v5, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_optimize_mode"

    sget v5, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_color_level"

    invoke-static {v1, v4, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "drive_mode_drive_mode"

    invoke-static {v1, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mDriveMode:I

    sget-boolean v1, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_monochrome_mode_enabled"

    invoke-static {v1, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_f8

    :goto_6a
    iput-boolean v2, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_monochrome_mode"

    invoke-static {v1, v2, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screen_monochrome_mode_white_list"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    :cond_86
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_light_level"

    invoke-static {v1, v2, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v7, :cond_fb

    and-int/lit16 v1, v0, 0xff

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    const v1, 0xff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11080018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    :cond_e1
    :goto_e1
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v1, :cond_f4

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1108001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeMinRate:I

    :cond_f4
    return-void

    :cond_f5
    move v1, v3

    goto/16 :goto_15

    :cond_f8
    move v2, v3

    goto/16 :goto_6a

    :cond_fb
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    goto :goto_e1
.end method

.method static setDisplayPowerController(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    sput-object p0, Lcom/android/server/display/ScreenEffectService;->sDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-void
.end method

.method private setScreenEyeCare(ZZ)V
    .registers 7

    const/4 v1, 0x0

    sget-boolean v2, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    if-eqz v2, :cond_28

    if-nez p2, :cond_10

    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    :cond_10
    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeMinRate:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    if-eqz p1, :cond_29

    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    :goto_22
    if-eqz p2, :cond_25

    move v0, v1

    :cond_25
    invoke-virtual {v3, v2, v0}, Lcom/android/server/display/MiuiRampAnimator;->animateTo(II)Z

    :cond_28
    :goto_28
    return-void

    :cond_29
    move v2, v1

    goto :goto_22

    :cond_2b
    if-eqz p1, :cond_36

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_28

    :cond_36
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V

    goto :goto_28
.end method

.method public static startScreenEffectService()V
    .registers 2

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    if-eqz v1, :cond_15

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-nez v1, :cond_15

    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/display/ScreenEffectService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_15
    return-void
.end method

.method public static updateLocalScreenEffect(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;->updateLocalScreenEffect(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private updateMonochromeMode()V
    .registers 8

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    if-nez v4, :cond_d

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v2, v6, v3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    :goto_c
    return-void

    :cond_d
    iget v4, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    if-ne v4, v2, :cond_17

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v3, v6, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_c

    :cond_17
    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_27
    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    if-eqz v0, :cond_31

    :goto_2b
    invoke-virtual {v4, v6, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_c

    :cond_2f
    const/4 v0, 0x0

    goto :goto_27

    :cond_31
    move v2, v3

    goto :goto_2b
.end method

.method private updateNightLightColor()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    iget v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    return-void
.end method

.method private updatePaperMode(ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ScreenEffectService;->setScreenEyeCare(ZZ)V

    return-void
.end method

.method private updatePaperModeOffCache()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    add-int/lit8 v0, v0, -0x1

    :goto_e
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/MiuiRampAnimator;->animateTo(II)Z

    :cond_12
    return-void

    :cond_13
    const/4 v0, -0x1

    goto :goto_e
.end method

.method static updateScreenEffect(I)V
    .registers 2

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;->updateScreenEffect(I)V

    :cond_9
    return-void
.end method

.method private updateScreenOptimize()V
    .registers 5

    iget-boolean v2, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    sget v2, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    const/4 v1, 0x2

    :cond_13
    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v2, v0, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    return-void

    :cond_20
    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    const/4 v0, 0x2

    goto :goto_1a
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_115

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->checkSettingsData()V

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->loadSettings()V

    new-instance v1, Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/ScreenEffectService$SettingsObserver;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    iput-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_level"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_level"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "drive_mode_drive_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;-><init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_monochrome_mode_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_monochrome_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_monochrome_mode_white_list"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_c5
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_light_level"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_db
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v1, :cond_fa

    new-instance v0, Lcom/android/server/display/ScreenEffectService$1;

    const-string/jumbo v1, "papermode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ScreenEffectService$1;-><init>(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/display/MiuiRampAnimator;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {v1, v2, v0}, Lcom/android/server/display/MiuiRampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    new-instance v2, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;

    invoke-direct {v2, p0}, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/MiuiRampAnimator;->setListener(Lcom/android/server/display/MiuiRampAnimator$Listener;)V

    :cond_fa
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v1, :cond_115

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_115
    return-void
.end method

.method public onStart()V
    .registers 3

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    new-instance v0, Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    sput-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    return-void
.end method
