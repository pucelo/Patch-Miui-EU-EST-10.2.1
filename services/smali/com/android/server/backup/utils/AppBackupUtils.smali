.class public Lcom/android/server/backup/utils/AppBackupUtils;
.super Ljava/lang/Object;
.source "AppBackupUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    :cond_14
    return v0
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_15

    return v2

    :cond_15
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return v2

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_5

    return v8

    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    return v9

    :cond_e
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_1c
    return v8

    :cond_1d
    array-length v5, p0

    array-length v4, v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v5, :cond_3a

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v4, :cond_31

    aget-object v6, p0, v1

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v3, 0x1

    :cond_31
    if-nez v3, :cond_37

    return v8

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3a
    return v9
.end method
