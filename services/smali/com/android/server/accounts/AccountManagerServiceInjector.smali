.class public Lcom/android/server/accounts/AccountManagerServiceInjector;
.super Ljava/lang/Object;
.source "AccountManagerServiceInjector.java"


# static fields
.field public static final ACCOUNT_CHANGED_ACTION_ADDED:Ljava/lang/String; = "added"

.field public static final ACCOUNT_CHANGED_ACTION_ALTERED:Ljava/lang/String; = "altered"

.field public static final ACCOUNT_CHANGED_ACTION_REMOVED:Ljava/lang/String; = "removed"

.field public static final KEY_ACCOUNT_CHANGED_ACTION:Ljava/lang/String; = "account_changed_action"

.field public static final LOGIN_ACCOUNTS_CHANGED_SYS_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED_SYS"

.field private static final TAG:Ljava/lang/String; = "AccountManagerServiceInjector"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isForceRemove(Z)Z
    .registers 9

    const/4 v7, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    array-length v4, v2

    if-lez v4, :cond_42

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_42

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_42

    if-nez p0, :cond_31

    const-string/jumbo v4, "AccountManagerServiceInjector"

    const-string/jumbo v5, "force remove account"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_38

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    return v4

    :catch_38
    move-exception v0

    const-string/jumbo v4, "AccountManagerServiceInjector"

    const-string/jumbo v5, "isForceRemove"

    invoke-static {v4, v5, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    return v7
.end method

.method static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-static {p0, p1, p2, p3}, Lmiui/content/pm/ExtraPackageManager;->isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static sendAccountsChangedSysBroadcast(Landroid/content/Context;ILjava/lang/String;[Landroid/accounts/Account;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED_SYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "account_changed_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "accounts"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
