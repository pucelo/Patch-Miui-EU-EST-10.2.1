.class public final Landroid/provider/MiuiSettings$AntiSpam;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AntiSpam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$AntiSpam$1;,
        Landroid/provider/MiuiSettings$AntiSpam$2;,
        Landroid/provider/MiuiSettings$AntiSpam$3;
    }
.end annotation


# static fields
.field public static ACTION_SOURCE_CALL:Ljava/lang/String; = null

.field public static ACTION_SOURCE_OTHER:Ljava/lang/String; = null

.field public static ACTION_SOURCE_SMS:Ljava/lang/String; = null

.field public static final AGENT:I = 0x2

.field public static final AGENT_NUM_STATE:Ljava/lang/String; = "agent_num_state"

.field public static final AGENT_NUM_STATE_SIM_2:Ljava/lang/String; = "agent_num_state_sim_2"

.field public static final ANTISPAM_ENABLE_FOR_SIM_1:Ljava/lang/String; = "antispam_enable_for_sim_1"

.field public static final ANTISPAM_ENABLE_FOR_SIM_2:Ljava/lang/String; = "antispam_enable_for_sim_2"

.field public static final ANTISPAM_MODE:Ljava/lang/String; = "antispam_mode_enable"

.field public static final ANTISPAM_PKG:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final ANTISPAM_SETTINGS_SHARED_FOR_SIMS:Ljava/lang/String; = "antispam_settings_shared_for_sims"

.field public static final AUTO_TIMER_OF_QM_ENABLE:Ljava/lang/String; = "auto_timer_of_qm_enable"

.field public static final CALL_ACT_OF_REPEATED:Ljava/lang/String; = "call_act_of_repeated"

.field private static final CALL_ACT_OF_VIP:Ljava/lang/String; = "call_act_of_vip"

.field public static final CALL_TRANSFER_NUM_STATE:Ljava/lang/String; = "call_transfer_num_state"

.field public static final CONTACT_CALL_MODE:Ljava/lang/String; = "contact_call_mode"

.field public static final CONTACT_SMS_MODE:Ljava/lang/String; = "contact_sms_mode"

.field public static final DISABLE:I = 0x0

.field public static final EMPTY_CALL_MODE:Ljava/lang/String; = "empty_call_mode"

.field public static final ENABLE:I = 0x1

.field private static final END_TIME_OF_QM:Ljava/lang/String; = "end_time_of_qm"

.field public static final FRAUD:I = 0x1

.field public static final FRAUD_NUM_STATE:Ljava/lang/String; = "fraud_num_state"

.field public static final FRAUD_NUM_STATE_SIM_2:Ljava/lang/String; = "fraud_num_state_sim_2"

.field public static final GUIDE_TYPE_DECLINE:I = 0x1

.field public static final GUIDE_TYPE_END_CALL:I = 0x2

.field public static final GUIDE_TYPE_MANUAL_MARK:I = 0x3

.field public static final HARASS:I = 0xa

.field public static final HARASS_NUM_STATE:Ljava/lang/String; = "harass_num_state"

.field public static final HARASS_NUM_STATE_SIM_2:Ljava/lang/String; = "harass_num_state_sim_2"

.field private static final HAS_NEW_ANTISPAM:Ljava/lang/String; = "has_new_antispam"

.field public static final IS_BLACKLIST_NOTIFICATION:I = 0x0

.field public static KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String; = null

.field public static final KEY_SIM_ID:Ljava/lang/String; = "key_sim_id"

.field public static final MARK_GUIDE_AGENT:Ljava/lang/String; = "mark_guide_agent"

.field public static final MARK_GUIDE_FRAUD:Ljava/lang/String; = "mark_guide_fraud"

.field public static final MARK_GUIDE_HARASS:Ljava/lang/String; = "mark_guide_harass"

.field public static final MARK_GUIDE_IS_SET:Ljava/lang/String; = "mark_guide_is_set"

.field public static final MARK_GUIDE_SELL:Ljava/lang/String; = "mark_guide_sell"

.field public static final MARK_GUIDE_TYPE:Ljava/lang/String; = "mark_guide_type"

.field public static final MARK_GUIDE_YELLOWPAGE_CID:Ljava/lang/String; = "mark_guide_yellowpage_cid"

.field public static final MARK_NUM_GUIDE_CLASS:Ljava/lang/String; = "com.miui.antispam.ui.activity.MarkNumGuideActivity"

.field public static final MARK_PROVIDER_ID_MIUI:I = 0x18e

.field public static final MARK_TIME_AGENT:Ljava/lang/String; = "mark_time_agent"

.field public static final MARK_TIME_AGENT_SIM_2:Ljava/lang/String; = "mark_time_agent_sim_2"

.field public static final MARK_TIME_DEFAULT:I = 0x32

.field public static final MARK_TIME_FRAUD:Ljava/lang/String; = "mark_time_fraud"

.field public static final MARK_TIME_FRAUD_SIM_2:Ljava/lang/String; = "mark_time_fraud_sim_2"

