.class public Lcom/android/server/display/DisplayPowerControllerInjector;
.super Ljava/lang/Object;
.source "DisplayPowerControllerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTwilight:Lcom/android/server/twilight/TwilightManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/display/DisplayPowerControllerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayPowerControllerInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBrightnessIfNeeded(Landroid/content/Context;I)I
    .registers 6

    const-string/jumbo v1, "persist.sys.smartcover_mode"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_34

    const/4 v0, 0x1

    :goto_c
    if-eqz p1, :cond_33

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/server/display/DisplayPowerControllerInjector;->useTwilightAdjustment()I

    move-result p1

    sget-object v1, Lcom/android/server/display/DisplayPowerControllerInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lattice cover adjust brightness to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return p1

    :cond_34
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static useTwilightAdjustment()I
    .registers 3

    const/16 v0, 0xff

    sget-object v2, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    if-nez v2, :cond_10

    const-class v2, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    sput-object v2, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    :cond_10
    sget-object v2, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    if-eqz v2, :cond_24

    sget-object v2, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v0, 0x7f

    :cond_24
    return v0
.end method
