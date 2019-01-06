.class public Lmiui/hardware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field private static final CONFIG_SERVICENAME_RESOURCEID:I

.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final EXT_COLOR_PROC_STATE:I = 0xf

.field private static final HIDL_SERVICENAME_DEFAULT:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_ADAPT:I = 0x0

.field public static final SCREEN_ENHANCE:I = 0x1

.field public static final SCREEN_EYECARE:I = 0x3

.field public static final SCREEN_HIGHLIGHT:I = 0xb

.field public static final SCREEN_MONOCHROME:I = 0x4

.field public static final SCREEN_NIGHTLIGHT:I = 0x9

.field public static final SCREEN_STANDARD:I = 0x2

.field public static final SCREEN_SUNLIGHT:I = 0x8

.field private static final SUPPORT_SET_FEATURE:Z

.field private static TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmiui/hardware/display/DisplayFeatureManager;


# instance fields
.field private mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

.field private mLock:Ljava/lang/Object;

.field private mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/hardware/display/DisplayFeatureManager;Lmiui/hardware/display/DisplayFeatureServiceProxy;)Lmiui/hardware/display/DisplayFeatureServiceProxy;
    .registers 2

    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "support_screen_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "config_displayFeatureHidlServiceName"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initServiceDeathRecipient()V

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lmiui/hardware/display/DisplayFeatureManager;
    .registers 2

    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_13

    const-class v1, Lmiui/hardware/display/DisplayFeatureManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_12

    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {v0}, Lmiui/hardware/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initProxyLocked()V
    .registers 9

    :try_start_0
    sget-boolean v4, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v4, :cond_54

    sget v4, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    if-nez v4, :cond_49

    const-string/jumbo v3, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

    :goto_b
    sget-object v4, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initProxyLoced CONFIG_SERVICENAME_RESOURCEID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " hidlServiceName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "default"

    invoke-static {v3, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v4, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v6, 0x2711

    invoke-interface {v2, v4, v6, v7}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    new-instance v4, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v4, v2}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    :cond_48
    :goto_48
    return-void

    :cond_49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_54
    const-string/jumbo v4, "DisplayFeatureControl"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v4, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v4, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v4, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_48

    :catch_6b
    move-exception v1

    goto :goto_48
.end method

.method private initServiceDeathRecipient()V
    .registers 2

    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_c

    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$1;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$1;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    :goto_b
    return-void

    :cond_c
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$2;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$2;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    goto :goto_b
.end method


# virtual methods
.method public getColorPrefer()I
    .registers 3

    const-string/jumbo v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .registers 3

    const-string/jumbo v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .registers 3

    const-string/jumbo v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setScreenEffect(II)V
    .registers 7

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenEffect mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    :cond_2e
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v0, v2, p1, p2, v3}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setFeature(IIII)V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    :cond_3a
    monitor-exit v1

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
