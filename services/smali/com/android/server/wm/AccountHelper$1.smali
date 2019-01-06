.class Lcom/android/server/wm/AccountHelper$1;
.super Landroid/app/IMiuiActivityObserver$Stub;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccountHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AccountHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AccountHelper$1;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-direct {p0}, Landroid/app/IMiuiActivityObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public activityIdle(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public activityPaused(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public activityResumed(Landroid/content/Intent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/wm/AccountHelper;->-get0()Z

    move-result v3

    if-eqz v3, :cond_41

    const-string/jumbo v3, "MiuiPermision"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resume packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mListenMode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/AccountHelper$1;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-static {v5}, Lcom/android/server/wm/AccountHelper;->-get3(Lcom/android/server/wm/AccountHelper;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->-get2()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string/jumbo v4, "com.xiaomi"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wm/AccountHelper;->-get4()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    iget-object v3, p0, Lcom/android/server/wm/AccountHelper$1;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-static {v3}, Lcom/android/server/wm/AccountHelper;->-get3(Lcom/android/server/wm/AccountHelper;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6c

    invoke-static {}, Lcom/android/server/wm/AccountHelper;->-get1()Lcom/android/server/wm/AccountHelper$AccountCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wm/AccountHelper$AccountCallback;->onWifiSettingFinish()V

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    iget-object v3, p0, Lcom/android/server/wm/AccountHelper$1;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-static {v3}, Lcom/android/server/wm/AccountHelper;->-get3(Lcom/android/server/wm/AccountHelper;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/android/server/wm/AccountHelper$1;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-static {}, Lcom/android/server/wm/AccountHelper;->-get2()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AccountHelper;->addAccount(Landroid/content/Context;)V

    goto :goto_6b
.end method

.method public activityStopped(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method
