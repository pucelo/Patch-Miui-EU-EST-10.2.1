.class public Lcom/android/server/lights/MiuiLightsService;
.super Lcom/android/server/lights/LightsService;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/MiuiLightsService$1;,
        Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;,
        Lcom/android/server/lights/MiuiLightsService$LightContentObserver;,
        Lcom/android/server/lights/MiuiLightsService$LightImpl;,
        Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final LIGHT_ON_MS:I = 0x1f4

.field public static final LOW_TEMPERATURE_THRESHOLD:I = 0x28

.field private static final STOP_FLASH_MSG:I = 0x1


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsLedTurnOn:Z

.field private mIsLowTemp:Z

.field private mLedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSupportButtonLight:Z

.field private mSupportLedLight:Z

.field private mSupportTapFingerprint:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mIsLowTemp:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/lights/MiuiLightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/lights/MiuiLightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/MiuiLightsService;->mIsLowTemp:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/lights/MiuiLightsService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/lights/MiuiLightsService;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isDisableButtonLight()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnBatteryLight()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnButtonLight()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/lights/MiuiLightsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/lights/MiuiLightsService$1;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$LightImpl;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v6, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$LightImpl;)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v5, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$LightImpl;)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$LightImpl;)V

    aput-object v1, v0, v3

    return-void
.end method

.method static brightnessToColor(III)I
    .registers 7

    move v0, p1

    if-nez p0, :cond_36

    sget v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_36

    sget v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    const/16 v2, 0xc

    if-gt v1, v2, :cond_36

    if-gez p1, :cond_33

    const-string/jumbo v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid backlight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_33
    and-int/lit16 v0, p1, 0xfff

    :goto_35
    return v0

    :cond_36
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v1, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_35
.end method

.method private isDisableButtonLight()Z
    .registers 6

    const/4 v4, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "force_fsg_nav_bar"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "fsg_disable_hw_keys"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_15
    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_buttons_state"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "single_key_use_enable"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_30

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f

    :cond_32
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_buttons_state"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3e

    :goto_3d
    return v0

    :cond_3e
    move v0, v1

    goto :goto_3d
.end method

.method private isTurnOnBatteryLight()Z
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "default_battery_led_on"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "battery_light_turn_on"

    if-eqz v0, :cond_19

    move v1, v2

    :goto_11
    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1b

    :goto_18
    return v2

    :cond_19
    move v1, v3

    goto :goto_11

    :cond_1b
    move v2, v3

    goto :goto_18
.end method

.method private isTurnOnButtonLight()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_buttons_turn_on"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_81

    const-string/jumbo v0, "support_tap_fingerprint_sensor_to_home"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    const-string/jumbo v0, "support_button_light"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    const-string/jumbo v0, "support_led_light"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    new-instance v0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->observe()V

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/lights/MiuiLightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_buttons_state"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    :cond_4f
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    :cond_5d
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_81
    return-void
.end method
