.class final Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_REVOKE_APP_PERMISSION:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method public constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v7, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_4e

    :goto_6
    :pswitch_6
    return-void

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/RemoteCallback;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v6, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-virtual {v6, v2}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_35

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_35
    invoke-virtual {v1, v7}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_6

    :pswitch_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v6, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-virtual {v6, v2, v3}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_39
    .end packed-switch
.end method
