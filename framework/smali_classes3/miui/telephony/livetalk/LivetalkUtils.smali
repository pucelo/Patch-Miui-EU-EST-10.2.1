.class public Lmiui/telephony/livetalk/LivetalkUtils;
.super Ljava/lang/Object;
.source "LivetalkUtils.java"


# static fields
.field public static final DAIL_MODE:Ljava/lang/String; = "dial_mode"

.field public static final DIAL_MODE_GENERAL:I = 0x0

.field public static final DIAL_MODE_LIVETALK:I = 0x1

.field public static final ENABLE_LIVETALK_SUMMARY_CN:Ljava/lang/String; = "enable_livetalk_summary_cn"

.field public static final ENABLE_LIVETALK_SUMMARY_EN:Ljava/lang/String; = "enable_livetalk_summary_en"

.field public static final ENABLE_LIVETALK_TITLE_CN:Ljava/lang/String; = "enable_livetalk_title_cn"

.field public static final ENABLE_LIVETALK_TITLE_EN:Ljava/lang/String; = "enable_livetalk_title_en"

.field public static final FROM_VIEW:Ljava/lang/String; = "fromView"

.field public static final INTENT_ACCEPT_BACK_CALL:Ljava/lang/String; = "com.miui.livetalk_ACCEPT_BACK_CALL"

.field private static final INTENT_MY_LIVETALK:Ljava/lang/String; = "com.miui.livetalk.MY_LIVETALK_VIEW"

.field private static final INTENT_PURCHASE_ACTION:Ljava/lang/String; = "com.miui.livetalk.PURCHASE_VIEW"

.field public static final INTENT_RECORD_CALL_BACK_INFO:Ljava/lang/String; = "com.miui.livetalk_RECORD_CALLBACK_INFO"

.field private static final INTENT_WELCOME_ACTION:Ljava/lang/String; = "com.miui.livetalk.WELCOME_VIEW"

.field public static final IS_LIVETALK_DIAL:Ljava/lang/String; = "isLivetalk"

.field public static final IS_NEED_PROMPT:I = 0x1

.field public static final LIVETALK_AVAILABLE:I = 0x1

.field public static final LIVETALK_AVAILABLE_STATUS:Ljava/lang/String; = "livetalk_available_status"

.field public static final LIVETALK_DIAL_RANGE:Ljava/lang/String; = "livetalk_dial_range"

.field public static final LIVETALK_DIAL_RANGE_DEMOSTIC:I = 0x1

.field public static final LIVETALK_DIAL_RANGE_INTERNATIONAL:I = 0x2

.field public static final LIVETALK_DIAL_RANGE_WHOLE:I = 0x0

.field public static final LIVETALK_ENABLED:Ljava/lang/String; = "livetalk_enabled"

.field public static final LIVETALK_INTERNAL_DIAL_AVAIABLE:Ljava/lang/String; = "internal_dial_avaiable"

.field public static final LIVETALK_INTERNAL_DIAL_ENABLE:Ljava/lang/String; = "internal_dial_enable"

.field public static final LIVETALK_INTERNATIONAL_DIAL_AVAIABLE:Ljava/lang/String; = "international_dial_avaiable"

.field public static final LIVETALK_INTERNATIONAL_DIAL_ENABLE:Ljava/lang/String; = "international_dial_enable"

.field public static final LIVETALK_NOT_AVAILABLE:I = 0x0

.field public static LIVETALK_NUMBER_POOL_VERSION:I = 0x0

.field public static final LIVETALK_RECENT_COUNTRY_REMAIN_MINS:Ljava/lang/String; = "recent_country_remain_mins"

.field public static final LIVETALK_REMAIN_MINUTES:Ljava/lang/String; = "livetalk_remain_minutes"

.field public static final LIVETALK_SERVICE_NAME:Ljava/lang/String; = "com.miui.livetalk.service.LivetalkService"

.field public static final LIVETALK_SERVICE_STATUS:Ljava/lang/String; = "livetalk_service_status"

.field public static final LIVETALK_SWITCH_STATE:Ljava/lang/String; = "livetalk_switch_state"

.field public static final LIVETALK_USE_CURRENT_MI_ACCOUNT:Ljava/lang/String; = "livetalk_use_current_account"

.field public static final LIVETALK_WITH_170:I = 0x2

.field private static final META_DATA_SUPPORT_LIVETALK:Ljava/lang/String; = "support_livetalk"

.field public static final MY_LIVETALK_FROM_CONTACTS:I = 0xca

.field public static final MY_LIVETALK_FROM_NOTIFICATION:I = 0xc8

.field public static final MY_LIVETALK_FROM_SETTING:I = 0xc9

.field public static final NEED_PROMPT:Ljava/lang/String; = "need_prompt"

.field public static final NOT_NEED_PROMPT:I = 0x0

.field public static final ONLY_REGULAR_CALL:Ljava/lang/String; = "only_regular_call"

