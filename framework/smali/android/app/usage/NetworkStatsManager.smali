.class public Landroid/app/usage/NetworkStatsManager;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStatsManager$CallbackHandler;,
        Landroid/app/usage/NetworkStatsManager$UsageCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_LIMIT_REACHED:I = 0x0

.field public static final CALLBACK_RELEASED:I = 0x1

.field private static final DBG:Z = false

.field public static final FLAG_AUGMENT_WITH_SUBSCRIPTION_PLAN:I = 0x2

.field public static final FLAG_POLL_ON_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    return-void
.end method

.method private static createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 6

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_3e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot create template for network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", subscriberId \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_34
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    :goto_38
    return-object v0

    :pswitch_39
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_38

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_13

    move-result-object v2

    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startUserUidEnumeration()V

    return-object v0

    :catch_13
    move-exception v8

    const/4 v1, 0x0

    return-object v1
.end method

.method public queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    :try_start_4
    new-instance v2, Landroid/app/usage/NetworkStats;

    iget-object v3, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    return-object v2

    :catch_18
    move-exception v10

    const-string/jumbo v3, "NetworkStatsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while querying stats for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method public querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_13

    move-result-object v2

    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    return-object v0

    :catch_13
    move-exception v8

    const/4 v1, 0x0

    return-object v1
.end method

.method public querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-object v2

    const/4 v8, 0x0

    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    return-object v8

    :catch_19
    move-exception v9

    const/4 v1, 0x0

    return-object v1
.end method

.method public querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_1a

    move-result-object v2

    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v1

    return-object v1

    :catch_1a
    move-exception v8

    const/4 v1, 0x0

    return-object v1
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .registers 15

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V
    .registers 16

    const-string/jumbo v5, "UsageCallback cannot be null"

    invoke-static {p5, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p6, :cond_44

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_c
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    new-instance v3, Landroid/net/DataUsageRequest;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, p3, p4}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    :try_start_16
    new-instance v0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;

    invoke-direct {v0, v2, p1, p2, p5}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;-><init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    iget-object v5, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    iget-object v6, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-interface {v5, v6, v3, v7, v8}, Landroid/net/INetworkStatsService;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;

    move-result-object v5

    invoke-static {p5, v5}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-set0(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;

    invoke-static {p5}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v5

    if-nez v5, :cond_43

    const-string/jumbo v5, "NetworkStatsManager"

    const-string/jumbo v6, "Request from callback is null; should not happen"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_43} :catch_49

    :cond_43
    return-void

    :cond_44
    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_c

    :catch_49
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public setAugmentWithSubscriptionPlan(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_8
.end method

.method public setPollOnOpen(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_8
.end method

.method public unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .registers 5

    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid UsageCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v1

    iget v1, v1, Landroid/net/DataUsageRequest;->requestId:I

    if-eqz v1, :cond_8

    :try_start_19
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetworkStatsService;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
