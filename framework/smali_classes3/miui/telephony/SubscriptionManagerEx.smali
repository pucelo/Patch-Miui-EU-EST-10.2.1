.class public Lmiui/telephony/SubscriptionManagerEx;
.super Lmiui/telephony/SubscriptionManager;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManagerEx$1;,
        Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;,
        Lmiui/telephony/SubscriptionManagerEx$Holder;,
        Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    }
.end annotation


# static fields
.field public static final ACTION_DEFAULT_DATA_SLOT_CHANGED:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

.field public static final ACTION_DEFAULT_DATA_SLOT_READY:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field static final DEFAULT_DATA_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.data"

.field static final DEFAULT_VOICE_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.voice"

.field public static final KEY_OLD_DATA_SLOT:Ljava/lang/String; = "old_data_slot"

.field public static final KEY_SIM_INSERT_STATE_ARRAY:Ljava/lang/String; = "sim_insert_state_array"

.field public static final SIM_CHANGED:I = 0x4

.field public static final SIM_NEW_CARD:I = 0x2

.field public static final SIM_NO_CARD:I = 0x1

.field public static final SIM_NO_CHANGE:I = 0x0

.field public static final SIM_REMOVED:I = 0x3


# instance fields
.field private mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method static synthetic -wrap0(Lmiui/telephony/SubscriptionManagerEx;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManagerEx;->initSubscriptionListener(Z)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$1;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$1;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/SubscriptionManagerEx;)V
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;-><init>()V

    return-void
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManagerEx;
    .registers 1

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-object v0
.end method

.method private getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .registers 2

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    return-object v0
.end method

.method private initSubscriptionListener(Z)V
    .registers 5

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_45

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_45

    const-string/jumbo v0, "SubMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initSubscriptionListener failed for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " threadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_45
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$2;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$2;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method


# virtual methods
.method protected addOnSubscriptionsChangedListenerInternal()V
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-direct {p0, v3}, Lmiui/telephony/SubscriptionManagerEx;->initSubscriptionListener(Z)V

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v1, :cond_22

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lmiui/telephony/SubscriptionManagerEx$3;

    invoke-direct {v2, p0}, Lmiui/telephony/SubscriptionManagerEx$3;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    const-string/jumbo v1, "qcom"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3f
    return-void
.end method

.method protected getAllSubscriptionInfoListInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDataSlotId()I
    .registers 4

    const-string/jumbo v1, "persist.radio.default.data"

    sget v2, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v0

    :cond_11
    return v0
.end method

.method public getDefaultDataSubscriptionId()I
    .registers 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    :cond_10
    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSlotIdInternal()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->getSystemDefaultSlotId()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getDefaultSmsSubscriptionId()I
    .registers 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    :cond_c
    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSlotId()I
    .registers 3

    const-string/jumbo v0, "persist.radio.default.voice"

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultVoiceSubscriptionId()I
    .registers 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    :cond_c
    return v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getSlotId(I)I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_c

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2e

    move-result v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    return v4

    :catchall_2e
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSubscriptionIdForSlot(I)I
    .registers 9

    const/4 v6, 0x0

    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v5

    if-nez v5, :cond_a

    sget v5, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    return v5

    :cond_a
    sget v5, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v5, :cond_11

    sget v5, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    return v5

    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    if-ne v5, p1, :cond_1d

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_46

    move-result v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_4b

    array-length v5, v2

    if-lez v5, :cond_4b

    aget v5, v2, v6

    :goto_45
    return v5

    :catchall_46
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_4b
    sget v5, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_45
.end method

.method protected getSubscriptionInfoListInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removeOnSubscriptionsChangedListenerInternal()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v1, :cond_18

    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v3, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    :cond_18
    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "qcom"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :try_start_27
    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    const-string/jumbo v1, "SubMgr"

    const-string/jumbo v2, "unregister SubscriptionChangedReceiver error!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public setDefaultDataSlotId(I)V
    .registers 6

    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lmiui/telephony/IMiuiTelephony;->setDefaultDataSlotId(ILjava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    const-string/jumbo v1, "SubMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set default data slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public setDefaultSmsSubscriptionId(I)V
    .registers 4

    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, p1

    :goto_7
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSmsSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_15

    :cond_11
    return-void

    :cond_12
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_7

    :cond_15
    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    return-void
.end method

.method public setDefaultVoiceSlotId(I)V
    .registers 6

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, p1

    :goto_10
    sget-object v3, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lmiui/telephony/IMiuiTelephony;->setDefaultVoiceSlotId(ILjava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_10

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "SubMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set default voice slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public setDisplayNameForSlot(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_19

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_19
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDisplayNameForSubscription(Ljava/lang/String;I)I
    .registers 7

    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_15

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_15
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayNumberForSlot(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_19

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_19
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDisplayNumberForSubscription(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_15

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNumberForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_15
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
