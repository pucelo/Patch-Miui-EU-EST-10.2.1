.class public Lmiui/provider/SettingProviderHelper;
.super Ljava/lang/Object;
.source "SettingProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string/jumbo v0, ""

    :cond_9
    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_18
    const-string/jumbo v1, "media"

    return-object v1

    :cond_1c
    return-object v0
.end method

.method public static getRingtoneUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 4

    const-string/jumbo v0, "media"

    invoke-static {p0}, Lmiui/provider/SettingProviderHelper;->getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_12
    return-object p0
.end method

.method public static loadDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "ringtone_default"

    const-string/jumbo v1, "ringtone_default"

    sget v2, Lmiui/system/R$string;->def_ringtone:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "ringtone"

    sget v2, Lmiui/system/R$string;->def_ringtone:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "alarm_alert"

    sget v2, Lmiui/system/R$string;->def_alarm_alert:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "notification_sound"

    sget v2, Lmiui/system/R$string;->def_notification_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "calendar_alert"

    sget v2, Lmiui/system/R$string;->def_notification_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_delivered_sound"

    sget v2, Lmiui/system/R$string;->def_sms_delivered_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_received_sound"

    sget v2, Lmiui/system/R$string;->def_sms_received_sound:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "ringtone_sound_slot_1"

    sget v2, Lmiui/system/R$string;->def_ringtone_slot_1:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "ringtone_sound_slot_2"

    sget v2, Lmiui/system/R$string;->def_ringtone_slot_2:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_delivered_sound_slot_1"

    sget v2, Lmiui/system/R$string;->def_sms_delivered_sound_slot_1:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_delivered_sound_slot_2"

    sget v2, Lmiui/system/R$string;->def_sms_delivered_sound_slot_2:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_received_sound_slot_1"

    sget v2, Lmiui/system/R$string;->def_sms_received_sound_slot_1:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_received_sound_slot_2"

    sget v2, Lmiui/system/R$string;->def_sms_received_sound_slot_2:I

    invoke-static {p0, p1, v1, v2}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_34
    return-void
.end method
