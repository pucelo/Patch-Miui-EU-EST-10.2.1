.class Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;
.super Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;
.source "BoundsSeekBarInjector.java"


# instance fields
.field private mBoundsEnd:F

.field private mBoundsStart:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTouchBoundsEnd:F

.field private mTouchBoundsStart:F

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object p1, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    iput-boolean p2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    return-void
.end method

.method private computeTouchOffset()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsStart:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsEnd:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsStart:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsEnd:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    goto :goto_0
.end method


# virtual methods
.method public setBounds(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsStart:F

    iput p2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsEnd:F

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->setVertical(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    return-void
.end method

.method public transformTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->transformTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v5, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/miui/volume/Util;->constrain(FFF)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->computeTouchOffset()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v5, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/miui/volume/Util;->constrain(FFF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v0, v2

    invoke-virtual {p1, v2, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