.field public static final MARK_TIME_HARASS:Ljava/lang/String; = "mark_time_harass"

.field public static final MARK_TIME_HARASS_SIM_2:Ljava/lang/String; = "mark_time_harass_sim_2"

.field public static final MARK_TIME_SELL:Ljava/lang/String; = "mark_time_sell"

.field public static final MARK_TIME_SELL_SIM_2:Ljava/lang/String; = "mark_time_sell_sim_2"

.field private static final NEXT_AUTO_END_TIME_OF_QM:Ljava/lang/String; = "next_auto_end_time_of_qm"

.field private static final NEXT_AUTO_START_TIME_OF_QM:Ljava/lang/String; = "next_auto_start_time_of_qm"

.field public static final NOTIFICATION_BLOCK_TYPE:Ljava/lang/String; = "notification_block_type"

.field public static final NOTIFICATION_INTERCEPT_NUMBER:Ljava/lang/String; = "notification_intercept_number"

.field public static final NOTIFICATION_SHOW_TYPE:Ljava/lang/String; = "notification_show_type"

.field public static final NOT_BLACKLIST_NOTIFICATION:I = 0x1

.field public static final OVERSEA_CALL_MODE:Ljava/lang/String; = "oversea_call_mode"

.field public static final QUIET_MODE_ENABLE:Ljava/lang/String; = "quiet_mode_enable"

.field private static final QUIET_REPEAT_TYPE:Ljava/lang/String; = "quiet_repeat_type"

.field public static final QUIET_WRISTBAND:Ljava/lang/String; = "quiet_wristband"

.field public static final REPEATED_MARK_NUM_PERMISSION:Ljava/lang/String; = "repeated_mark_num_permission"

.field public static final SELL:I = 0x3

.field public static final SELL_NUM_STATE:Ljava/lang/String; = "sell_num_state"

.field public static final SELL_NUM_STATE_SIM_2:Ljava/lang/String; = "sell_num_state_sim_2"

.field public static final SERVICE_SMS_MODE:Ljava/lang/String; = "service_sms_mode"

.field public static final SHOW_ALL:I = 0x0

.field public static final SHOW_NONE:I = 0x2

.field public static final SHOW_NOTIFICATION_TYPE:Ljava/lang/String; = "show_notification_type"

.field public static final SHOW_NOTIFICATION_TYPE_SIM_2:Ljava/lang/String; = "show_notification_type_sim_2"

.field public static final SHOW_NOT_BLACKLIST:I = 0x1

.field public static final SIM_ID_1:I = 0x1

.field public static final SIM_ID_2:I = 0x2

.field public static final SMS_CLASSIFIER_AUTO_UPDATE:Ljava/lang/String; = "sms_classifier_auto_update"

.field public static final SMS_CLASSIFIER_UPDATE_TIME:Ljava/lang/String; = "sms_classifier_update_time"

.field private static final START_TIME_OF_QM:Ljava/lang/String; = "start_time_of_qm"

.field public static final STRANGER_CALL_MODE:Ljava/lang/String; = "stranger_call_mode"

.field public static final STRANGER_SMS_MODE:Ljava/lang/String; = "stranger_sms_mode"

.field public static final VIP_ALL_CONTACTS:I = 0x0

.field public static final VIP_CUSTOM:I = 0x2

.field private static final VIP_LIST_FOR_QM:Ljava/lang/String; = "vip_list_for_qm"

.field public static final VIP_STAR_CONTACTS:I = 0x1

