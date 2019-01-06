.class public Lcom/android/server/am/UserSwitchingDialogInjector;
.super Ljava/lang/Object;
.source "UserSwitchingDialogInjector.java"


# static fields
.field private static onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishSwitchUser(Landroid/app/Dialog;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    :cond_13
    return-void
.end method

.method public static startUserInForeground(Lcom/android/server/am/ActivityManagerService;ILandroid/app/Dialog;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    const/4 p2, 0x0

    :cond_b
    return-void
.end method

.method public static switchUser(Landroid/os/Handler;Lcom/android/server/am/BaseUserSwitchingDialog;)V
    .registers 5

    new-instance v1, Lcom/android/server/am/UserSwitchingDialogInjector$1;

    invoke-direct {v1, p1}, Lcom/android/server/am/UserSwitchingDialogInjector$1;-><init>(Lcom/android/server/am/BaseUserSwitchingDialog;)V

    sput-object v1, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    :cond_1a
    return-void
.end method
