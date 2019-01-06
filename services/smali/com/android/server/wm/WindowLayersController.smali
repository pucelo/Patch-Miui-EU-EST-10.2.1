.class Lcom/android/server/wm/WindowLayersController;
.super Ljava/lang/Object;
.source "WindowLayersController.java"


# instance fields
.field private mAboveImeTarget:Z

.field private mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mAnyLayerChanged:Z

.field private final mAssignWindowLayersConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistantWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBaseLayer:I

.field private mCurLayer:I

.field private mDockDivider:Lcom/android/server/wm/WindowState;

.field private mDockedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestApplicationLayer:I

.field private mHighestDockedAffectedLayer:I

.field private mHighestLayerInImeTargetBaseLayer:I

.field private mImeTarget:Lcom/android/server/wm/WindowState;

.field private mInputMethodWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssignWindowLayersConsumer:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private adjustSpecialWindows()V
    .registers 5

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    add-int/lit16 v0, v2, 0x3e8

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    if-lez v2, :cond_46

    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_10

    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v3, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    if-le v2, v3, :cond_2b

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_2b

    :cond_46
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    add-int/lit8 v2, v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4e
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_4e

    :cond_63
    :goto_63
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_63

    :cond_78
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_86

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    add-int/lit8 v0, v2, 0x5

    :cond_86
    :goto_86
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_86

    :cond_9b
    :goto_9b
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_9b

    :cond_b0
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .registers 3

    if-eqz p1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    add-int/lit8 p2, p2, 0x5

    :cond_7
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .registers 7

    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSpecialWindowAnimLayerAdjustment()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v1, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-le v1, v2, :cond_31

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    :cond_31
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v0

    if-lez v0, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-eq v1, v0, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_5a
    return-void
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v1, v2, :cond_b

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    return-void

    :cond_b
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_4d

    iget v1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_3a

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    :goto_44
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    iget-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    if-eqz v1, :cond_33

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_5b
    const/4 v0, -0x1

    goto :goto_44

    :cond_5d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_66
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4c
.end method

.method static synthetic lambda$-com_android_server_wm_WindowLayersController_5844(Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Assign layer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "mBase="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " mLayer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_56

    const-string/jumbo v1, ""

    :goto_3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " =mAnimLayer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mAppLayer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getAnimLayerAdjustment()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d
.end method

.method private logDebugLayers(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    sget-object v0, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$6:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    :goto_2f
    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void

    :cond_3f
    move v0, v1

    goto :goto_2f
.end method


# virtual methods
.method final assignWindowLayers(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssignWindowLayersConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    :cond_23
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_WindowLayersController_3664(Lcom/android/server/wm/WindowState;)V
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v3, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    :goto_f
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ne v2, v1, :cond_1e

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v2, v1, :cond_22

    :cond_1e
    const/4 v0, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    :cond_22
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_32

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    :cond_32
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_4a

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget-object v3, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ne v2, v3, :cond_4a

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v2

    if-eqz v2, :cond_66

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    :cond_66
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    :cond_6e
    return-void

    :cond_6f
    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    goto :goto_f
.end method
