.class public final Landroid/provider/MiuiSettings$SilenceMode;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SilenceMode"
.end annotation


# static fields
.field protected static final DEBUG_MODE:Z

.field public static final LASTEST_MODE:Ljava/lang/String; = "default_mode"

.field public static final MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

.field public static final MISTAT_SILENCE_DND:Ljava/lang/String; = "silence_DND"

.field public static final MIUI_ALARMS:I = 0x3

.field public static final MIUI_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final MIUI_NO_INTERRUPTIONS:I = 0x2

.field public static final MUTE_MUSIC:Ljava/lang/String; = "mute_music"

.field public static final MUTE_MUSIC_AT_SILENT:Ljava/lang/String; = "mute_music_at_silent"

.field public static final NORMAL:I = 0x0

.field public static final REMAIN_TIME:Ljava/lang/String; = "remain_time"

.field public static final SHOW_NOTIFICATION:Ljava/lang/String; = "show_notification"

.field public static final SILENCE_MODE:Ljava/lang/String; = "zen_mode"

.field private static final TAG:Ljava/lang/String; = "SilenceMode"

.field public static final VIP_ENABLE:Ljava/lang/String; = "vip_enable"

.field public static final VOLUME_MUSIC_BEFORE_MUTE:Ljava/lang/String; = "volume_music_before_mute"

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x4

.field public static final isSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const-string/jumbo v0, "SilenceMode.MOD"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3c

    const-string/jumbo v0, "support_new_silentmode"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_18
    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "normal"

    aput-object v2, v0, v1

    const-string/jumbo v1, "DND"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "null"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "silence"

    aput-object v1, v0, v3

    const-string/jumbo v1, "new"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    return-void

    :cond_3c
    move v0, v1

    goto :goto_18
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static getLastestQuietMode(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .registers 3

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isDNDEnabled(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_9

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x3

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->isSilenceModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isSilenceModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isVIPModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static muteMusicStream(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mute_music"

    const/4 v4, -0x3

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :cond_19
    move v0, v1

    goto :goto_16
.end method

.method public static reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    if-eqz v1, :cond_6b

    const-string/jumbo v1, "SilenceMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportRingerModeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v1, v3, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setRemainTime(Landroid/content/Context;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "remain_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;I)V
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_notification"

    const/4 v4, -0x3

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :cond_19
    move v0, v1

    goto :goto_16
.end method
