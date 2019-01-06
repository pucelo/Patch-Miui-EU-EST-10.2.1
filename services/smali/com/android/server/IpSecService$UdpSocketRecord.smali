.class final Lcom/android/server/IpSecService$UdpSocketRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UdpSocketRecord"
.end annotation


# instance fields
.field private final mPort:I

.field private mSocket:Ljava/io/FileDescriptor;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V

    iput-object p4, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    iput p5, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->mPort:I

    return-void
.end method


# virtual methods
.method public getPort()I
    .registers 2

    iget v0, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->mPort:I

    return v0
.end method

.method public getSocket()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected releaseResources()V
    .registers 4

    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closing port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$UdpSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    return-void
.end method
