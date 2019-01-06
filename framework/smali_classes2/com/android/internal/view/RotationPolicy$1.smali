.class final Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(ZI)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    iput p2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    :goto_d
    return-void

    :cond_e
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_d

    :catch_12
    move-exception v0

    const-string/jumbo v2, "RotationPolicy"

    const-string/jumbo v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