.field public static final PARAM_NUMBER:Ljava/lang/String; = "number"

.field public static final PURCHASE_FROM_DIALPAGE:I = 0x2

.field public static final PURCHASE_FROM_INTERNATIONAL:I = 0x8

.field public static final PURCHASE_FROM_NOTIFICATION:I = 0x5

.field public static final PURCHASE_FROM_SAFE_CENTER_CLEANER:I = 0x7

.field public static final PURCHASE_FROM_SAFE_CENTER_OPTIMIZE:I = 0x6

.field public static final PURCHASE_FROM_SETTING:I = 0x4

.field public static final PURCHASE_FROM_SMS:I = 0x1

.field public static final PURCHASE_FROM_YELLOWPAGE:I = 0x3

.field public static final SAFE_CENTER_CLEANER_SUMMARY:Ljava/lang/String; = "safe_center_cleaner_summary"

.field public static final SAFE_CENTER_CLEANER_TITLE:Ljava/lang/String; = "safe_center_cleaner_title"

.field public static final SAFE_CENTER_OPTIMIZE_SUMMARY_CN:Ljava/lang/String; = "safe_center_optimize_summary_cn"

.field public static final SAFE_CENTER_OPTIMIZE_SUMMARY_EN:Ljava/lang/String; = "safe_center_optimize_summary_en"

.field public static final SAFE_CENTER_OPTIMIZE_TITLE_CN:Ljava/lang/String; = "safe_center_optimize_title_cn"

.field public static final SAFE_CENTER_OPTIMIZE_TITLE_EN:Ljava/lang/String; = "safe_center_optimize_title_en"

.field public static final SIM_CARD_ACTIVATED_STATE:Ljava/lang/String; = "sim_card_activated_status"

.field public static final SIM_CARD_NUMBER:Ljava/lang/String; = "sim_card_number"

.field private static final TAG:Ljava/lang/String; = "LivetalkUtils"

.field public static final USER_CONFIG_COMPLETED:Ljava/lang/String; = "user_config_completed"

.field public static final WELCOME_FROM_PURCHASE:I = 0x66

.field public static final WELCOME_FROM_SETTING:I = 0x65

.field private static sCallBackNumbers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_NUMBER_POOL_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrompt(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "need_prompt"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static getInternalDialAvaiable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static getInternationalDialAvaiable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static getInternationalRemainMins(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "recent_country_remain_mins"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLivetalkCleanerInfo(Landroid/content/Context;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLivetalkDialRange(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "livetalk_dial_range"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLivetalkInfo(Landroid/content/Context;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLivetalkIntentWithParam(I)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.livetalk.MY_LIVETALK_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getLivetalkOptimizeInfo(Landroid/content/Context;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLivetalkServiceStatus(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static getLivetalkStatus(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static getLivetalkinfoForKK(Landroid/content/ContentResolver;Landroid/content/Context;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPurchaseIntentWithParam(I)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.livetalk.PURCHASE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getRemainMins(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "livetalk_remain_minutes"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSimActivatedState(Landroid/content/Context;)[I
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v2, v3, [I

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sim_card_activated_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2f
    return-object v2
.end method

.method public static getSimNumber(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sim_card_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2f
    return-object v2
.end method

.method public static getWelComeIntentWithParam(I)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.livetalk.WELCOME_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static isInternalDialEnable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isInternationalDialEnable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isLiveTalkCallbackNumber(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isLivetalkEnabled(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "livetalk_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_10

    :goto_f
    return v1

    :cond_10
    move v1, v2

    goto :goto_f
.end method

.method public static isLivetalkSwitchOn(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "livetalk_switch_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_f

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static isLivetalkUseCurrentAccount(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "livetalk_use_current_account"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_10

    :goto_f
    return v1

    :cond_10
    move v1, v2

    goto :goto_f
.end method

.method public static isPrompt(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isShowInSafeCenter(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static removePrompt(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "need_prompt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setInternalDialEnable(Landroid/content/Context;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "internal_dial_enable"

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :goto_a
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static setInternationalDialEnable(Landroid/content/Context;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "international_dial_enable"

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :goto_a
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static supportLivetalk(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static updateLivetalkCallBackNumber(Lorg/json/JSONArray;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_c
    :try_start_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    sget-object v2, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1a} :catch_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_21
    return-void
.end method

.method public static updateLivetalkCallBackNumber(Lorg/json/JSONArray;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_15

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    sput-object v0, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    sput p1, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_NUMBER_POOL_VERSION:I

    return-void
.end method

.method public static updateLivetalkCallBackNumber(Landroid/database/Cursor;)Z
    .registers 6

    const/4 v4, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return v4

    :cond_a
    :try_start_a
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_16
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    sget-object v2, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    const-string/jumbo v3, "number"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_36
    .catchall {:try_start_a .. :try_end_2e} :catchall_3e

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_31
    const/4 v2, 0x1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v2

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v4

    :catchall_3e
    move-exception v2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v2
.end method
