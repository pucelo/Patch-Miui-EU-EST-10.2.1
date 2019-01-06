.class Lcom/android/server/media/MediaRouterService$2;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouterService.java"


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

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->-get3(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v4}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v4

    iget v4, v4, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v3, v4, :cond_2e

    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v3, v3, 0x13

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v4, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_54

    :goto_21
    invoke-static {v3, v0}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z

    :goto_24
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v1, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    :cond_2e
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z

    :goto_48
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_5d

    :cond_52
    monitor-exit v2

    return-void

    :cond_54
    move v0, v1

    goto :goto_21

    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5d

    goto :goto_24

    :catchall_5d
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_5d

    goto :goto_48
.end method
