.class Lcom/android/server/media/MediaRouterService$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayerActiveStateChanged(IZ)V
    .registers 8

    if-eqz p2, :cond_8

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-get0(Lcom/android/server/media/MediaRouterService;)Lcom/android/server/media/AudioPlaybackMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/media/AudioPlaybackMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-get0(Lcom/android/server/media/MediaRouterService;)Lcom/android/server/media/AudioPlaybackMonitor;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlaybackMonitor;->isPlaybackActive(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    const/4 v1, 0x1

    :cond_34
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    goto :goto_7

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
