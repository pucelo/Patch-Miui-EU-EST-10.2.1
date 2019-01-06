.class final Lcom/android/server/wm/WindowAnimatorInjector$1;
.super Ljava/lang/Object;
.source "WindowAnimatorInjector.java"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowAnimatorInjector;->updateLockDeviceWindowLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/ToBooleanFunction",
        "<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/wm/WindowState;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_9

    :cond_8
    return v4

    :cond_9
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_19

    invoke-static {p1}, Lcom/android/server/wm/WindowAnimatorInjector;->-set1(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    :cond_18
    :goto_18
    return v4

    :cond_19
    if-lt v1, v5, :cond_18

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->-get0()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->-get0()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->-get0()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppWindowToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_41
    invoke-static {p1}, Lcom/android/server/wm/WindowAnimatorInjector;->-set0(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    goto :goto_18

    :cond_45
    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->-get1()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_18

    return v5
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimatorInjector$1;->apply(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method
