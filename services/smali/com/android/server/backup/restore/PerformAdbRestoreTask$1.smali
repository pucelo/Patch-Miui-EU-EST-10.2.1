.class Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Lcom/android/server/backup/utils/BytesReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;->this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBytesRead(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;->this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {v0, v2, v3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-set0(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J

    return-void
.end method
