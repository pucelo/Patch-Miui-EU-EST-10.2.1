.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "preferred-activity"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default-apps"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "intent-verification"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 8

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_4
    const-string/jumbo v2, "preferred-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    :goto_11
    return-void

    :cond_12
    const-string/jumbo v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    goto :goto_11

    :catch_20
    move-exception v0

    const-string/jumbo v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_3c
    :try_start_3c
    const-string/jumbo v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreIntentFilterVerification([BI)V

    goto :goto_11

    :cond_4a
    const-string/jumbo v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_64} :catch_20

    goto :goto_11
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 7

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_4
    const-string/jumbo v2, "preferred-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v2

    return-object v2

    :cond_13
    const-string/jumbo v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v2

    return-object v2

    :cond_22
    const-string/jumbo v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getIntentFilterVerificationBackup(I)[B

    move-result-object v2

    return-object v2

    :cond_31
    const-string/jumbo v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected backup key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_4d

    :goto_4b
    const/4 v2, 0x0

    return-object v2

    :catch_4d
    move-exception v0

    const-string/jumbo v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to store payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method
