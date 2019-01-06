.class public Landroid/net/lowpan/LowpanInterface;
.super Ljava/lang/Object;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanInterface$Callback;
    }
.end annotation


# static fields
.field public static final EMPTY_PARTITION_ID:Ljava/lang/String; = ""

.field public static final NETWORK_TYPE_THREAD_V1:Ljava/lang/String; = "org.threadgroup.thread.v1"

.field public static final ROLE_COORDINATOR:Ljava/lang/String; = "coordinator"

.field public static final ROLE_DETACHED:Ljava/lang/String; = "detached"

.field public static final ROLE_END_DEVICE:Ljava/lang/String; = "end-device"

.field public static final ROLE_LEADER:Ljava/lang/String; = "leader"

.field public static final ROLE_ROUTER:Ljava/lang/String; = "router"

.field public static final ROLE_SLEEPY_END_DEVICE:Ljava/lang/String; = "sleepy-end-device"

.field public static final ROLE_SLEEPY_ROUTER:Ljava/lang/String; = "sleepy-router"

.field public static final STATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final STATE_COMMISSIONING:Ljava/lang/String; = "commissioning"

.field public static final STATE_FAULT:Ljava/lang/String; = "fault"

.field public static final STATE_OFFLINE:Ljava/lang/String; = "offline"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/net/lowpan/LowpanInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public addExternalRoute(Landroid/net/IpPrefix;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addExternalRoute(Landroid/net/IpPrefix;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public attach(Landroid/net/lowpan/LowpanProvision;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->attach(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public createScanner()Landroid/net/lowpan/LowpanScanner;
    .registers 3

    new-instance v0, Landroid/net/lowpan/LowpanScanner;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanScanner;-><init>(Landroid/net/lowpan/ILowpanInterface;)V

    return-object v0
.end method

.method public form(Landroid/net/lowpan/LowpanProvision;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->form(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getLinkAddresses()[Landroid/net/LinkAddress;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v7, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v7}, Landroid/net/lowpan/ILowpanInterface;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    new-array v3, v7, [Landroid/net/LinkAddress;

    const/4 v0, 0x0

    const/4 v7, 0x0

    array-length v8, v2

    move v1, v0

    :goto_d
    if-ge v7, v8, :cond_1e

    aget-object v4, v2, v7

    add-int/lit8 v0, v1, 0x1

    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    aput-object v9, v3, v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_1a} :catch_1f

    add-int/lit8 v7, v7, 0x1

    move v1, v0

    goto :goto_d

    :cond_1e
    return-object v3

    :catch_1f
    move-exception v6

    invoke-static {v6}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v7

    throw v7

    :catch_25
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method public getLinkNetworks()[Landroid/net/IpPrefix;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getLinkNetworks()[Landroid/net/IpPrefix;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v1}, Landroid/net/lowpan/ILowpanInterface;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    new-instance v2, Landroid/net/lowpan/LowpanIdentity;

    invoke-direct {v2}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getPartitionId()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getPartitionId()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getRole()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getRole()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const-string/jumbo v2, "detached"

    return-object v2
.end method

.method public getService()Landroid/net/lowpan/ILowpanInterface;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getState()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const-string/jumbo v2, "fault"

    return-object v2
.end method

.method public getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getSupportedNetworkTypes()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getSupportedNetworkTypes()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isCommissioned()Z
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isCommissioned()Z
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v2

    return v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method public isConnected()Z
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isConnected()Z
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v2

    return v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method public isEnabled()Z
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v2

    return v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method public isUp()Z
    .registers 4

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isUp()Z
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v2

    return v2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method public join(Landroid/net/lowpan/LowpanProvision;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->join(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public leave()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->leave()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
    .registers 8

    new-instance v0, Landroid/net/lowpan/LowpanInterface$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanInterface$1;-><init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V

    :try_start_5
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, v0}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_1c

    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_d
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_22

    monitor-exit v3

    return-void

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeExternalRoute(Landroid/net/IpPrefix;)V
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->removeExternalRoute(Landroid/net/IpPrefix;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v1

    sget-object v2, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v1

    sget-object v2, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->reset()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setEnabled(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->setEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)Landroid/net/lowpan/LowpanCommissioningSession;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    new-instance v2, Landroid/net/lowpan/LowpanCommissioningSession;

    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3, p1, v4}, Landroid/net/lowpan/LowpanCommissioningSession;-><init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v2

    :catch_f
    move-exception v1

    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .registers 9

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v5, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_7
    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/ILowpanInterfaceListener;

    if-eqz v1, :cond_23

    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2b

    :try_start_1e
    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v4, v1}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_23
    .catch Landroid/os/DeadObjectException; {:try_start_1e .. :try_end_23} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_25
    .catchall {:try_start_1e .. :try_end_23} :catchall_2b

    :cond_23
    :goto_23
    monitor-exit v5

    return-void

    :catch_25
    move-exception v3

    :try_start_26
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_2e
    move-exception v2

    goto :goto_23
.end method
