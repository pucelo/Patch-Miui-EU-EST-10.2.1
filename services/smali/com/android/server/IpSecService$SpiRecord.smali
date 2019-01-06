.class final Lcom/android/server/IpSecService$SpiRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpiRecord"
.end annotation


# instance fields
.field private final mDirection:I

.field private final mLocalAddress:Ljava/lang/String;

.field private mOwnedByTransform:Z

.field private final mRemoteAddress:Ljava/lang/String;

.field private mSpi:I

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    iput p4, p0, Lcom/android/server/IpSecService$SpiRecord;->mDirection:I

    iput-object p5, p0, Lcom/android/server/IpSecService$SpiRecord;->mLocalAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/IpSecService$SpiRecord;->mRemoteAddress:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    return-void
.end method


# virtual methods
.method public getSpi()I
    .registers 2

    iget v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    return v0
.end method

.method protected releaseResources()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    if-eqz v0, :cond_28

    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot release Spi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Currently locked by a Transform"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-virtual {v0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mDirection:I

    iget-object v3, p0, Lcom/android/server/IpSecService$SpiRecord;->mLocalAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/IpSecService$SpiRecord;->mRemoteAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3b
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_3b} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3b} :catch_3f

    :goto_3b
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    return-void

    :catch_3f
    move-exception v6

    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete SPI reservation with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :catch_5d
    move-exception v7

    goto :goto_3b
.end method

.method public setOwnedByTransform()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot own an SPI twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    return-void
.end method
