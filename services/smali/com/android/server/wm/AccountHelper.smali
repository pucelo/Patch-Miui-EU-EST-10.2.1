.class public Lcom/android/server/wm/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccountHelper$1;,
        Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;,
        Lcom/android/server/wm/AccountHelper$AccountCallback;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final LISTEN_MODE_ACCOUNT:I = 0x1

.field private static final LISTEN_MODE_NONE:I = 0x0

.field private static final LISTEN_MODE_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiPermision"

.field private static final mAccountLoginActivity:Ljava/lang/String;

.field private static mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

.field private static mContext:Landroid/content/Context;

.field private static mInIMEIWhiteList:Z

.field private static mListeningActivity:Z

.field private static final mNotificationActivity:Ljava/lang/String;

.field private static final mWifiSettingActivity:Ljava/lang/String;

.field private static sAccessActiviteis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sAccountHelper:Lcom/android/server/wm/AccountHelper;


# instance fields
.field mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

.field private mListenMode:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Lcom/android/server/wm/AccountHelper$AccountCallback;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccountHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AccountHelper;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    return v0
.end method

.method static synthetic -get4()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    sput-boolean v1, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    sput-boolean v1, Lcom/android/server/wm/AccountHelper;->mInIMEIWhiteList:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->mAccountLoginActivity:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "com.xiaomi.passport"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->mNotificationActivity:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "com.android.settings"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->mWifiSettingActivity:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/AccountHelper;->mAccountLoginActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/AccountHelper;->mNotificationActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/AccountHelper;->mWifiSettingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    new-instance v0, Lcom/android/server/wm/AccountHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AccountHelper$1;-><init>(Lcom/android/server/wm/AccountHelper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccountHelper;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/AccountHelper;
    .registers 2

    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    if-nez v0, :cond_13

    const-class v1, Lcom/android/server/wm/AccountHelper;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/wm/AccountHelper;

    invoke-direct {v0}, Lcom/android/server/wm/AccountHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public ListenAccount(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/AccountHelper;->registerAccountActivityObserver()V

    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    if-eqz v0, :cond_33

    const-string/jumbo v0, "MiuiPermision"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ListenAccount mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mListenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public UnListenAccount(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    xor-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/AccountHelper;->unRegisterAccountActivityObserver()V

    :cond_c
    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    if-eqz v0, :cond_37

    const-string/jumbo v0, "MiuiPermision"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UnListenAccount mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mListenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public addAccount(Landroid/content/Context;)V
    .registers 11

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "MiuiPermision"

    const-string/jumbo v1, "addAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi"

    const-string/jumbo v2, "passportapi"

    new-instance v6, Lcom/android/server/wm/AccountHelper$2;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wm/AccountHelper$2;-><init>(Lcom/android/server/wm/AccountHelper;Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string/jumbo v3, "com.xiaomi"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_12

    aget-object v0, v1, v4

    :cond_12
    if-nez v0, :cond_1d

    const-string/jumbo v3, "MiuiPermision"

    const-string/jumbo v4, "xiaomi account is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-object v0
.end method

.method public onXiaomiAccountLogin(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    sget-object v0, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AccountHelper$AccountCallback;->onXiaomiAccountLogin()V

    return-void
.end method

.method public onXiaomiAccountLogout(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    sget-object v0, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AccountHelper$AccountCallback;->onXiaomiAccountLogout()V

    return-void
.end method

.method public registerAccountActivityObserver()V
    .registers 5

    sget-boolean v3, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    if-eqz v3, :cond_5

    return-void

    :cond_5
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wm/AccountHelper;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    invoke-interface {v0, v3, v2}, Landroid/app/IActivityManager;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public registerAccountListener(Landroid/content/Context;Lcom/android/server/wm/AccountHelper$AccountCallback;)V
    .registers 6

    sput-object p1, Lcom/android/server/wm/AccountHelper;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    new-instance v0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;-><init>(Lcom/android/server/wm/AccountHelper;Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unRegisterAccountActivityObserver()V
    .registers 5

    sget-boolean v3, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    if-nez v3, :cond_5

    return-void

    :cond_5
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wm/AccountHelper;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method
