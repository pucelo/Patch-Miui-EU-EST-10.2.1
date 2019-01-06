.class public Lcom/android/server/backup/params/BackupParams;
.super Ljava/lang/Object;
.source "BackupParams.java"


# instance fields
.field public dirName:Ljava/lang/String;

.field public fullPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public kvPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public nonIncrementalBackup:Z

.field public observer:Landroid/app/backup/IBackupObserver;

.field public transport:Lcom/android/internal/backup/IBackupTransport;

.field public userInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p2, p0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iput-object p6, p0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-boolean p7, p0, Lcom/android/server/backup/params/BackupParams;->userInitiated:Z

    iput-boolean p8, p0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    return-void
.end method
