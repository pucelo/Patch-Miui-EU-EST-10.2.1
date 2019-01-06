.class final Lcom/android/server/am/ANRManager$1;
.super Ljava/lang/Thread;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ANRManager;->addTextToDropBox(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 6

    iput-object p2, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/am/ANRManager$1;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/am/ANRManager$1;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    sget v2, Lcom/android/server/am/ANRManager;->DROPBOX_MAX_SIZE:I

    iget-object v3, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    if-eqz v2, :cond_1e

    if-lez v1, :cond_1e

    :try_start_10
    iget-object v2, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    const-string/jumbo v4, "\n\n[[TRUNCATED]]"

    invoke-static {v3, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_2c

    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/android/server/am/ANRManager$1;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/ANRManager$1;->val$dropboxTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ANRManager$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ANRManager$1;->val$dataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method
