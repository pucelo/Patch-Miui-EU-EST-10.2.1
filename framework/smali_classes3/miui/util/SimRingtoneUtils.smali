.class public Lmiui/util/SimRingtoneUtils;
.super Ljava/lang/Object;
.source "SimRingtoneUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSlotSettingRingtoneType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/16 v1, 0x8

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x10

    if-eq p0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsDeliveredUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsReceivedUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_28

    return-object v0

    :sswitch_5
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    :sswitch_8
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    :sswitch_b
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    :sswitch_e
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    :sswitch_11
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    :sswitch_14
    return-object v0

    :sswitch_15
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    return-object v0

    :sswitch_18
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    return-object v0

    :sswitch_1b
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    return-object v0

    :sswitch_1e
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    return-object v0

    :sswitch_21
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    return-object v0

    :sswitch_24
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    return-object v0

    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x4 -> :sswitch_b
        0x8 -> :sswitch_e
        0x10 -> :sswitch_11
        0x20 -> :sswitch_14
        0x40 -> :sswitch_15
        0x80 -> :sswitch_18
        0x100 -> :sswitch_21
        0x200 -> :sswitch_24
        0x400 -> :sswitch_1b
        0x800 -> :sswitch_1e
    .end sparse-switch
.end method

.method private static getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;
    .registers 4

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq p2, v0, :cond_10

    invoke-static {p0, p1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    invoke-static {p1, p2}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result p1

    :cond_10
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundActualUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraRingtoneTypeBySlot(II)I
    .registers 3

    if-ltz p1, :cond_c

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_d

    :cond_c
    return p0

    :cond_d
    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    if-nez p1, :cond_15

    const/16 v0, 0x40

    :goto_14
    return v0

    :cond_15
    const/16 v0, 0x80

    goto :goto_14

    :cond_18
    const/16 v0, 0x8

    if-ne p0, v0, :cond_24

    if-nez p1, :cond_21

    const/16 v0, 0x100

    :goto_20
    return v0

    :cond_21
    const/16 v0, 0x200

    goto :goto_20

    :cond_24
    const/16 v0, 0x10

    if-ne p0, v0, :cond_30

    if-nez p1, :cond_2d

    const/16 v0, 0x400

    :goto_2c
    return v0

    :cond_2d
    const/16 v0, 0x800

    goto :goto_2c

    :cond_30
    return p0
.end method

.method private static getSoundUniformSettingName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "ringtone_sound_use_uniform"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_f

    const-string/jumbo v0, "sms_delivered_sound_use_uniform"

    return-object v0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_17

    const-string/jumbo v0, "sms_received_sound_use_uniform"

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isDefaultSoundUniform(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->canSlotSettingRingtoneType(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->getSoundUniformSettingName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    :cond_18
    return v0
.end method

.method public static setDefaultSoundUniform(Landroid/content/Context;IZ)V
    .registers 6

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->canSlotSettingRingtoneType(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->getSoundUniformSettingName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
