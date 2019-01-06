.class public Lmiui/telephony/TelephonyManagerEx;
.super Lmiui/telephony/TelephonyManager;
.source "TelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManagerEx$Holder;
    }
.end annotation


# static fields
.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/telephony/TelephonyManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/TelephonyManagerEx;)V
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;-><init>()V

    return-void
.end method

.method private static getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const-string/jumbo v4, "country_detector"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    :cond_16
    if-nez v1, :cond_40

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-object v1
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManagerEx;
    .registers 1

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .registers 2

    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 15

    invoke-static {p0}, Lmiui/telephony/TelephonyManagerEx;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "IN"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5a

    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v9, "100"

    const/4 v10, 0x0

    aput-object v9, v1, v10

    const-string/jumbo v9, "101"

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const-string/jumbo v9, "102"

    const/4 v10, 0x2

    aput-object v9, v1, v10

    const-string/jumbo v9, "108"

    const/4 v10, 0x3

    aput-object v9, v1, v10

    const/4 v9, 0x0

    array-length v10, v1

    :goto_2a
    if-ge v9, v10, :cond_5a

    aget-object v0, v1, v9

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_57

    const-string/jumbo v9, "TelephonyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isLocalEmergencyNumberInternal :number:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not a real IN emergency number,return false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    :cond_5a
    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    invoke-virtual {v9}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v5

    const/4 v9, 0x2

    if-ge v5, v9, :cond_6f

    if-eqz p2, :cond_6a

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    :goto_69
    return v9

    :cond_6a
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    goto :goto_69

    :cond_6f
    const-string/jumbo v9, "IT"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_81

    const-string/jumbo v9, "MM"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d7

    :cond_81
    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    :goto_84
    if-ge v4, v5, :cond_95

    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_92

    add-int/lit8 v2, v2, 0x1

    move v8, v4

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    :cond_95
    const-string/jumbo v9, "TelephonyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isLocalEmergencyNumberInternal : in Italy or Myanmar,insert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " sim card, validSlot is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_d7

    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v9, v8}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v7

    if-eqz p2, :cond_cb

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d3

    :cond_cb
    if-nez p2, :cond_d5

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d5

    :cond_d3
    const/4 v9, 0x1

    return v9

    :cond_d5
    const/4 v9, 0x0

    return v9

    :cond_d7
    const/4 v6, 0x0

    :goto_d8
    if-ge v6, v5, :cond_f5

    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v9, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v7

    if-eqz p2, :cond_e8

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f0

    :cond_e8
    if-nez p2, :cond_f2

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f2

    :cond_f0
    const/4 v9, 0x1

    return v9

    :cond_f2
    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    :cond_f5
    const/4 v9, 0x0

    return v9
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private normalizeSlotId(I)I
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_b

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0

    :cond_b
    return p1
.end method

.method private normalizeSubscriptionId(I)I
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_b

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0

    :cond_b
    return p1
.end method


