.class Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
.super Lmiui/telephony/SubscriptionInfo;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionInfoImpl"
.end annotation


# instance fields
.field mSlotId:I

.field private final mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private final mSubscriptionId:I


# direct methods
.method private constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .registers 3

    invoke-direct {p0}, Lmiui/telephony/SubscriptionInfo;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :goto_11
    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    :goto_21
    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    return-void

    :cond_26
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_11

    :cond_29
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    goto :goto_21
.end method

.method public static from(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-static {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    return-object v1
.end method

.method public static from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;-><init>(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_3
.end method

.method private getDefaultDisplayName()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x1

    const-string/jumbo v0, ""

    iget v2, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    sget v3, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-eq v2, v3, :cond_49

    :try_start_a
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    iget v6, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-virtual {v5, v6}, Lmiui/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/telephony/IMiuiTelephony;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_4a

    move-result-object v0

    :goto_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x110900b2

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_49
    return-object v0

    :catch_4a
    move-exception v1

    goto :goto_2d
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcc()I
    .registers 2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    return v0
.end method

.method public getMnc()I
    .registers 2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    return v0
.end method

.method public getPhoneId()I
    .registers 2

    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public getSlotId()I
    .registers 2

    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public getSubscriptionId()I
    .registers 2

    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    return v0
.end method

.method public isActivated()Z
    .registers 5

    const/4 v3, 0x1

    iget v1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    sget v2, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-eq v1, v2, :cond_22

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    :cond_12
    :try_start_12
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    iget v2, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->isIccCardActivate(I)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_21

    move-result v1

    return v1

    :catch_21
    move-exception v0

    :cond_22
    return v3
.end method
