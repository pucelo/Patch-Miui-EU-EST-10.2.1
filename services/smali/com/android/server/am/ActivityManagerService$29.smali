.class Lcom/android/server/am/ActivityManagerService$29;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$29;->val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    const/4 v5, 0x0

    :try_start_16
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    const/high16 v2, 0x2e000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_27} :catch_3d
    .catchall {:try_start_16 .. :try_end_27} :catchall_49

    if-eqz v0, :cond_35

    :try_start_29
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_35} :catch_52
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_35} :catch_3d
    .catchall {:try_start_29 .. :try_end_35} :catchall_49

    :cond_35
    :goto_35
    if-eqz v5, :cond_3a

    :try_start_37
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v8

    goto :goto_3a

    :catch_3d
    move-exception v7

    :try_start_3e
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_49

    if-eqz v5, :cond_3a

    :try_start_43
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_3a

    :catch_47
    move-exception v8

    goto :goto_3a

    :catchall_49
    move-exception v1

    if-eqz v5, :cond_4f

    :try_start_4c
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    :cond_4f
    :goto_4f
    throw v1

    :catch_50
    move-exception v8

    goto :goto_4f

    :catch_52
    move-exception v6

    goto :goto_35
.end method
