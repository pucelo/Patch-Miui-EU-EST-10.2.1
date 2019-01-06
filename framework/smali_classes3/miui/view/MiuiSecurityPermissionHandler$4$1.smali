.class Lmiui/view/MiuiSecurityPermissionHandler$4$1;
.super Ljava/lang/Thread;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$action:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$4;Landroid/widget/Button;Landroid/accounts/Account;)V
    .registers 4

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$action:Landroid/widget/Button;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v1, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-get6(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$action:Landroid/widget/Button;

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    if-nez v0, :cond_56

    const-string/jumbo v0, "null"

    :goto_15
    invoke-static {v1, v2, v3, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap4(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6f

    :cond_2e
    monitor-enter p0

    :try_start_2f
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    if-nez v0, :cond_54

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-get1(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onAddAccount()V
    :try_end_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_6c

    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    :cond_56
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_15

    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-set2(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-set1(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_6c

    goto :goto_54

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6f
    return-void
.end method
