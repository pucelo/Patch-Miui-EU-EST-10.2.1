.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# static fields
.field private static final TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

.field private static final TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;


# instance fields
.field private mBgFillPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mCornerRadius:I

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F

.field private mInvisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private mRotateDegrees:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mTaskBar:Landroid/view/View;

.field private mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

.field private mThumbnailRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-direct {v0, v4, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    return-void
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    iput p3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/TaskSnapshotChangedEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/recents/events/activity/TaskSnapshotChangedEvent;->taskId:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    sget v0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_6

    if-lez v9, :cond_6

    if-lez v8, :cond_6

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v10, v0, v2

    :goto_2
    const/4 v10, 0x0

    sub-int v0, v12, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_4

    :goto_3
    int-to-float v3, v12

    sub-int v0, v11, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_5

    :goto_4
    int-to-float v4, v11

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    move v12, v9

    goto :goto_3

    :cond_5
    move v11, v8

    goto :goto_4

    :cond_6
    int-to-float v3, v12

    int-to-float v4, v11

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method onTaskDataLoaded(Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V

    goto :goto_0
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    sget v1, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setLeftTopRightBottom(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget v0, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->scale:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v0, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v2, v2, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v3, v3, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v3, v3, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v4, v4, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    goto :goto_1
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 10

    const/4 v9, 0x0

    const/16 v6, 0xff

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x437f0000    # 255.0f

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    float-to-int v3, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v4, v8, v5

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v5, 0x6

    aput v4, v2, v5

    const/16 v5, 0xc

    aput v4, v2, v5

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/4 v6, 0x4

    aput v5, v2, v6

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0x9

    aput v5, v2, v6

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0xe

    aput v5, v2, v6

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    sget-object v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_3
    move v1, v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public updateThumbnailScale()V
    .locals 8

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v3, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    if-nez v3, :cond_6

    :cond_1
    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v3, v3, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v4, v4, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget-object v5, v5, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    invoke-virtual {v3, v4, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget v3, v3, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget v3, v3, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    if-eqz v3, :cond_1

    if-eqz v0, :cond_b

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget v3, v3, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    iget v3, v3, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRotation()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    goto/16 :goto_1

    :cond_a
    const/high16 v3, -0x3d4c0000    # -90.0f

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v3, v4

    div-float v1, v3, v6

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v3, v4

    div-float v2, v3, v6

    goto/16 :goto_1

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1
.end method
