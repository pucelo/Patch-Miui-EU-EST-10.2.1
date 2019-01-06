.class public final Lcom/android/server/BatteryStatsUtils;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryStatsUtils$1;,
        Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    }
.end annotation


# static fields
.field public static final PHONE_COUNT:I

.field private static sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

.field private static sDataSlot:I

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    .registers 1

    sget-object v0, Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    return-object v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return v0
.end method

.method static synthetic -set0(I)I
    .registers 1

    sput p0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return p0
.end method

.method static synthetic -wrap0(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2

    invoke-static {p0}, Lcom/android/server/BatteryStatsUtils;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    sput v2, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    sget v2, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_31

    new-instance v2, Lcom/android/server/BatteryStatsUtils$1;

    invoke-direct {v2}, Lcom/android/server/BatteryStatsUtils$1;-><init>()V

    sput-object v2, Lcom/android/server/BatteryStatsUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/BatteryStatsUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataSlot()I
    .registers 1

    sget v0, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    return v0
.end method

.method private static getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 4

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_d
    return-object v0

    :cond_e
    const/4 v2, 0x5

    if-ne v1, v2, :cond_14

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    :cond_14
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    :cond_1a
    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    :cond_20
    const/4 v2, 0x4

    if-eq v1, v2, :cond_26

    const/4 v2, 0x7

    if-ne v1, v2, :cond_29

    :cond_26
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d

    :cond_29
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_d
.end method

.method public static getSubId(I)I
    .registers 4

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    aget v1, v0, v2

    return v1

    :cond_d
    const/4 v1, -0x1

    return v1
.end method

.method public static isDataSlot(I)Z
    .registers 4

    const/4 v0, 0x1

    sget v1, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a

    sget v1, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    if-ne v1, p0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isDataSlotIntent(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    if-eqz p0, :cond_16

    sget v2, Lcom/android/server/BatteryStatsUtils;->sDataSlot:I

    sget v3, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {p0, v3}, Lmiui/telephony/SubscriptionManagerEx;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    if-ne v2, v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_16
    move v0, v1

    goto :goto_13
.end method

.method public static isDataSlotSub(I)Z
    .registers 3

    sget v0, Lcom/android/server/BatteryStatsUtils;->PHONE_COUNT:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static setCallBack(Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;)V
    .registers 1

    sput-object p0, Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    return-void
.end method
