.class Lmiui/view/MiuiSecurityPermissionHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiSecurityPermissionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap5(Lmiui/view/MiuiSecurityPermissionHandler;)V

    :cond_27
    monitor-enter p0

    :try_start_28
    const-string/jumbo v3, "miui.intent.action.FINISH_BOOTING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get4(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v3

    invoke-interface {v3}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onAddAccount()V

    :cond_42
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get5(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    :cond_54
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->-set0(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    :try_end_5a
    .catchall {:try_start_28 .. :try_end_5a} :catchall_b1

    :cond_5a
    monitor-exit p0

    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    if-ne v3, v6, :cond_b4

    if-eqz v0, :cond_b4

    :cond_74
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MIUI_ACCOUNT_LOGIN_CHECK: mRetPermission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v5}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get3(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "miui_account_login_check"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b0
    :goto_b0
    return-void

    :catchall_b1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_b4
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_74

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get9(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_74

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-get3(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "miui_account_login_check"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b0
.end method
