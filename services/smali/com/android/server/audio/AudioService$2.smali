.class Lcom/android/server/audio/AudioService$2;
.super Landroid/app/IUidObserver$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method private disableAudioForUid(ZI)V
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get9(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    :goto_c
    const/16 v2, 0x68

    const/4 v5, 0x0

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void

    :cond_14
    move v3, v6

    goto :goto_c
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioService$2;->disableAudioForUid(ZI)V

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$2;->disableAudioForUid(ZI)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    return-void
.end method
