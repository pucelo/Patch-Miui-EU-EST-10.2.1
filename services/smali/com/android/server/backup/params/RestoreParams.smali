.class public Lcom/android/server/backup/params/RestoreParams;
.super Ljava/lang/Object;
.source "RestoreParams.java"


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    iput-object v1, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iput-object v1, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    iput-object p7, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    iput v0, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iput-boolean v0, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;I)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    iput p8, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iput-boolean v1, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p7, v0, v1

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Z)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iput-boolean p8, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iput-object p7, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method
