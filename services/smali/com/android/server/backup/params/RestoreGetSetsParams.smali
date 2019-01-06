.class public Lcom/android/server/backup/params/RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "RestoreGetSetsParams.java"


# instance fields
.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public session:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method
