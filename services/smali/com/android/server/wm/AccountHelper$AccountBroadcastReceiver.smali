.class Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccountHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/AccountHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AccountHelper;Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;-><init>(Lcom/android/server/wm/AccountHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v6, 0x1

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    const-string/jumbo v4, "extra_update_type"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "extra_account"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    if-eqz v0, :cond_31

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v5, "com.xiaomi"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3b

    :cond_31
    const-string/jumbo v4, "MiuiPermision"

    const-string/jumbo v5, "It isn\'t a xiaomi account changed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-ne v3, v6, :cond_47

    iget-object v4, p0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-virtual {v4, v2, v0}, Lcom/android/server/wm/AccountHelper;->onXiaomiAccountLogout(Landroid/content/Context;Landroid/accounts/Account;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    const/4 v4, 0x2

    if-ne v3, v4, :cond_50

    iget-object v4, p0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-virtual {v4, v2, v0}, Lcom/android/server/wm/AccountHelper;->onXiaomiAccountLogin(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_46

    :cond_50
    const-string/jumbo v4, "MiuiPermision"

    const-string/jumbo v5, "Xiaomi account changed, but unknown type: %s."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method
