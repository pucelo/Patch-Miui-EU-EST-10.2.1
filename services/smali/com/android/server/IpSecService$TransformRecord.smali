.class final Lcom/android/server/IpSecService$TransformRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformRecord"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

.field private final mSpis:[Lcom/android/server/IpSecService$SpiRecord;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Landroid/net/IpSecConfig;[Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$UdpSocketRecord;)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V

    iput-object p4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    iput-object p5, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    iput-object p6, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_11
    if-ge v1, v3, :cond_26

    aget v0, v2, v1

    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/server/IpSecService$SpiRecord;->addReference()V

    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/server/IpSecService$SpiRecord;->setOwnedByTransform()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$UdpSocketRecord;->addReference()V

    :cond_2f
    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/IpSecConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method public getSpiRecord(I)Lcom/android/server/IpSecService$SpiRecord;
    .registers 3

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected releaseResources()V
    .registers 13

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v10

    array-length v11, v10

    move v9, v8

    :goto_7
    if-ge v9, v11, :cond_6c

    aget v2, v10, v9

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v5

    :try_start_13
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-virtual {v0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :goto_2d
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    :goto_3f
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V

    :goto_42
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_7

    :cond_46
    const-string/jumbo v3, ""

    goto :goto_2d

    :cond_4a
    const-string/jumbo v4, ""
    :try_end_4d
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_4d} :catch_8a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4d} :catch_4e

    goto :goto_3f

    :catch_4e
    move-exception v6

    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to delete SA with ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_6c
    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v1

    array-length v3, v1

    move v0, v8

    :goto_72
    if-ge v0, v3, :cond_80

    aget v2, v1, v0

    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/server/IpSecService$SpiRecord;->removeReference()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_80
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$UdpSocketRecord;->removeReference()V

    :cond_89
    return-void

    :catch_8a
    move-exception v7

    goto :goto_42
.end method
