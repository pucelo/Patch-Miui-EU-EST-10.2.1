.class public Landroid/app/ActivityManager$StackId;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackId"
.end annotation


# static fields
.field public static final ASSISTANT_STACK_ID:I = 0x6

.field public static final DOCKED_STACK_ID:I = 0x3

.field public static final FIRST_DYNAMIC_STACK_ID:I = 0x8

.field public static final FIRST_STATIC_STACK_ID:I = 0x0

.field public static final FREEFORM_WORKSPACE_STACK_ID:I = 0x2

.field public static final FULLSCREEN_WORKSPACE_STACK_ID:I = 0x1

.field public static final HOME_STACK_ID:I = 0x0

.field public static final INVALID_STACK_ID:I = -0x1

.field public static final LAST_STATIC_STACK_ID:I = 0x7

.field public static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field public static final PINNED_STACK_ID:I = 0x4

.field public static final RECENTS_STACK_ID:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowTopTaskToReturnHome(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static canReceiveKeys(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static canSpecifyOrientation(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    const/4 v1, 0x5

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-eq p0, v0, :cond_6

    const/4 v1, 0x6

    if-eq p0, v1, :cond_6

    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v0

    goto :goto_6
.end method

.method public static hasMovementAnimations(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static hasWindowDecor(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static hasWindowShadow(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x4

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isAllowedOverLockscreen(I)Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-ne p0, v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v2, 0x6

    if-eq p0, v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public static isAllowedToEnterPictureInPicture(I)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const/4 v1, 0x6

    if-eq p0, v1, :cond_a

    const/4 v1, 0x5

    if-eq p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static isAlwaysOnTop(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x2

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isBackdropToTranslucentActivity(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v1, 0x6

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isDynamicStack(I)Z
    .registers 2

    const/16 v0, 0x8

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isDynamicStacksVisibleBehindAllowed(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x6

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isHomeOrRecentsStack(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    const/4 v2, 0x5

    if-ne p0, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public static isMultiWindowStack(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x2

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x3

    if-eq p0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isResizeableByDockedStack(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x4

    if-eq p0, v1, :cond_11

    const/4 v1, 0x6

    if-eq p0, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static isStackAffectedByDragResizing(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x6

    if-eq p0, v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isStaticStack(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_7

    const/4 v1, 0x7

    if-gt p0, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public static isTaskResizeAllowed(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static isTaskResizeableByDockedStack(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v1, 0x4

    if-eq p0, v1, :cond_14

    const/4 v1, 0x6

    if-eq p0, v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static keepFocusInStackIfPossible(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x3

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static keepVisibleDeadAppWindowOnScreen(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static normallyFullscreenWindows(I)Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public static persistTaskBounds(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static replaceWindowsOnTaskMove(II)Z
    .registers 4

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eq p0, v1, :cond_6

    if-ne p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static resizeStackWithLaunchBounds(I)Z
    .registers 2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static tasksAreFloating(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x4

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static useAnimationSpecForAppTransition(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    if-ne p0, v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v1, 0x6

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, -0x1

    if-eq p0, v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static useWindowFrameForBackdrop(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x4

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static windowsAreScaleable(I)Z
    .registers 2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method
