.class Lcom/android/server/locksettings/LockSettingsService$1;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1d

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/android/server/locksettings/LockSettingsService;->-wrap4(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    :cond_1d
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v4}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_33

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    :goto_2f
    invoke-virtual {v0, v3, v1}, Landroid/security/KeyStore;->onUserAdded(II)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    const/4 v1, -0x1

    goto :goto_2f

    :cond_35
    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_32

    :cond_51
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_32

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v4, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->-wrap4(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    goto :goto_32
.end method
