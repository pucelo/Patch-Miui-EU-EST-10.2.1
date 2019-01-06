.class public Lcom/android/server/wm/WindowAnimatorInjector;
.super Ljava/lang/Object;
.source "WindowAnimatorInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowAnimatorInjector"

.field private static sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

.field private static sTmpLockWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static synthetic -get0()Lcom/android/server/wm/WindowState;
    .registers 1

    sget-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/server/wm/WindowState;
    .registers 1

    sget-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 1

    sput-object p0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 1

    sput-object p0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isObscuringFullScreen(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    if-nez p0, :cond_5

    return v0

    :cond_5
    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v1, :cond_20

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v1, :cond_20

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_20

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method static updateLockDeviceWindowLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    const/4 v5, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-void

    :cond_6
    :try_start_6
    new-instance v2, Lcom/android/server/wm/WindowAnimatorInjector$1;

    invoke-direct {v2}, Lcom/android/server/wm/WindowAnimatorInjector$1;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_79

    if-nez v2, :cond_18

    sput-object v5, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    sput-object v5, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    return-void

    :cond_18
    const/4 v1, 0x0

    :try_start_19
    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_44

    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_44

    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_44

    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_44

    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    sget-object v3, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2, v3}, Lcom/android/server/wm/WindowAnimatorInjector;->isObscuringFullScreen(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v1, 0x1

    :cond_44
    if-eqz v1, :cond_6d

    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    :goto_4e
    if-eqz v0, :cond_68

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    sget-object v3, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_76

    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->HIDE:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    :goto_59
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->requestTraversalOnceLw(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string/jumbo v2, "WindowAnimatorInjector"

    const-string/jumbo v3, "someone else changed lock window policy, there must be a bug!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_19 .. :try_end_68} :catchall_79

    :cond_68
    sput-object v5, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    sput-object v5, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    return-void

    :cond_6d
    :try_start_6d
    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    goto :goto_4e

    :cond_76
    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->SHOW:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_79

    goto :goto_59

    :catchall_79
    move-exception v2

    sput-object v5, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    sput-object v5, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    throw v2
.end method
