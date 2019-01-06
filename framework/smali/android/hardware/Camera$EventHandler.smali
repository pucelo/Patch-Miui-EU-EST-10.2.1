.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const/16 v10, 0x101

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_196

    const-string/jumbo v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown message type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_27
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v6

    if-eqz v6, :cond_38

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v6

    invoke-interface {v6}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    :cond_38
    return-void

    :sswitch_39
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v6

    if-eqz v6, :cond_50

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v6, v8}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_50
    return-void

    :sswitch_51
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v6

    if-eqz v6, :cond_68

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v6, v8}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_68
    return-void

    :sswitch_69
    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v8}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v3

    if-eqz v3, :cond_87

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v8}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Z

    move-result v8

    if-eqz v8, :cond_88

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6, v9}, Landroid/hardware/Camera;->-set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    :cond_7e
    :goto_7e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v6, v7}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_87
    return-void

    :cond_88
    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v8}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Z

    move-result v8

    if-nez v8, :cond_7e

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v8, v6, v7}, Landroid/hardware/Camera;->-wrap1(Landroid/hardware/Camera;ZZ)V

    goto :goto_7e

    :sswitch_96
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v6

    if-eqz v6, :cond_ad

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v6, v8}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_ad
    return-void

    :sswitch_ae
    const/4 v0, 0x0

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_b6
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_ca

    move-result-object v0

    monitor-exit v7

    if-eqz v0, :cond_c9

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_cd

    const/4 v5, 0x0

    :goto_c4
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v5, v6}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    :cond_c9
    return-void

    :catchall_ca
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_cd
    const/4 v5, 0x1

    goto :goto_c4

    :sswitch_cf
    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v8}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v8

    if-eqz v8, :cond_e8

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v8}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-eqz v10, :cond_e9

    :goto_e3
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v8, v9, v6, v7}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    :cond_e8
    return-void

    :cond_e9
    move v6, v7

    goto :goto_e3

    :sswitch_eb
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v6

    if-eqz v6, :cond_102

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/hardware/Camera$Face;

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v6, v8}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    :cond_102
    return-void

    :sswitch_103
    const-string/jumbo v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v6

    if-eqz v6, :cond_134

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v7, v8}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    :cond_134
    return-void

    :sswitch_135
    const/4 v2, 0x0

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v8}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_13d
    iget-object v9, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v9}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    :try_end_142
    .catchall {:try_start_13d .. :try_end_142} :catchall_150

    move-result-object v2

    monitor-exit v8

    if-eqz v2, :cond_14f

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_153

    :goto_14a
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v7, v6}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    :cond_14f
    return-void

    :catchall_150
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_153
    move v7, v6

    goto :goto_14a

    :sswitch_155
    new-array v4, v10, [I

    const/4 v1, 0x0

    :goto_158
    if-ge v1, v10, :cond_169

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    mul-int/lit8 v7, v1, 0x4

    invoke-static {v6, v7}, Landroid/hardware/Camera;->-wrap0([BI)I

    move-result v6

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_158

    :cond_169
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v6

    if-eqz v6, :cond_17c

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v4, v7}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    :cond_17c
    return-void

    :sswitch_17d
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v6

    if-eqz v6, :cond_194

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v6}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v6, v8}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    :cond_194
    return-void

    nop

    :sswitch_data_196
    .sparse-switch
        0x1 -> :sswitch_103
        0x2 -> :sswitch_27
        0x4 -> :sswitch_ae
        0x8 -> :sswitch_cf
        0x10 -> :sswitch_69
        0x40 -> :sswitch_96
        0x80 -> :sswitch_39
        0x100 -> :sswitch_51
        0x400 -> :sswitch_eb
        0x800 -> :sswitch_135
        0x1000 -> :sswitch_155
        0x2000 -> :sswitch_17d
    .end sparse-switch
.end method
