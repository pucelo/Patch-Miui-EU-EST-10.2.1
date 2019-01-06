.class public Lcom/android/internal/hardware/AmbientDisplayConfiguration;
.super Ljava/lang/Object;
.source "AmbientDisplayConfiguration.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method

.method private alwaysOnDisplayAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private alwaysOnDisplayDebuggingEnabled()Z
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "debug.doze.aod"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    :cond_c
    return v0
.end method

.method private ambientDisplayAvailable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private boolSetting(Ljava/lang/String;II)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private boolSettingDefaultOff(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private boolSettingDefaultOn(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private pulseOnLongPressAvailable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public accessibilityInversionEnabled(I)Z
    .registers 3

    const-string/jumbo v0, "accessibility_display_inversion_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public alwaysOnAvailable()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnDisplayDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_c
    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public alwaysOnAvailableForUser(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public alwaysOnEnabled(I)Z
    .registers 3

    const-string/jumbo v0, "doze_always_on"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public ambientDisplayComponent()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public available()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public doubleTapSensorType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnLongPressEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public longPressSensorType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pulseOnDoubleTapAvailable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public pulseOnDoubleTapEnabled(I)Z
    .registers 3

    const-string/jumbo v0, "doze_pulse_on_double_tap"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public pulseOnLongPressEnabled(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnLongPressAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "doze_pulse_on_long_press"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public pulseOnNotificationAvailable()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    return v0
.end method

.method public pulseOnNotificationEnabled(I)Z
    .registers 3

    const-string/jumbo v0, "doze_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public pulseOnPickupAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public pulseOnPickupCanBeModified(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public pulseOnPickupEnabled(I)Z
    .registers 4

    const-string/jumbo v1, "doze_pulse_on_pick_up"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method
