.class public Lcom/android/server/display/BackLightController;
.super Ljava/lang/Object;
.source "BackLightController.java"


# static fields
.field private static final MANUAL_SPLINE_AVAILABLE:Z

.field private static MAX_BRIGHTNESS_SPLINE:Landroid/util/Spline; = null

.field private static final OLED_PROTECTION_ENABLED:Z

.field private static SCREEN_MANUAL_BRIGHTNESS_REVERSE_SPLINE:Landroid/util/Spline; = null

.field private static SCREEN_MANUAL_BRIGHTNESS_SPLINE:Landroid/util/Spline; = null

.field private static final TAG:Ljava/lang/String; = "BackLightController"

.field private static sMaxBrightness:I

.field private static sOriginalBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const v4, 0x1106001e

    const v3, 0x1106001d

    const/16 v2, 0xff

    sput v2, Lcom/android/server/display/BackLightController;->sOriginalBrightness:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/BackLightController;->OLED_PROTECTION_ENABLED:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/BackLightController;->MANUAL_SPLINE_AVAILABLE:Z

    sput v2, Lcom/android/server/display/BackLightController;->sMaxBrightness:I

    sget-boolean v0, Lcom/android/server/display/BackLightController;->OLED_PROTECTION_ENABLED:Z

    if-eqz v0, :cond_46

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1106001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1106001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/BackLightController;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->MAX_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    :cond_46
    sget-boolean v0, Lcom/android/server/display/BackLightController;->MANUAL_SPLINE_AVAILABLE:Z

    if-eqz v0, :cond_76

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/BackLightController;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->SCREEN_MANUAL_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/BackLightController;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->SCREEN_MANUAL_BRIGHTNESS_REVERSE_SPLINE:Landroid/util/Spline;

    :cond_76
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static brightnessMapping(IIIZLcom/android/server/display/AutomaticBrightnessController;)I
    .registers 11

    const/high16 v5, -0x40800000    # -1.0f

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/BackLightController;->brightnessMapping(IIIZLcom/android/server/display/AutomaticBrightnessController;F)I

    move-result v0

    return v0
.end method

.method static brightnessMapping(IIIZLcom/android/server/display/AutomaticBrightnessController;F)I
    .registers 8

    const/4 v1, 0x1

    sput p0, Lcom/android/server/display/BackLightController;->sOriginalBrightness:I

    sget-boolean v0, Lcom/android/server/display/BackLightController;->OLED_PROTECTION_ENABLED:Z

    if-eqz v0, :cond_1b

    if-eqz p3, :cond_24

    sget-object v0, Lcom/android/server/display/BackLightController;->MAX_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    invoke-virtual {v0, p5}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/android/server/display/BackLightController;->sMaxBrightness:I

    :goto_15
    sget v0, Lcom/android/server/display/BackLightController;->sMaxBrightness:I

    if-le p0, v0, :cond_1b

    sget p0, Lcom/android/server/display/BackLightController;->sMaxBrightness:I

    :cond_1b
    if-ne p0, p1, :cond_29

    sget v0, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_24
    const/16 v0, 0xff

    sput v0, Lcom/android/server/display/BackLightController;->sMaxBrightness:I

    goto :goto_15

    :cond_29
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT:Z

    if-eqz v0, :cond_52

    if-eqz p3, :cond_35

    invoke-virtual {p4}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v0

    if-nez v0, :cond_52

    :cond_35
    if-ne p0, p2, :cond_52

    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0}, Lcom/android/server/display/ScreenEffectService$LocalService;->getNightLightBrightness()I

    move-result v0

    return v0

    :cond_46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    :cond_52
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sget v0, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    add-int/lit8 v0, v0, -0x8

    shl-int v0, p0, v0

    return v0
.end method

.method private static clampScreenBrightness(I)I
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static createManualBrightnessSpline([I[I)Landroid/util/Spline;
    .registers 15

    const/high16 v12, 0x3fa00000    # 1.25f

    :try_start_2
    array-length v2, p0

    new-array v5, v2, [F

    new-array v6, v2, [F

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_17

    aget v7, p0, v1

    int-to-float v7, v7

    aput v7, v5, v1

    aget v7, p1, v1

    int-to-float v7, v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    const-string/jumbo v7, "BackLightController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Manual-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_37
    add-int/lit8 v7, v2, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_65

    const-string/jumbo v7, "BackLightController"

    const-string/jumbo v8, "  %7.1f: %7.6f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_63} :catch_66

    mul-float/2addr v4, v12

    goto :goto_37

    :cond_65
    return-object v3

    :catch_66
    move-exception v0

    const-string/jumbo v7, "BackLightController"

    const-string/jumbo v8, "Could not create manual-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    return-object v7
.end method

.method static getBrightness(IZ)I
    .registers 5

    move v0, p0

    sget-boolean v1, Lcom/android/server/display/BackLightController;->MANUAL_SPLINE_AVAILABLE:Z

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/server/display/BackLightController;->SCREEN_MANUAL_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    int-to-float v2, p0

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/BackLightController;->clampScreenBrightness(I)I

    move-result v0

    :cond_14
    sget-boolean v1, Lcom/android/server/display/BackLightController;->OLED_PROTECTION_ENABLED:Z

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_2a

    add-int/lit8 v1, v0, -0x1

    sget v2, Lcom/android/server/display/BackLightController;->sMaxBrightness:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xfe

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_2a
    invoke-static {v0}, Lcom/android/server/display/BackLightController;->clampScreenBrightness(I)I

    move-result v1

    return v1
.end method

.method static getOriginalBrightness()I
    .registers 1

    sget v0, Lcom/android/server/display/BackLightController;->sOriginalBrightness:I

    return v0
.end method

.method static getPos(IZ)I
    .registers 5

    move v0, p0

    sget-boolean v1, Lcom/android/server/display/BackLightController;->OLED_PROTECTION_ENABLED:Z

    if-eqz v1, :cond_17

    if-eqz p1, :cond_17

    add-int/lit8 v1, p0, -0x1

    mul-int/lit16 v1, v1, 0xfe

    sget v2, Lcom/android/server/display/BackLightController;->sMaxBrightness:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_17
    sget-boolean v1, Lcom/android/server/display/BackLightController;->MANUAL_SPLINE_AVAILABLE:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/display/BackLightController;->SCREEN_MANUAL_BRIGHTNESS_REVERSE_SPLINE:Landroid/util/Spline;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_26
    return v0
.end method

.method public static setNightLight(I)Z
    .registers 3

    const/4 v1, 0x0

    if-ltz p0, :cond_13

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;->setNightLight(I)V

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_13
    return v1
.end method
