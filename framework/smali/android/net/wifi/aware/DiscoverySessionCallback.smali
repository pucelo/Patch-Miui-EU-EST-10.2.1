.class public Landroid/net/wifi/aware/DiscoverySessionCallback;
.super Ljava/lang/Object;
.source "DiscoverySessionCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/net/wifi/aware/PeerHandle;[B)V
    .registers 3

    return-void
.end method

.method public onMessageSendFailed(I)V
    .registers 2

    return-void
.end method

.method public onMessageSendSucceeded(I)V
    .registers 2

    return-void
.end method

.method public onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V
    .registers 2

    return-void
.end method

.method public onServiceDiscovered(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "[B",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSessionConfigFailed()V
    .registers 1

    return-void
.end method

.method public onSessionConfigUpdated()V
    .registers 1

    return-void
.end method

.method public onSessionTerminated()V
    .registers 1

    return-void
.end method

.method public onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V
    .registers 2

    return-void
.end method
