.class public Lcom/android/server/content/SyncOperationInjector;
.super Ljava/lang/Object;
.source "SyncOperationInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareByXiaomiPriority(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 5

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->isXiaomiAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->getXiaomiAuthorityPriority(Ljava/lang/String;)I

    move-result v0

    :cond_13
    const/4 v1, -0x1

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->isXiaomiAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->getXiaomiAuthorityPriority(Ljava/lang/String;)I

    move-result v1

    :cond_26
    if-le v0, v1, :cond_2a

    const/4 v2, -0x1

    return v2

    :cond_2a
    if-ge v0, v1, :cond_2e

    const/4 v2, 0x1

    return v2

    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method private static getXiaomiAuthorityPriority(Ljava/lang/String;)I
    .registers 8

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v5, "wifi"

    const-string/jumbo v4, "sms"

    const-string/jumbo v2, "com.miui.gallery.cloud.provider"

    const-string/jumbo v0, "call_log"

    const-string/jumbo v3, "notes"

    const-string/jumbo v6, "wifi"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v6, 0x3c

    return v6

    :cond_1e
    const-string/jumbo v6, "com.android.contacts"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/16 v6, 0x32

    return v6

    :cond_2a
    const-string/jumbo v6, "call_log"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    const/16 v6, 0x28

    return v6

    :cond_36
    const-string/jumbo v6, "sms"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    const/16 v6, 0x1e

    return v6

    :cond_42
    const-string/jumbo v6, "notes"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v6, 0x14

    return v6

    :cond_4e
    const-string/jumbo v6, "com.miui.gallery.cloud.provider"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/16 v6, 0xa

    return v6

    :cond_5a
    const/4 v6, 0x0

    return v6
.end method

.method private static isXiaomiAccount(Landroid/accounts/Account;)Z
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "com.xiaomi"

    if-nez p0, :cond_7

    return v3

    :cond_7
    const-string/jumbo v1, "com.xiaomi"

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    return v3
.end method
