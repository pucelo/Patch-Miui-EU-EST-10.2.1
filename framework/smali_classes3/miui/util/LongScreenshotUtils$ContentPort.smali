.class public Lmiui/util/LongScreenshotUtils$ContentPort;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentPort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort$H;
    }
.end annotation


# instance fields
.field private mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

.field private mIsFakeTouchForScroll:Z

.field private mIsFirstMove:Z

.field private mLastCaptureBottom:I

.field private mMainScrollView:Landroid/view/View;

.field private mMainScrollViewTop:I

.field private mNavBarHeight:I

.field private mNeedUseMultiTouch:Z

.field private mPrevScrolledY:I

.field private mPrevScrolledYChildView:Landroid/view/View;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mTempLoc:[I

.field private mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTotalScrollDistance:I

.field private mTouchY:I

.field private mVerticalEdge:I

.field private mVerticalScrollBarEnabled:Z


# direct methods
.method static synthetic -get0(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->start()V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    new-instance v1, Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-direct {v1, p0}, Lmiui/util/LongScreenshotUtils$ContentPort$H;-><init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    new-array v1, v3, [I

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v3, :cond_4a

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v1, v1, v0

    iput v0, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4a
    return-void
.end method

.method private broadcastCallback()V
    .registers 11

    const/4 v8, 0x1

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_8f

    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    if-lt v6, v7, :cond_91

    const/4 v2, 0x1

    :goto_16
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    if-eqz v6, :cond_93

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v7, v7, v8

    sub-int v5, v6, v7

    :goto_30
    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    add-int/2addr v6, v5

    iput v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->calculateScrollViewTop()V

    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v7

    add-int v0, v6, v7

    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    if-nez v6, :cond_aa

    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int v3, v0, v6

    sub-int v4, v3, v5

    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    :goto_4c
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "IsEnd"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "TopLoc"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "BottomLoc"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "ViewTop"

    iget v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "ViewBottom"

    iget v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v2, :cond_8e

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const-wide/16 v8, 0x1f4

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_8e
    return-void

    :cond_8f
    const/4 v2, 0x1

    goto :goto_16

    :cond_91
    const/4 v2, 0x0

    goto :goto_16

    :cond_93
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    sub-int v5, v6, v7

    goto :goto_30

    :cond_aa
    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    sub-int v4, v6, v5

    iget v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int v3, v0, v6

    if-gt v3, v4, :cond_b5

    move v3, v0

    :cond_b5
    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    goto :goto_4c
.end method

.method private calculateScrollViewTop()V
    .registers 3

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-static {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    return-void
.end method

.method private checkIsMainScrollView(Landroid/view/View;)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isKnownScrollableView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollVertically(I)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_12

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1d

    return v9

    :catch_12
    move-exception v0

    const-string/jumbo v4, "LongScreenshotUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v9

    :cond_1d
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v2, v4, 0x3

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v4, v2, :cond_39

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ge v4, v1, :cond_3a

    :cond_39
    return v9

    :cond_3a
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v9

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v5, v5, v10

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v6, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v7, v7, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v2, :cond_6d

    :cond_6c
    return v9

    :cond_6d
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_6c

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v10

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-static {p1, v4}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v4

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    return v10
.end method

.method private checkIsMayHasBg()Z
    .registers 4

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.miui.notes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string/jumbo v2, "com.miui.notes.editor.RichEditView$RichEditScrollView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_26
    const-string/jumbo v2, "com.tencent.mobileqq"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "com.tencent.mobileqq.bubble.ChatXListView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_38
    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ListView;

    :goto_45
    return v2

    :cond_46
    const/4 v2, 0x1

    goto :goto_45

    :cond_48
    const/4 v2, 0x0

    goto :goto_45
.end method

.method private checkNeedFakeTouchForScroll()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    return v2

    :cond_20
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_53

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_52

    const-string/jumbo v0, "com.ucmobile"

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_52
    return v2

    :cond_53
    const/4 v0, 0x1

    return v0
.end method

.method private dispatchFakeTouchEvent(I)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v6, p1

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private dispatchMoveAndReset(I)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    iput-boolean v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_10
.end method

.method private findMainScrollView()Landroid/view/View;
    .registers 15

    const/4 v13, 0x0

    const/4 v12, 0x0

    invoke-static {}, Lmiui/util/LongScreenshotUtils$ContentPort;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "force_fsg_nav_bar"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v9, "window"

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v5, :cond_42

    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_33
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_7b

    return-object v13

    :cond_42
    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_54

    const/4 v9, 0x2

    if-ne v2, v9, :cond_63

    :cond_54
    const/4 v6, 0x1

    :goto_55
    sget-boolean v9, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v9, :cond_65

    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_33

    :cond_63
    const/4 v6, 0x0

    goto :goto_55

    :cond_65
    if-eqz v6, :cond_71

    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_33

    :cond_71
    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto :goto_33

    :cond_7b
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v9

    if-nez v9, :cond_83

    return-object v13

    :cond_83
    return-object v7

    :cond_84
    const-string/jumbo v9, "LongScreenshotUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Get top activity in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13
.end method

.method private findScrollView(Landroid/view/View;)Landroid/view/View;
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    return-object v4

    :cond_a
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_27

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_17
    if-ltz v1, :cond_27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_24

    return-object v2

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_27
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsMainScrollView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return-object p1

    :cond_2e
    return-object v4
.end method

.method private static findVisibleTop(Landroid/view/View;I)I
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_2

    :cond_16
    if-gez v0, :cond_19

    sub-int/2addr p1, v0

    :cond_19
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private finish()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    :cond_1b
    iput-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iput-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mLastCaptureBottom:I

    return-void
.end method

.method private getExpectScrollDistance()I
    .registers 5

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v2

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsoluteLayout;

    if-eqz v2, :cond_18

    div-int/lit8 v0, v0, 0x2

    :cond_18
    return v0
.end method

.method private getScrollViewVisibleHeight()I
    .registers 4

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_12

    return v0

    :cond_12
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getTopActivity()Landroid/app/Activity;
    .registers 10

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    :try_start_4
    const-class v8, Landroid/app/ActivityThread;

    const-string/jumbo v9, "mActivities"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const/4 v6, 0x0

    :goto_18
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_45

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3a} :catch_41

    move-result v8

    if-eqz v8, :cond_3e

    return-object v0

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :catch_41
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    const/4 v8, 0x0

    return-object v8
.end method

.method private isKnownScrollableView(Landroid/view/View;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_20

    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_20

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private isNestedScrollView(Ljava/lang/Class;)Z
    .registers 4

    const-string/jumbo v0, "android.support.v4.widget.NestedScrollView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    return v0

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isRecyclerView(Ljava/lang/Class;)Z
    .registers 4

    const-string/jumbo v0, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    return v0

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isTencentApp()Z
    .registers 3

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.tencent."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private scrollView()V
    .registers 3

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getExpectScrollDistance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollY(Landroid/view/View;I)V

    :cond_12
    return-void
.end method

.method private scrollY(Landroid/view/View;I)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5a

    instance-of v1, p1, Landroid/widget/ScrollView;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    instance-of v1, p1, Landroid/webkit/WebView;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    instance-of v1, p1, Landroid/widget/AbsoluteLayout;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5a

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    :goto_4e
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v1, :cond_78

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    if-eqz v1, :cond_6e

    invoke-direct {p0, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchMoveAndReset(I)V

    :goto_59
    return-void

    :cond_5a
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    goto :goto_4e

    :cond_6e
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v1, p2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_59

    :cond_78
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_82

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_59

    :cond_82
    invoke-virtual {p1, v3, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_59
.end method

.method private start()V
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkNeedFakeTouchForScroll()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_44

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v0

    :goto_27
    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    :cond_38
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    return-void

    :cond_44
    move v0, v1

    goto :goto_27
.end method


# virtual methods
.method public longScreenshot(II)Z
    .registers 9

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_46

    :goto_4
    return v5

    :pswitch_5
    iput p2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNavBarHeight:I

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findMainScrollView()Landroid/view/View;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_10

    move-result-object v1

    :goto_c
    if-nez v1, :cond_2c

    const/4 v2, 0x0

    return v2

    :catch_10
    move-exception v0

    const-string/jumbo v2, "LongScreenshotUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findMainScrollView exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_2c
    if-ne p1, v5, :cond_2f

    return v5

    :cond_2f
    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-virtual {v2, v5}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_4

    :pswitch_37
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_4

    :pswitch_3e
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_4

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_37
        :pswitch_3e
    .end packed-switch
.end method
