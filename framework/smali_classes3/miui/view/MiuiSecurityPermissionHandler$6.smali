.class Lmiui/view/MiuiSecurityPermissionHandler$6;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$btn:Landroid/widget/Button;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$btn:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    if-gtz v3, :cond_16

    if-nez v0, :cond_6f

    :cond_16
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get8(Lmiui/view/MiuiSecurityPermissionHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2c
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get6(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4d

    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "verify button OnClick  removeView!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get6(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lmiui/view/MiuiSecurityPermissionHandler;->-set3(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)Landroid/view/View;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4d} :catch_4f
    .catchall {:try_start_2c .. :try_end_4d} :catchall_6c

    :cond_4d
    :goto_4d
    monitor-exit v4

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v1

    :try_start_50
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verify button OnClick  removeView ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_6c

    goto :goto_4d

    :catchall_6c
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_6f
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_81

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$btn:Landroid/widget/Button;

    const v4, 0x110900c4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_4e

    :cond_81
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$btn:Landroid/widget/Button;

    const v4, 0x110900c9

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_4e
.end method
