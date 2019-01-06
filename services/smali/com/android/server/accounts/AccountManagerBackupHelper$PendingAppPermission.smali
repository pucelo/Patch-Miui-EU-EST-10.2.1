.class final Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingAppPermission"
.end annotation


# instance fields
.field private final accountDigest:Ljava/lang/String;

.field private final certDigest:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/pm/PackageManager;)Z
    .registers 19

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    invoke-virtual {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    iget-object v12, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_14
    iget-object v13, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_58

    :try_start_17
    iget-object v11, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    const/4 v11, 0x0

    array-length v14, v4

    :goto_2f
    if-ge v11, v14, :cond_4a

    aget-object v2, v4, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_55

    move-result v15

    if-eqz v15, :cond_52

    move-object v1, v2

    :cond_4a
    if-eqz v1, :cond_21

    :cond_4c
    :try_start_4c
    monitor-exit v13
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_58

    monitor-exit v12

    if-nez v1, :cond_5b

    const/4 v11, 0x0

    return v11

    :cond_52
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :catchall_55
    move-exception v11

    :try_start_56
    monitor-exit v13

    throw v11
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_5b
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    const/16 v13, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_6a} :catch_96

    move-result-object v7

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v11}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_99

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_94

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_99

    :cond_94
    const/4 v11, 0x0

    return v11

    :catch_96
    move-exception v6

    const/4 v11, 0x0

    return v11

    :cond_99
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get0(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;

    move-result-object v11

    invoke-virtual {v11, v1, v10}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_b9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v11

    const-string/jumbo v12, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {v11, v1, v12, v10}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_b9
    const/4 v11, 0x1

    return v11
.end method
