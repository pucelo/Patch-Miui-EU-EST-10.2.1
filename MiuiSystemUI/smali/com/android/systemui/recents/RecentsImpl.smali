.class public Lcom/android/systemui/recents/RecentsImpl;
.super Lcom/android/systemui/recents/BaseRecentsImpl;
.source "RecentsImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 9

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    if-eqz p2, :cond_1

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v0

    :goto_0
    iget-object v4, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    sget v4, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    return-object v5
.end method


# virtual methods
.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 12

    new-instance v9, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v9}, Lcom/android/systemui/recents/model/Task;-><init>()V

    invoke-virtual {p0, p2, v9, p3}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v8

    iget-object v10, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sget v1, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v8}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, v10, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v10, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method
