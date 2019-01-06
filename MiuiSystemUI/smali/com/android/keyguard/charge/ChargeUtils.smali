.class public Lcom/android/keyguard/charge/ChargeUtils;
.super Ljava/lang/Object;
.source "ChargeUtils.java"


# static fields
.field private static KEY_BATTERY_ENDURANCE_TIME:Ljava/lang/String;

.field private static KEY_LEFT_CHARGE_TIME:Ljava/lang/String;

.field private static KEY_QUICK_CHARGE:Ljava/lang/String;

.field private static METHOD_GET_BATTERY_INFO:Ljava/lang/String;

.field private static METHOD_GET_POWER_SUPPLY_INFO:Ljava/lang/String;

.field private static PROVIDER_POWER_CENTER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.miui.powercenter.provider"

    sput-object v0, Lcom/android/keyguard/charge/ChargeUtils;->PROVIDER_POWER_CENTER:Ljava/lang/String;

    const-string/jumbo v0, "getBatteryInfo"

    sput-object v0, Lcom/android/keyguard/charge/ChargeUtils;->METHOD_GET_BATTERY_INFO:Ljava/lang/String;

    const-string/jumbo v0, "getPowerSupplyInfo"

    sput-object v0, Lcom/android/keyguard/charge/ChargeUtils;->METHOD_GET_POWER_SUPPLY_INFO:Ljava/lang/String;

    const-string/jumbo v0, "battery_endurance_time"

    sput-object v0, Lcom/android/keyguard/charge/ChargeUtils;->KEY_BATTERY_ENDURANCE_TIME:Ljava/lang/String;

    const-string/jumbo v0, "left_charge_time"

    sput-object v0, Lcom/android/keyguard/charge/ChargeUtils;->KEY_LEFT_CHARGE_TIME:Ljava/lang/String;

    const-string/jumbo v0, "quick_charge"

    sput-object v0, Lcom/android/keyguard/charge/ChargeUtils;->KEY_QUICK_CHARGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBatteryInfo(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/keyguard/charge/ChargeUtils;->PROVIDER_POWER_CENTER:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/charge/ChargeUtils;->METHOD_GET_BATTERY_INFO:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ChargeUtils"

    const-string/jumbo v4, "cannot find the path getBatteryInfo of content://com.miui.powercenter.provider"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getChargingHintText(Landroid/content/Context;ZI)Ljava/lang/String;
    .locals 16

    if-nez p1, :cond_0

    const/4 v12, 0x0

    return-object v12

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isNeedRepositionDevice()Z

    move-result v3

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportWirelessCharge()Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v3, :cond_1

    const v12, 0x7f110718

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_1
    const/4 v9, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/charge/ChargeUtils;->getBatteryInfo(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v2, :cond_2

    const/16 v12, 0x64

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    sget-object v12, Lcom/android/keyguard/charge/ChargeUtils;->KEY_BATTERY_ENDURANCE_TIME:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/keyguard/charge/ChargeUtils;->getHours(J)J

    move-result-wide v4

    invoke-static {v10, v11}, Lcom/android/keyguard/charge/ChargeUtils;->getMins(J)J

    move-result-wide v6

    const/16 v12, 0x64

    move/from16 v0, p2

    if-ne v0, v12, :cond_7

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_5

    long-to-int v12, v4

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const v14, 0x7f0f000b

    invoke-virtual {v8, v14, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x64

    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    const v12, 0x7f110341

    :goto_2
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_3
    return-object v9

    :cond_4
    sget-object v12, Lcom/android/keyguard/charge/ChargeUtils;->KEY_LEFT_CHARGE_TIME:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_6

    long-to-int v12, v4

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const v14, 0x7f0f0009

    invoke-virtual {v8, v14, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_2

    long-to-int v12, v6

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const v14, 0x7f0f000a

    invoke-virtual {v8, v14, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/charge/ChargeUtils;->isQuickCharging(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_8

    const v12, 0x7f110371

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_8
    const v12, 0x7f110370

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_9
    const v12, 0x7f110370

    goto :goto_2
.end method

.method public static getHours(J)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static getMins(J)J
    .locals 4

    const-wide/32 v0, 0x36ee80

    rem-long v0, p0, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static isQuickCharging(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/charge/ChargeUtils;->PROVIDER_POWER_CENTER:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/charge/ChargeUtils;->METHOD_GET_POWER_SUPPLY_INFO:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lcom/android/keyguard/charge/ChargeUtils;->KEY_QUICK_CHARGE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ChargeUtils"

    const-string/jumbo v4, "cannot find the path getPowerSupplyInfo of content://com.miui.powercenter.provider"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
