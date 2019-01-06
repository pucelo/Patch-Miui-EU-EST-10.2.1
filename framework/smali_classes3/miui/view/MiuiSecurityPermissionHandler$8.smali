.class Lmiui/view/MiuiSecurityPermissionHandler$8;
.super Ljava/lang/Thread;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v3, 0x0

    const/4 v6, -0x2

    :try_start_2
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3} :catch_7f

    const/16 v1, 0xa

    :goto_5
    if-lez v1, :cond_1f

    :try_start_7
    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    if-nez v2, :cond_5b

    move-object v2, v3

    :goto_10
    invoke-static {v5, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap1(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-set4(Lmiui/view/MiuiSecurityPermissionHandler;I)I

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get10(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-eq v6, v2, :cond_60

    :cond_1f
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " updateWaterMarkerAccount! mRetWater:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->-get10(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get10(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-eq v6, v2, :cond_50

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get10(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-nez v2, :cond_72

    :cond_50
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_7c

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_7f

    :goto_5a
    return-void

    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_10

    :cond_60
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, " updateWaterMarkerAccount postVerificationWaterMarker NETWORK_ERROR!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v4, v5}, Lmiui/view/MiuiSecurityPermissionHandler$8;->wait(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_72
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onHideWaterMarker()V
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_7c

    goto :goto_59

    :catchall_7c
    move-exception v2

    :try_start_7d
    monitor-exit p0

    throw v2
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method
