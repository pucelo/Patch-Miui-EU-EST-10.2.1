.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$CtrlType;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mCurrentDimSide:I

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/TaskPositioner;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method private endDragLocked()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    return-void
.end method

.method private getDimSide(I)I
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_23

    :cond_22
    return v3

    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_38

    const/4 v0, 0x1

    return v0

    :cond_38
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_42

    return v2

    :cond_42
    return v3
.end method

.method private notifyMoveLocked(FF)Z
    .registers 8

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v2, :cond_f

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    return v4

    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    float-to-int v0, p1

    float-to-int v1, p2

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_42
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    return v4
.end method

.method private showDimLayer()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    return-void

    :cond_2f
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_18
.end method

.method private updateDimLayerVisibility(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->getDimSide(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->hide()V

    :goto_19
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->showDimLayer()V

    goto :goto_19
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .registers 13

    int-to-float v6, p1

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v6, p2

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v0, v6, v7

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v2, v6, v7

    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v1, v6, v7

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method


# virtual methods
.method public dimFullscreen()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getWindowDragBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAttachedToDisplay()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method isFullscreen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method register(Landroid/view/Display;)V
    .registers 14

    const-wide v10, 0x1dcd65000L

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Task positioner already registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    aget-object v2, v0, v8

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    new-instance v2, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v7}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-direct {v2, v3, v7, v7, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e0

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    new-instance v2, Lcom/android/server/wm/DimLayer;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    const-string/jumbo v5, "TaskPositioner"

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x30

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x20

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iput-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return-void
.end method

.method resizeDrag(FF)V
    .registers 25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-nez v2, :cond_158

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_34
    sub-int v7, v5, v3

    sub-int v8, v6, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_168

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v18, v7, v10

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_4c
    :goto_4c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v18, v8, v11

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_60
    :goto_60
    int-to-float v2, v7

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v9, v2, v18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v2, :cond_152

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_194

    const v2, 0x3f99999a    # 1.2f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_194

    :goto_79
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_1a8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v2, v0

    const v18, 0x3f99999a    # 1.2f

    div-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v13, v2, :cond_db

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    :cond_db
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v2, v14

    const v18, 0x3f99999a    # 1.2f

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_13b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_13b
    :goto_13b
    sub-int v2, v5, v3

    if-gt v7, v2, :cond_143

    sub-int v2, v6, v4

    if-le v8, v2, :cond_266

    :cond_143
    const/4 v12, 0x1

    :goto_144
    mul-int v2, v16, v13

    mul-int v18, v17, v14

    move/from16 v0, v18

    if-le v2, v0, :cond_269

    const/4 v2, 0x1

    :goto_14d
    if-ne v12, v2, :cond_26c

    move/from16 v7, v16

    move v8, v13

    :cond_152
    :goto_152
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    return-void

    :cond_158
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_163

    const v15, 0x3f99999a    # 1.2f

    goto/16 :goto_34

    :cond_163
    const v15, 0x3f555555

    goto/16 :goto_34

    :cond_168
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int v18, v7, v10

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto/16 :goto_4c

    :cond_17e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_60

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int v18, v8, v11

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_60

    :cond_194
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v2, :cond_152

    float-to-double v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v2, v18, v20

    if-lez v2, :cond_152

    goto/16 :goto_79

    :cond_1a8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v2, v0

    const v18, 0x3f99999a    # 1.2f

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v13, v2, :cond_204

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    :cond_204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v2, v14

    const v18, 0x3f99999a    # 1.2f

    div-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_13b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto/16 :goto_13b

    :cond_266
    const/4 v12, 0x0

    goto/16 :goto_144

    :cond_269
    const/4 v2, 0x0

    goto/16 :goto_14d

    :cond_26c
    move/from16 v7, v17

    move v8, v14

    goto/16 :goto_152
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    return-void
.end method

.method startDrag(ZZFFLandroid/graphics/Rect;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz p1, :cond_47

    iget v0, p5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_19

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_19
    iget v0, p5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_26

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_26
    iget v0, p5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_33

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_33
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_40

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_40
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v0, :cond_5e

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    :cond_47
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v0, v3, :cond_60

    :goto_51
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_5e
    move v0, v2

    goto :goto_45

    :cond_60
    move v1, v2

    goto :goto_51
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method unregister()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    :cond_3d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .registers 8

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    sub-int p1, p3, p5

    :goto_8
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1e

    sub-int p2, p4, p6

    :goto_10
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    return-void

    :cond_1b
    add-int p3, p1, p5

    goto :goto_8

    :cond_1e
    add-int p4, p2, p6

    goto :goto_10
.end method
