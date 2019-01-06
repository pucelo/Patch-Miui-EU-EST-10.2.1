.class Lmiui/view/MiuiSecurityPermissionHandler$5$1;
.super Ljava/lang/Thread;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$5;Landroid/view/WindowManager;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-get8(Lmiui/view/MiuiSecurityPermissionHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-get6(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wifi OnClick remove View!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->val$wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get6(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-set3(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)Landroid/view/View;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_47
    .catchall {:try_start_9 .. :try_end_3e} :catchall_64

    :cond_3e
    :goto_3e
    monitor-exit v2

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$5;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap3(Lmiui/view/MiuiSecurityPermissionHandler;)V

    return-void

    :catch_47
    move-exception v0

    :try_start_48
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi OnClick  removeView ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_48 .. :try_end_63} :catchall_64

    goto :goto_3e

    :catchall_64
    move-exception v1

    monitor-exit v2

    throw v1
.end method
