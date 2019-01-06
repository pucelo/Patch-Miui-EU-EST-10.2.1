.class Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;
.super Ljava/lang/Object;
.source "MiuiVolumeTimerDrawableHelper.java"

# interfaces
.implements Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSegments:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCountDownStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSegment:I

.field private mDeterminedSegment:I

.field private mDragging:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:Landroid/graphics/drawable/Drawable;

.field private mProgressDraggingIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

.field private mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

.field private mProgressNormalRect:Landroid/graphics/drawable/Drawable;

.field private mTicking:Z

.field private mTickingTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

.field private mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

.field private mTimeDrawableHint:Ljava/lang/String;

.field private mTimeRemain:I

.field private mTimeSegmentTitle:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    return v0
.end method

.method constructor <init>(Landroid/widget/SeekBar;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCountDownStates:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$string;->miui_ringer_count_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableHint:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$array;->miui_volume_timer_segments_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeSegmentTitle:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->setupDrawables(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->setOutlineProvider(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    :cond_0
    return-void
.end method

.method private addTextDrawables(Landroid/content/Context;)V
    .locals 10

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    const-string/jumbo v2, "VolumeTimerDrawables"

    const-string/jumbo v3, "progress drawable is not a LayerDrawable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_timer_time_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-instance v2, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-direct {v2}, Lcom/android/systemui/miui/widget/CenterTextDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {v2, v1}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$color;->miui_volume_tint_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextColor(I)V

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x1020000

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    new-instance v2, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-direct {v2}, Lcom/android/systemui/miui/widget/CenterTextDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {v2, v1}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$color;->miui_volume_tint_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextColor(I)V

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v5

    new-instance v4, Landroid/graphics/drawable/ScaleDrawable;

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    const v6, 0x800003

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const v3, 0x102000d

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private formatRemainTime(I)Ljava/lang/String;
    .locals 8

    div-int/lit8 v3, p1, 0x3c

    div-int/lit8 v0, v3, 0x3c

    div-int/lit8 v3, p1, 0x3c

    rem-int/lit8 v1, v3, 0x3c

    rem-int/lit8 v2, p1, 0x3c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setOutlineProvider(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private setupDrawables(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x1020000

    invoke-static {v0, v1}, Lcom/android/systemui/miui/DrawableUtils;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_background_segments:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/DrawableUtils;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackgroundSegments:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x102000d

    invoke-static {v0, v1}, Lcom/android/systemui/miui/DrawableUtils;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_normal:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/DrawableUtils;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_dragging_rect:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/DrawableUtils;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_dragging_rect_idle:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/DrawableUtils;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_dragging_icon:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/DrawableUtils;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->addTextDrawables(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateCountDownStateText()V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v4, ""

    iget-boolean v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDeterminedSegment:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeSegmentTitle:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v8, v6}, Lcom/android/systemui/miui/volume/Util;->constrain(III)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeSegmentTitle:[Ljava/lang/String;

    aget-object v3, v5, v2

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/miui/volume/R$string;->miui_ringer_count_down_time:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCountDownStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {v0, v4}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateDrawables()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingIcon:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    xor-int/lit8 v3, v3, 0x1

    :goto_0
    invoke-static {v6, v3}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackgroundSegments:Landroid/graphics/drawable/Drawable;

    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-static {v3, v6}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    xor-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-static {v6, v3}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    xor-int/lit8 v2, v3, 0x1

    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    xor-int/lit8 v0, v3, 0x1

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v2, :cond_7

    iget v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    if-le v3, v4, :cond_7

    move v3, v4

    :goto_4
    invoke-static {v6, v3}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v2, :cond_8

    iget v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    if-gt v6, v4, :cond_8

    :goto_5
    invoke-static {v3, v4}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateTickingTimeText(I)V

    :cond_2
    if-nez v2, :cond_b

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_9

    const/4 v1, 0x1

    :goto_6
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v5}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/graphics/drawable/Drawable;Z)V

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-static {v3, v4}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/graphics/drawable/Drawable;Z)V

    :goto_7
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_dragging_corners:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_dragging_corners:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    :goto_8
    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move v3, v5

    goto :goto_4

    :cond_8
    move v4, v0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-static {v3, v4}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_released_corners:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_released_corners:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_8
.end method

.method private updateTickingTimeText(I)V
    .locals 5

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    xor-int/lit8 v0, v4, 0x1

    :goto_0
    const-string/jumbo v3, ""

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableHint:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {v1, v3}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->formatRemainTime(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public addCountDownStateReceiver(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCountDownStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTickingTimeReceiver(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSegmentChange(II)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDeterminedSegment:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    iput p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDeterminedSegment:I

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateCountDownStateText()V

    :cond_2
    return-void
.end method

.method public onTimeUpdate(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeRemain:I

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateTickingTimeText(I)V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchDown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateCountDownStateText()V

    return-void
.end method

.method public onTouchRelease()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeRemain:I

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateTickingTimeText(I)V

    return-void
.end method
