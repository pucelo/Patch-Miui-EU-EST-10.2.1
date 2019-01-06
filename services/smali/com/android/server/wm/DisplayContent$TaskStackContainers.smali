.class final Lcom/android/server/wm/DisplayContent$TaskStackContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskStackContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer",
        "<",
        "Lcom/android/server/wm/TaskStack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent$TaskStackContainers;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private addChild(Lcom/android/server/wm/TaskStack;Z)V
    .registers 6

    if-eqz p2, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :goto_8
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    return-void

    :cond_16
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    const v6, 0x7fffffff

    if-ne p1, v6, :cond_4f

    const/4 v1, 0x1

    :goto_11
    if-eqz p3, :cond_53

    add-int/lit8 v6, v2, 0x1

    if-lt p1, v6, :cond_51

    :cond_17
    :goto_17
    or-int/2addr v1, v4

    move v0, p1

    if-eqz v1, :cond_5a

    iget v4, p2, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v4, v7, :cond_5a

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget v4, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v4, v7, :cond_57

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Pinned stack isn\'t top stack??? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4f
    const/4 v1, 0x0

    goto :goto_11

    :cond_51
    move v4, v5

    goto :goto_17

    :cond_53
    if-ge p1, v2, :cond_17

    move v4, v5

    goto :goto_17

    :cond_57
    if-eqz p3, :cond_61

    move v0, v2

    :cond_5a
    :goto_5a
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-static {p2, v4, v0}, Lcom/android/server/wm/DisplayContentInjector;->getFullScreenIndex(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowList;I)I

    move-result v0

    return v0

    :cond_61
    add-int/lit8 v0, v2, -0x1

    goto :goto_5a
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_33

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_c
    if-ltz v3, :cond_60

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    iget-object v0, v5, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_1e
    if-ltz v4, :cond_30

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_2d

    return v7

    :cond_2d
    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    :cond_30
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_33
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v2, :cond_60

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    iget-object v0, v5, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_4b
    if-ge v4, v1, :cond_5d

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_5a

    return v7

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_60
    return v6
.end method


# virtual methods
.method addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 5

    iget v0, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-get0(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "attachStack: HOME_STACK_ID (0) not first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->-set0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)Lcom/android/server/wm/TaskStack;

    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addChild(Lcom/android/server/wm/TaskStack;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p2, :cond_11

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method getOrientation()I
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->-get0(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->-get0(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->-get0(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v0

    if-eq v0, v3, :cond_36

    return v0

    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getOrientation()I

    move-result v0

    if-eq v0, v3, :cond_55

    return v0

    :cond_55
    const/4 v2, -0x1

    return v2

    :cond_57
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->getOrientation()I

    move-result v0

    if-eq v0, v3, :cond_60

    if-eq v0, v5, :cond_60

    return v0

    :cond_60
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->-get2(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    return v2
.end method

.method isOnTop()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/TaskStack;Z)V
    .registers 10

    const/4 v5, 0x0

    iget v2, p2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v2

    if-eqz v2, :cond_39

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_39

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring move of always-on-top stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to bottom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0, v0, p2, v5}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_39
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->findPositionForStack(ILcom/android/server/wm/TaskStack;Z)I

    move-result v1

    invoke-super {p0, v1, p2, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    check-cast p2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .registers 7

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_9
    if-ltz v1, :cond_51

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    iget-object v0, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1b
    if-ltz v2, :cond_4e

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v4, :cond_4b

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4b

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_3f
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_51
    return-void
.end method

.method removeStackFromDisplay(Lcom/android/server/wm/TaskStack;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->onRemovedFromDisplay()V

    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_8
    if-ltz v1, :cond_2a

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget-object v0, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1a
    if-ltz v2, :cond_27

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v3, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_2a
    return-void
.end method
