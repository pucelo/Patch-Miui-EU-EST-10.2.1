.class public Lcom/android/keyguard/smartcover/BatteryLevelImageView;
.super Landroid/widget/ImageView;
.source "BatteryLevelImageView.java"


# instance fields
.field private mLevel:I

.field private mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPaddingLeft:I

    iget v2, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPadding:I

    iget v3, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mBottom:I

    iget v4, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mLevel:I

    rsub-int/lit8 v4, v4, 0x64

    mul-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mRight:I

    iget v4, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPaddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mBottom:I

    iget v5, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v1, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070415

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mPadding:I

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->mLevel:I

    return-void
.end method
