.class Landroid/hardware/CameraInjector$UploadInfoThread;
.super Ljava/lang/Thread;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadInfoThread"
.end annotation


# instance fields
.field mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;


# direct methods
.method private constructor <init>(Landroid/hardware/CameraInjector$CameraExInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$UploadInfoThread;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/CameraInjector$UploadInfoThread;-><init>(Landroid/hardware/CameraInjector$CameraExInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v3, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v3, :cond_66

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_save_camera_info"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.miui.klo.bugreport"

    const-string/jumbo v4, "com.miui.klo.bugreport.service.ReceiveCameraInfoService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "starttime"

    iget-object v4, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v4}, Landroid/hardware/CameraInjector$CameraExInfo;->-get4(Landroid/hardware/CameraInjector$CameraExInfo;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v3}, Landroid/hardware/CameraInjector$CameraExInfo;->-get2(Landroid/hardware/CameraInjector$CameraExInfo;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_43

    const-string/jumbo v3, "endtime"

    iget-object v4, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v4}, Landroid/hardware/CameraInjector$CameraExInfo;->-get2(Landroid/hardware/CameraInjector$CameraExInfo;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_43
    const-string/jumbo v4, "frontorback"

    iget-object v3, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v3}, Landroid/hardware/CameraInjector$CameraExInfo;->-get1(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;

    move-result-object v3

    const-string/jumbo v5, "camera-id"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_66
    return-void
.end method
