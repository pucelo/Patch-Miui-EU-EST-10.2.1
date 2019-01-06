.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    const-string/jumbo v0, "backup"

    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 12

    const/4 v4, 0x1

    const-wide/16 v8, 0x40

    const/4 v5, 0x0

    if-nez p1, :cond_79

    const-string/jumbo v3, "backup init"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v3, "backup migrate"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap9(I)Z

    move-result v3

    if-nez v3, :cond_64

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v6, "Backup enable apparently not migrated"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v3, v3, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "backup_enabled"

    const/4 v6, -0x1

    invoke-static {v2, v3, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ltz v1, :cond_7e

    const-string/jumbo v6, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Migrating enable state "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_7a

    move v3, v4

    :goto_4d
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7c

    :goto_5a
    invoke-static {v4, p1}, Lcom/android/server/backup/BackupManagerService;->-wrap24(ZI)V

    const-string/jumbo v3, "backup_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_64
    :goto_64
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v3, "backup enable"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_6d
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap11(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_76} :catch_88

    :goto_76
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_79
    return-void

    :cond_7a
    move v3, v5

    goto :goto_4d

    :cond_7c
    move v4, v5

    goto :goto_5a

    :cond_7e
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Backup not yet configured; retaining null enable state"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :catch_88
    move-exception v0

    goto :goto_76
.end method
