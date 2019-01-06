.class final Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "StrictModeViolationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/StrictModeViolationDialog$1;
    }
.end annotation


# static fields
.field static final ACTION_OK:I = 0x0

.field static final ACTION_OK_AND_REPORT:I = 0x1

.field static final DISMISS_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "StrictModeViolationDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .registers 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/am/StrictModeViolationDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    iput-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ne v2, v6, :cond_a3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v3, v2, v6

    const v3, 0x10405f1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_43
    invoke-virtual {p0, v5}, Lcom/android/server/am/StrictModeViolationDialog;->setCancelable(Z)V

    const v2, 0x10401b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_6c

    const v2, 0x1040574

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Strict Mode Violation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_a3
    iget-object v0, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x10405f2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_43
.end method
