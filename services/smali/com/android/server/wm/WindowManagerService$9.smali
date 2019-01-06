.class Lcom/android/server/wm/WindowManagerService$9;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/wm/MiuiGestureController$GestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->initMiuiGestureController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureActivitiesVisible(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->ensureActivitiesVisible()V

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiLaunchIconInfo;
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getMiuiLaunchIconInfo()Lcom/miui/internal/transition/MiuiLaunchIconInfo;

    move-result-object v1

    :cond_d
    return-object v1

    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->isHomeAppToken()Z

    move-result v1

    :cond_d
    return v1

    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public launchHome(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->launchHome()V

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V
    .registers 6

    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p2, p3}, Landroid/view/IWindow;->notifyDrawRoundRect(ZLandroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public onGestureAnimationStart(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    :cond_5
    return-void
.end method

.method public onGestureAnimationStoped(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    :cond_5
    return-void
.end method

.method public onGestureCancel(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->onGestureCancel()V

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onGestureFinished(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->onGestureFinished()V

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onGestureReady(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->onGestureReady()V

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setAlphaByGesture(Lcom/android/server/wm/WindowSurfaceController;F)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->setAlphaByGesture(F)V

    :cond_5
    return-void
.end method

.method public setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AppWindowContainerController;->setLaunchRecentsBehind(Z)V

    :cond_b
    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V
    .registers 6

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixByGesture(FFFF)V

    :cond_5
    return-void
.end method

.method public setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->setPositionByGesture(FF)V

    :cond_5
    return-void
.end method
