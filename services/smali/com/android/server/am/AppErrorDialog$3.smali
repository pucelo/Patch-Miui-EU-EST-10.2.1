.class Lcom/android/server/am/AppErrorDialog$3;
.super Landroid/text/style/ClickableSpan;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;

.field final synthetic val$contextInner:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog$3;->val$contextInner:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$3;->val$contextInner:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget-object v2, v2, Lcom/android/server/am/AppErrorDialog;->mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/MiuiErrorReport;->startFcPreviewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get2(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    if-ne v0, v2, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4e

    :cond_3a
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
