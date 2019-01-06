.class public Lmiui/util/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# static fields
.field public static final FLAG_ONLY_SET_VOLUME:I = 0x100000

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHiFiVolume(Landroid/content/Context;)I
    .registers 6

    :try_start_0
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v3, "hifi_volume"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hifi_volume="

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    move-result v3

    return v3

    :catch_23
    move-exception v1

    const/4 v3, 0x0

    return v3
.end method

.method public static getNewValidatedRingerModeForUser(Landroid/content/Context;II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    return p1
.end method

.method public static getValidatedRingerMode(Landroid/content/Context;I)I
    .registers 3

    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getValidatedRingerModeForUser(Landroid/content/Context;II)I
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_b

    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->getNewValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v1

    return v1

    :cond_b
    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    if-nez p1, :cond_14

    if-eqz v0, :cond_19

    return v3

    :cond_14
    if-ne v3, p1, :cond_19

    if-nez v0, :cond_19

    return v2

    :cond_19
    return p1
.end method

.method public static isHiFiMode(Landroid/content/Context;)Z
    .registers 6

    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    const-string/jumbo v3, "hifi_mode"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v1, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isNewSilentEnabled(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public static isNewVibrateEnabled(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static isNewVibrateEnabledForUser(Landroid/content/Context;I)Z
    .registers 4

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    return v1
.end method

.method public static isSilentEnabled(Landroid/content/Context;)Z
    .registers 4

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_9

    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isNewSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    return v1

    :cond_9
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public static isVibrateEnabled(Landroid/content/Context;)Z
    .registers 3

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_9

    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isNewVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    return v1

    :cond_9
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static isVibrateEnabled(Landroid/content/Context;I)Z
    .registers 3

    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static isVibrateEnabledForUser(Landroid/content/Context;I)Z
    .registers 4

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_9

    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->isNewVibrateEnabledForUser(Landroid/content/Context;I)Z

    move-result v1

    return v1

    :cond_9
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    return v1
.end method

.method public static isVibrateEnabledForUser(Landroid/content/Context;II)Z
    .registers 11

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v5, "vibrator"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    sget-boolean v5, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v5, :cond_26

    const/4 v0, 0x0

    :goto_14
    if-eq v0, p1, :cond_2a

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vibrate_in_silent"

    invoke-static {v5, v6, v3, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_28

    :goto_25
    return v3

    :cond_26
    const/4 v0, 0x2

    goto :goto_14

    :cond_28
    move v3, v4

    goto :goto_25

    :cond_2a
    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "vibrate_in_normal"

    sget-boolean v5, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    if-eqz v5, :cond_40

    move v5, v3

    :goto_38
    invoke-static {v6, v7, v5, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_3f

    move v4, v3

    :cond_3f
    return v4

    :cond_40
    move v5, v4

    goto :goto_38
.end method

.method public static newToggleSilentForUser(Landroid/content/Context;II)V
    .registers 5

    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void

    :cond_c
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getLastestQuietMode(Landroid/content/Context;)I

    move-result v0

    goto :goto_7
.end method

.method public static setHiFiVolume(Landroid/content/Context;I)V
    .registers 5

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hifi_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public static setVibrateSetting(Landroid/content/Context;ZZ)V
    .registers 4

    const/4 v0, -0x3

    invoke-static {p0, p1, p2, v0}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    return-void
.end method

.method public static setVibrateSettingForUser(Landroid/content/Context;ZZI)V
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_18

    const-string/jumbo v0, "vibrate_in_silent"

    move-object v1, v0

    :goto_a
    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :goto_d
    invoke-static {v2, v1, v0, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_1f

    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;ZZ)V

    :goto_17
    return-void

    :cond_18
    const-string/jumbo v0, "vibrate_in_normal"

    move-object v1, v0

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    goto :goto_d

    :cond_1f
    invoke-static {p0, p3}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;I)V

    goto :goto_17
.end method

.method public static toggleSilent(Landroid/content/Context;I)V
    .registers 3

    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->toggleSilentForUser(Landroid/content/Context;II)V

    return-void
.end method

.method public static toggleSilentForUser(Landroid/content/Context;II)V
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v2, :cond_a

    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->newToggleSilentForUser(Landroid/content/Context;II)V

    return-void

    :cond_a
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v4, v2, :cond_2b

    invoke-static {p0, v3, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    :goto_20
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    if-eqz p1, :cond_28

    invoke-virtual {v0, v4, v3, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_28
    return-void

    :cond_29
    const/4 v1, 0x0

    goto :goto_20

    :cond_2b
    const/4 v1, 0x2

    goto :goto_20
.end method

.method public static toggleVibrateSetting(Landroid/content/Context;)V
    .registers 2

    const/4 v0, -0x3

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSettingForUser(Landroid/content/Context;I)V

    return-void
.end method

.method public static toggleVibrateSettingForUser(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    return-void
.end method

.method private static validateRingerMode(Landroid/content/Context;I)V
    .registers 6

    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v2

    if-eq v1, v2, :cond_16

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_16
    return-void
.end method

.method private static validateRingerMode(Landroid/content/Context;ZZ)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz p1, :cond_1a

    const/4 v2, 0x1

    :goto_16
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_19
    return-void

    :cond_1a
    const/4 v2, 0x0

    goto :goto_16
.end method
