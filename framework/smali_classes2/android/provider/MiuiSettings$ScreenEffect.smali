.class public final Landroid/provider/MiuiSettings$ScreenEffect;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenEffect"
.end annotation


# static fields
.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_PAPER_MODE_LEVEL:I

.field public static final DEFAULT_SCREEN_OPTIMIZE_MODE:I

.field public static final DEFAULT_SCREEN_SATURATION:I

.field public static final FLAG_SUPPORT_ADAPT_MODE:I = 0x1

.field public static final FLAG_SUPPORT_ENHANCE_MODE:I = 0x2

.field public static final FLAG_SUPPORT_MONOCHROME_MODE:I = 0x8

.field public static final FLAG_SUPPORT_STANDARD_MODE:I = 0x4

.field public static final MONOCHROME_MODE_DEFAULT:I = 0x2

.field public static final MONOCHROME_MODE_GLOBAL:I = 0x1

.field public static final MONOCHROME_MODE_LOCAL:I = 0x2

.field public static final NIGHT_LIGHT_LEVEL:Ljava/lang/String; = "night_light_level"

.field public static final PAPER_MODE_AUTO_TWILIGHT:I = 0x1

.field public static final PAPER_MODE_CUSTOMIZE_TIME:I = 0x2

.field public static final PAPER_MODE_DEFAULT:I = 0x1

.field public static final PAPER_MODE_GLOBAL:I = 0x1

.field public static final PAPER_MODE_LOCAL:I = 0x2

.field public static final PAPER_MODE_MAX_LEVEL:I

.field public static final PAPER_MODE_SCHEDULER_TYPE:Ljava/lang/String; = "paper_mode_scheduler_type"

.field public static final PAPER_MODE_TIME_CANCEL:I = 0x0

.field public static final PROPERTY_SCREEN_PAPER_MODE_LEVEL:Ljava/lang/String; = "persist.sys.eyecare_cache"

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_LEVEL:Ljava/lang/String; = "screen_color_level"

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_SELECTED:Ljava/lang/String; = "screen_color_selected"

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_EFFECT_SUPPORTED:I

.field public static final SCREEN_MONOCHROME_MODE:Ljava/lang/String; = "screen_monochrome_mode"

.field public static final SCREEN_MONOCHROME_MODE_ENABLED:Ljava/lang/String; = "screen_monochrome_mode_enabled"

.field public static final SCREEN_MONOCHROME_MODE_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_MONOCHROME_MODE_WHITE_LIST:Ljava/lang/String; = "screen_monochrome_mode_white_list"

.field public static final SCREEN_OPTIMIZE_ADAPT:I = 0x1

.field public static final SCREEN_OPTIMIZE_ENHANCE:I = 0x2

.field public static final SCREEN_OPTIMIZE_MODE:Ljava/lang/String; = "screen_optimize_mode"

.field public static final SCREEN_OPTIMIZE_STANDARD:I = 0x3

.field public static final SCREEN_PAPER_MODE:Ljava/lang/String; = "screen_paper_mode"

.field public static final SCREEN_PAPER_MODE_ENABLED:Ljava/lang/String; = "screen_paper_mode_enabled"

.field public static final SCREEN_PAPER_MODE_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_PAPER_MODE_LEVEL:Ljava/lang/String; = "screen_paper_mode_level"

.field public static final SCREEN_PAPER_MODE_TIME_ENABLED:Ljava/lang/String; = "screen_paper_mode_time_enabled"

.field public static final SCREEN_PAPER_MODE_TIME_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_PAPER_MODE_TIME_END:Ljava/lang/String; = "screen_paper_mode_time_end"

.field public static final SCREEN_PAPER_MODE_TIME_START:Ljava/lang/String; = "screen_paper_mode_time_start"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_END:Ljava/lang/String; = "screen_paper_mode_twilight_end"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_END_DEAULT:I = 0x438

.field public static final SCREEN_PAPER_MODE_TWILIGHT_START:Ljava/lang/String; = "screen_paper_mode_twilight_start"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_START_DEAULT:I = 0x168

.field public static final SCREEN_PAPER_MODE_WHITE_LIST:Ljava/lang/String; = "screen_paper_mode_white_list"

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field public static final isScreenPaperModeSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v0, "screen_effect_supported"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->getDefaultScreenOptimizeMode()I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    const-string/jumbo v0, "support_screen_paper_mode"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->getDefaultSaturation()I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_SATURATION:I

    const-string/jumbo v0, "sys.paper_mode_max_level"

    const-string/jumbo v1, "paper_mode_max_level"

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    const-string/jumbo v0, "sys.paper_mode_default_level"

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultSaturation()I
    .registers 3

    const/16 v0, 0xa

    const-string/jumbo v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0xb

    :cond_e
    const-string/jumbo v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getDefaultScreenOptimizeMode()I
    .registers 1

    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x2

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-static {v8, p1, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3e

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x0

    :goto_1e
    array-length v8, v2

    if-ge v1, v8, :cond_3e

    aget-object v4, v2, v1

    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3e
    return-object v7
.end method

.method public static isInPaperModeTimeSchedule(Landroid/content/Context;II)Z
    .registers 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v5, v1, 0x3c

    add-int v4, v5, v3

    const/4 v2, 0x0

    if-le p1, p2, :cond_1f

    if-lt v4, p2, :cond_1d

    if-ge v4, p1, :cond_1d

    const/4 v2, 0x0

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x1

    goto :goto_1c

    :cond_1f
    if-ge p1, p2, :cond_1c

    if-lt v4, p1, :cond_27

    if-ge v4, p2, :cond_27

    const/4 v2, 0x1

    goto :goto_1c

    :cond_27
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static isScreenPaperMode()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hareware/display/DisplayFeatureManager;->getEyeCare()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static setScreenModePkgList(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setScreenPaperMode(Z)V
    .registers 4

    if-eqz p0, :cond_13

    const-string/jumbo v1, "persist.sys.eyecare_cache"

    sget v2, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/hareware/display/DisplayFeatureManager;->setEyeCare(I)V

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/hareware/display/DisplayFeatureManager;->setEyeCare(I)V

    goto :goto_12
.end method
