.class Lcom/android/server/am/BaseUserSwitchingDialog;
.super Lmiui/app/AlertDialog;
.source "BaseUserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseUserSwitchingDialog$1;
    }
.end annotation


# static fields
.field static final MSG_START_USER:I = 0x1

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V
    .registers 6

    invoke-direct {p0, p2, p3}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/server/am/BaseUserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseUserSwitchingDialog$1;-><init>(Lcom/android/server/am/BaseUserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p4, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mUserId:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseUserSwitchingDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x110

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show()V
    .registers 5

    invoke-super {p0}, Lmiui/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->switchUser(Landroid/os/Handler;Lcom/android/server/am/BaseUserSwitchingDialog;)V

    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method startUser()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mUserId:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->startUserInForeground(Lcom/android/server/am/ActivityManagerService;ILandroid/app/Dialog;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mStartedUser:Z

    invoke-static {p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->finishSwitchUser(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
