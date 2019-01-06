.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_100

    :goto_6
    return-void

    :pswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v8

    if-nez v8, :cond_1e

    const-string/jumbo v0, "addVideoProvider - skipped; callback is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "addVideoProvider - skipped; already present."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_33
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_3d
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v8

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string/jumbo v0, "removeVideoProvider - skipped; not present."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_5e
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_68
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    :try_start_6c
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v6, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v6, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual/range {v0 .. v5}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_8d

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_6

    :catchall_8d
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    :pswitch_92
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto/16 :goto_6

    :pswitch_9d
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto/16 :goto_6

    :pswitch_a8
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    goto/16 :goto_6

    :pswitch_b1
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    goto/16 :goto_6

    :pswitch_c0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    :try_start_c4
    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_d6

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_6

    :catchall_d6
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    :pswitch_db
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_6

    :pswitch_e6
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_6

    :pswitch_ed
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto/16 :goto_6

    :pswitch_f4
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_6

    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_7
        :pswitch_68
        :pswitch_92
        :pswitch_9d
        :pswitch_a8
        :pswitch_b1
        :pswitch_c0
        :pswitch_db
        :pswitch_e6
        :pswitch_ed
        :pswitch_f4
        :pswitch_3d
    .end packed-switch
.end method
