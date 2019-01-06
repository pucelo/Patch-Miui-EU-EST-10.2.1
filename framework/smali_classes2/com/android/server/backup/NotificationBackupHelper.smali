.class public Lcom/android/server/backup/NotificationBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "NotificationBackupHelper.java"


# static fields
.field static final BLOB_VERSION:I = 0x1

.field static final DEBUG:Z

.field static final KEY_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field static final TAG:Ljava/lang/String; = "NotifBackupHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "NotifBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/backup/NotificationBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "notifications"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 8

    sget-boolean v2, Lcom/android/server/backup/NotificationBackupHelper;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "NotifBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got restore of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string/jumbo v2, "notifications"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :try_start_27
    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    const-string/jumbo v2, "NotifBackupHelper"

    const-string/jumbo v3, "Couldn\'t communicate with notification manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    const-string/jumbo v3, "notifications"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :try_start_a
    const-string/jumbo v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getBackupPayload(I)[B
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1b

    move-result-object v1

    :cond_1a
    :goto_1a
    return-object v1

    :catch_1b
    move-exception v0

    const-string/jumbo v3, "NotifBackupHelper"

    const-string/jumbo v4, "Couldn\'t communicate with notification manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1a
.end method
