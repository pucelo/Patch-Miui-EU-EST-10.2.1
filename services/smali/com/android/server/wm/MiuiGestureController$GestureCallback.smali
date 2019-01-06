.class public interface abstract Lcom/android/server/wm/MiuiGestureController$GestureCallback;
.super Ljava/lang/Object;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureCallback"
.end annotation


# virtual methods
.method public abstract ensureActivitiesVisible(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiLaunchIconInfo;
.end method

.method public abstract isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract launchHome(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V
.end method

.method public abstract onGestureAnimationStart(Lcom/android/server/wm/WindowStateAnimator;)V
.end method

.method public abstract onGestureAnimationStoped(Lcom/android/server/wm/WindowStateAnimator;)V
.end method

.method public abstract onGestureCancel(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract onGestureFinished(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract onGestureReady(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract setAlphaByGesture(Lcom/android/server/wm/WindowSurfaceController;F)V
.end method

.method public abstract setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V
.end method

.method public abstract setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V
.end method

.method public abstract setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V
.end method