# virtual methods
.method public answerRingingCall()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public cancelMissedCallsNotification()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error call ITelecomService#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public enableDataConnectivity()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityForSlot(I)Z
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityForSubscription(I)Z
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public endCall()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->endCall()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getAllCellInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoForSlot(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoForSubscription(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallStateForSlot(I)I
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSubscription(I)I
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .registers 10

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v3

    if-nez v3, :cond_8

    return-object v7

    :cond_8
    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lmiui/telephony/IMiuiTelephony;->getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "getCellLocationForSlot returning null because bundle is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_22
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36

    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "getCellLocationForSlot returning null because CellLocation is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_37

    return-object v7

    :cond_36
    return-object v1

    :catch_37
    move-exception v2

    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCellLocationForSlot returning null due to Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public getCellLocationForSubscription(I)Landroid/telephony/CellLocation;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCtVolteSupportedMode()I
    .registers 2

    sget v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CT_VOLTE_SUPPORTED_MODE:I

    return v0
.end method

.method public getDataActivity()I
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSlot(I)I
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSubscription(I)I
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSlot(I)I
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSubscription(I)I
    .registers 3

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSlot(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSubscription(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v2

    :cond_8
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_7

    :catch_13
    move-exception v0

    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceIdList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSlot(I)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v2

    :cond_8
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lmiui/telephony/IMiuiTelephony;->getImei(ILjava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_7

    :catch_17
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getImeiForSlot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getImeiForSubscription(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v2

    :cond_8
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getImeiList(Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_7

    :catch_13
    move-exception v0

    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImeiList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidForSlot(I)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v2

    :cond_8
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lmiui/telephony/IMiuiTelephony;->getMeid(ILjava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_7

    :catch_17
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMeidForSlot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getMeidForSubscription(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v2

    :cond_8
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getMeidList(Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_7

    :catch_13
    move-exception v0

    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMeidList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getMiuiDeviceId()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v2

    :cond_8
    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/telephony/IMiuiTelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_7

    :catch_13
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_1a

    const-class v2, Lmiui/telephony/TelephonyManagerEx;

    monitor-enter v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_28

    :try_start_8
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_19

    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_25

    :cond_19
    :try_start_19
    monitor-exit v2

    :cond_1a
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_32

    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "getMiuiTelephony error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    return-object v3
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoForSlot(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoForSubscription(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkClass(I)I
    .registers 3

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    return v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSlot(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSlot(I)I
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSubscription(I)I
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .registers 2

    sget v0, Lmiui/telephony/TelephonyManagerEx$Holder;->PHONE_COUNT:I

    return v0
.end method

.method public getPhoneType()I
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSlot(I)I
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSubscription(I)I
    .registers 4

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSlot(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSimStateForSlot(I)I
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimStateForSubscription(I)I
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSmallDeviceId()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v2

    :cond_8
    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/telephony/IMiuiTelephony;->getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_7

    :catch_13
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSmallDeviceId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_22

    move-result-object v2

    if-nez v2, :cond_1d

    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_1c

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2d

    :cond_12
    invoke-static {p2}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {p0, p2}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    :goto_1c
    return-object v1

    :cond_1d
    :try_start_1d
    invoke-interface {v2, p1, p2, p3, p4}, Lmiui/telephony/IMiuiTelephony;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_22

    move-result-object v1

    goto :goto_8

    :catch_22
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getSpn error"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_2d
    move-object v1, p3

    goto :goto_1c
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ltz v0, :cond_1d

    array-length v3, v2

    if-ge v0, v3, :cond_1d

    aget-object v3, v2, v0

    if-eqz v3, :cond_1d

    aget-object v3, v2, v0

    return-object v3

    :cond_1d
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceNetworkType()I
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkTypeForSlot(I)I
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkTypeForSubscription(I)I
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .registers 4

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    return v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    const/4 v2, 0x0

    return v2
.end method

.method public hasIccCard(I)Z
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isDualVolteSupported()Z
    .registers 2

    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_VOLTE_SUPPORTED:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->isCustSingleSimDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isImsRegistered(I)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isImsRegistered(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isImsRegistered exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isMultiSimEnabled()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isNetworkRoaming()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingForSlot(I)Z
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingForSubscription(I)Z
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .registers 4

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    return v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    const/4 v2, 0x0

    return v2
.end method

.method public isRadioOnForSlot(I)Z
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOnForSubscription(I)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    move-result v1

    return v1

    :catch_13
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1, p1, p2}, Lmiui/telephony/IMiuiTelephony;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isSameOperator error"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isSmsCapable()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public isVolteEnabledByPlatform()Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByPlatform()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVolteEnabledByPlatform exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isVolteEnabledByPlatform(I)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByPlatformForSlot(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVolteEnabledByPlatform exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isVolteEnabledByUser()Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByUser()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVolteEnabledByUser exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isVolteEnabledByUser(I)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByUserForSlot(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVolteEnabledByUser exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isVtEnabledByPlatform()Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVtEnabledByPlatform()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVtEnabledByPlatform exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isVtEnabledByPlatform(I)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVtEnabledByPlatformForSlot(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVtEnabledByPlatform exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .registers 6

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/telephony/PhoneStateListener;->updateSubscription(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p2, v0}, Landroid/telephony/PhoneStateListener;->updateSubscription(Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method public onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-object p3

    :cond_7
    invoke-interface {v1, p1, p2, p3}, Lmiui/telephony/IMiuiTelephony;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object p3

    goto :goto_6

    :catch_c
    move-exception v0

    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "onOperatorNumericOrNameSet error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p3
.end method

.method public putTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/16 v8, 0x2c

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v2, :cond_32

    const-string/jumbo v3, ""

    if-eqz v5, :cond_28

    array-length v6, v5

    if-ge v1, v6, :cond_28

    aget-object v3, v5, v1

    :cond_28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_32
    if-nez p4, :cond_37

    const-string/jumbo p4, ""

    :cond_37
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4d

    add-int/lit8 v1, v2, 0x1

    :goto_3e
    array-length v6, v5

    if-ge v1, v6, :cond_4d

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method public setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 14

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/IMiuiTelephony;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v6

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "setCallForwardingOption exception"

    invoke-static {v1, v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p5, :cond_f

    const/4 v1, -0x1

    invoke-virtual {p5, v1, v7}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_f
.end method

.method public setIccCardActivate(IZ)V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setIccCardActivate(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "setIccCardActivate error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showCallScreen()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->showCallScreenWithDialpad(Z)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    const/4 v1, 0x1

    return v1

    :catch_f
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#showInCallScreen"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public silenceRinger()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error call ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .registers 3

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSlot(ILjava/lang/String;)[I
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSubscription(ILjava/lang/String;)[I
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSlot(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 5

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method
