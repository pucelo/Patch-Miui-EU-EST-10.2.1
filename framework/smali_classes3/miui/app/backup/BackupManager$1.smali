.class Lmiui/app/backup/BackupManager$1;
.super Ljava/lang/Thread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/backup/BackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/backup/BackupManager;

.field final synthetic val$fd:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$writeSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    iput-object p1, p0, Lmiui/app/backup/BackupManager$1;->this$0:Lmiui/app/backup/BackupManager;

    iput-object p2, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_9a
    .catchall {:try_start_2 .. :try_end_d} :catchall_73

    :try_start_d
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_9c
    .catchall {:try_start_d .. :try_end_18} :catchall_93

    const/16 v7, 0x400

    :try_start_1a
    new-array v0, v7, [B

    :goto_1c
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_47

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_27
    .catchall {:try_start_1a .. :try_end_26} :catchall_96

    goto :goto_1c

    :catch_27
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_2a
    :try_start_2a
    const-string/jumbo v7, "Backup:BackupManager"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_73

    if-eqz v2, :cond_38

    :try_start_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_38
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_3d
    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_46

    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_46} :catch_68

    :cond_46
    :goto_46
    return-void

    :cond_47
    if-eqz v3, :cond_4c

    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4c
    if-eqz v5, :cond_51

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_51
    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_5a

    iget-object v7, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_5a} :catch_5d

    :cond_5a
    :goto_5a
    move-object v4, v5

    move-object v2, v3

    goto :goto_46

    :catch_5d
    move-exception v1

    const-string/jumbo v7, "Backup:BackupManager"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :catch_68
    move-exception v1

    const-string/jumbo v7, "Backup:BackupManager"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    :catchall_73
    move-exception v7

    :goto_74
    if-eqz v2, :cond_79

    :try_start_76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_79
    if-eqz v4, :cond_7e

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_7e
    iget-object v8, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_87

    iget-object v8, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_87} :catch_88

    :cond_87
    :goto_87
    throw v7

    :catch_88
    move-exception v1

    const-string/jumbo v8, "Backup:BackupManager"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87

    :catchall_93
    move-exception v7

    move-object v2, v3

    goto :goto_74

    :catchall_96
    move-exception v7

    move-object v4, v5

    move-object v2, v3

    goto :goto_74

    :catch_9a
    move-exception v1

    goto :goto_2a

    :catch_9c
    move-exception v1

    move-object v2, v3

    goto :goto_2a
.end method
