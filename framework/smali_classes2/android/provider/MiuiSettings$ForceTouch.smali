.class public final Landroid/provider/MiuiSettings$ForceTouch;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForceTouch"
.end annotation


# static fields
.field private static final ForceTouchEnable:Ljava/lang/String; = "force_touch_enable"

.field private static mDeepPress:F

.field private static mLightPress:F

.field private static mSupportForceTouch:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeepPressure()F
    .registers 2

    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    const-string/jumbo v0, "force_touch_deep"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    :cond_17
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    return v0
.end method

.method public static getLightPressure()F
    .registers 2

    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    const-string/jumbo v0, "force_touch_light"

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    :cond_17
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v4

    if-nez v4, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "force_touch_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    :goto_16
    return v2

    :cond_17
    move v2, v3

    goto :goto_16
.end method

.method public static isSupport()Z
    .registers 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-gez v0, :cond_12

    const-string/jumbo v0, "support_force_touch"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_10
    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    :cond_12
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-ne v0, v1, :cond_19

    :goto_16
    return v1

    :cond_17
    move v0, v2

    goto :goto_10

    :cond_19
    move v1, v2

    goto :goto_16
.end method

.method public static setEnabled(Landroid/content/Context;Z)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "force_touch_enable"

    if-eqz p1, :cond_13

    move v1, v2

    :cond_13
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2
.end method
