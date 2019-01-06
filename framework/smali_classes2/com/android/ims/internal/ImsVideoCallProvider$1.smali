.class Lcom/android/ims/internal/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_98

    :goto_5
    return-void

    :pswitch_6
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-static {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->-set0(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)Lcom/android/ims/internal/IImsVideoCallCallback;

    goto :goto_5

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_14
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;I)V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_2c

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_2c
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    :pswitch_31
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_5

    :pswitch_3b
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_5

    :pswitch_45
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    goto :goto_5

    :pswitch_4d
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetZoom(F)V

    goto :goto_5

    :pswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_5f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v3, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_70

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_70
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    :pswitch_75
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto :goto_5

    :pswitch_7f
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    goto :goto_5

    :pswitch_85
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCallDataUsage()V

    goto/16 :goto_5

    :pswitch_8c
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_5

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_31
        :pswitch_3b
        :pswitch_45
        :pswitch_4d
        :pswitch_5b
        :pswitch_75
        :pswitch_7f
        :pswitch_85
        :pswitch_8c
    .end packed-switch
.end method
