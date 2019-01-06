.class Lmiui/view/MiuiSecurityPermissionHandler$2$1;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$2;Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get3(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v1, 0x1

    :goto_18
    if-eqz v1, :cond_59

    monitor-enter p0

    :try_start_1b
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$account:Landroid/accounts/Account;

    if-nez v0, :cond_27

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v0

    :cond_27
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v4, v4, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    if-nez v0, :cond_5c

    :goto_31
    invoke-static {v4, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap1(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-set4(Lmiui/view/MiuiSecurityPermissionHandler;I)I

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get10(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    const/4 v3, -0x2

    if-eq v3, v2, :cond_4d

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get10(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-nez v2, :cond_58

    :cond_4d
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_5f

    :cond_58
    monitor-exit p0

    :cond_59
    return-void

    :cond_5a
    const/4 v1, 0x0

    goto :goto_18

    :cond_5c
    :try_start_5c
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_5f

    goto :goto_31

    :catchall_5f
    move-exception v2

    monitor-exit p0

    throw v2
.end method