.field public static final mapIdToBlockType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mapIdToMarkTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final mapIdToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "antispam_action_source"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String;

    const-string/jumbo v0, "action_source_sms"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_SMS:Ljava/lang/String;

    const-string/jumbo v0, "action_source_call"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_CALL:Ljava/lang/String;

    const-string/jumbo v0, "action_source_other"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$1;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$1;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$2;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$2;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$3;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$3;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndTimeForQuietMode(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "end_time_of_qm"

    const/16 v2, 0x1a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMarkedNumberBlockType(I)I
    .registers 3

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMode(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNextAutoEndTime(Landroid/content/Context;)J
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "next_auto_end_time_of_qm"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNextAutoStartTime(Landroid/content/Context;)J
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "next_auto_start_time_of_qm"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNotificationType(Landroid/content/Context;I)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const-string/jumbo v0, "show_notification_type"

    :goto_a
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_10
    const-string/jumbo v0, "show_notification_type_sim_2"

    goto :goto_a
.end method

.method public static getQuietRepeatType(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quiet_repeat_type"

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSMSClassifierUpdateTime(Landroid/content/Context;)J
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_classifier_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartTimeForQuietMode(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "start_time_of_qm"

    const/16 v2, 0x564

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getState(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVipListForQuietMode(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vip_list_for_qm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasNewAntispam(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_new_antispam"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAntiSpam(Landroid/content/Context;)Z
    .registers 7

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    return v2

    :cond_e
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_37

    const/4 v0, 0x1

    :goto_19
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_39

    const/4 v1, 0x1

    :goto_24
    if-nez v0, :cond_28

    if-eqz v1, :cond_3f

    :cond_28
    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_30

    if-nez v0, :cond_3b

    :cond_30
    invoke-static {p0, v5}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    :goto_36
    return v1

    :cond_37
    const/4 v0, 0x0

    goto :goto_19

    :cond_39
    const/4 v1, 0x0

    goto :goto_24

    :cond_3b
    move v1, v2

    goto :goto_36

    :cond_3d
    move v1, v3

    goto :goto_36

    :cond_3f
    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-static {p0, v5}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    :cond_49
    return v2
.end method

.method public static isAntiSpamEnableForSim(Landroid/content/Context;I)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-ne p1, v2, :cond_f

    const-string/jumbo v0, "antispam_enable_for_sim_1"

    :goto_a
    invoke-static {v1, v0, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_f
    const-string/jumbo v0, "antispam_enable_for_sim_2"

    goto :goto_a
.end method

.method public static isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "antispam_settings_shared_for_sims"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_timer_of_qm_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static isMarkNumBlockOpen(Landroid/content/Context;I)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    const-string/jumbo v2, "fraud_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "agent_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    const-string/jumbo v2, "sell_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "harass_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16

    :cond_2b
    const/4 v2, 0x2

    if-ne p1, v2, :cond_55

    const-string/jumbo v2, "fraud_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "agent_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_41

    :cond_40
    :goto_40
    return v0

    :cond_41
    const-string/jumbo v2, "sell_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "harass_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_40

    move v0, v1

    goto :goto_40

    :cond_55
    return v1
.end method

.method private static isMarkNumBlockSet(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "mark_guide_is_set"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getState(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getState(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, -0x3

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isQuietModeEnableForCurrentUser(Landroid/content/Context;)Z
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://antispamCommon/zenmode"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_2b
    .catchall {:try_start_1 .. :try_end_1a} :catchall_30

    move-result-object v6

    if-eqz v6, :cond_24

    const/4 v0, 0x1

    if-eqz v6, :cond_23

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_23
    return v0

    :cond_24
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0

    :catch_2b
    move-exception v7

    :try_start_2c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_29

    :catchall_30
    move-exception v0

    throw v0
.end method

.method public static isQuietWristband(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "quiet_wristband"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static isRepeatedCallActionEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isRepeatedCallEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSMSClassifierAutoUpdate(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_classifier_auto_update"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVipCallActionEnable(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_act_of_vip"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static mapIdToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_18

    const-string/jumbo v0, ""

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "mark_guide_fraud"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "mark_guide_agent"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "mark_guide_sell"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "mark_guide_harass"

    return-object v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_b
        0x3 -> :sswitch_f
        0xa -> :sswitch_13
    .end sparse-switch
.end method

.method public static resetMarkedNumberBlockSettings(Landroid/content/Context;)V
    .registers 3

    const/4 v1, 0x1

    const-string/jumbo v0, "fraud_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "agent_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "sell_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "harass_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "fraud_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "agent_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "sell_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "harass_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setAntiSpamEnableForSim(Landroid/content/Context;IZ)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    const-string/jumbo v0, "antispam_enable_for_sim_1"

    :goto_a
    invoke-static {v1, v0, p2}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void

    :cond_e
    const-string/jumbo v0, "antispam_enable_for_sim_2"

    goto :goto_a
.end method

.method public static setAntiSpamSettingsSharedForSims(Landroid/content/Context;Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "antispam_settings_shared_for_sims"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setAutoTimerOfQuietMode(Landroid/content/Context;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_timer_of_qm_enable"

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setEndTimeForQuietMode(Landroid/content/Context;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "end_time_of_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setHasNewAntispam(Landroid/content/Context;Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_new_antispam"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setMarkNumBlockSet(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "mark_guide_is_set"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->setState(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setState(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMode(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setNextAutoEndTime(Landroid/content/Context;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "next_auto_end_time_of_qm"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static setNextAutoStartTime(Landroid/content/Context;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "next_auto_start_time_of_qm"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static setNotificationType(Landroid/content/Context;II)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    const-string/jumbo v0, "show_notification_type"

    :goto_a
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const-string/jumbo v0, "show_notification_type_sim_2"

    goto :goto_a
.end method

.method public static setQuietMode(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static setQuietRepeatType(Landroid/content/Context;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quiet_repeat_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setQuietWristband(Landroid/content/Context;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_wristband"

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setRepeatedCallActionEnable(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->setRepeatedCallEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setSMSClassifierAutoUpdate(Landroid/content/Context;Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_classifier_auto_update"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setSMSClassifierUpdateTime(Landroid/content/Context;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_classifier_update_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static setStartTimeForQuietMode(Landroid/content/Context;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "start_time_of_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setState(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setVipCallActionEnable(Landroid/content/Context;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "call_act_of_vip"

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setVipListForQuietMode(Landroid/content/Context;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vip_list_for_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static shouldShowGuidingDialog(Landroid/content/Context;I)Z
    .registers 5

    const/4 v2, 0x1

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3b

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3b

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockSet(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3b

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method
