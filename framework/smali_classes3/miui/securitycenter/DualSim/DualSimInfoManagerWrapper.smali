.class public Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;
    }
.end annotation


# static fields
.field private static mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->broadcastSubscriptionsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastSubscriptionsChanged()V
    .registers 4

    sget-object v3, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    invoke-interface {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;->onSubscriptionsChanged()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1c
    monitor-exit v3

    return-void
.end method

.method public static getSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_12

    :cond_11
    return-object v8

    :cond_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_21

    new-instance v6, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_2a

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "simId"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "slotNum"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "simName"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "iccId"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_78} :catch_79

    goto :goto_2a

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v8

    :cond_7e
    return-object v4
.end method

.method private static registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .registers 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public static registerSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .registers 4

    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_19

    :try_start_5
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .registers 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public static unRegisterSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .registers 4

    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_17

    :try_start_5
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
