.class public Lcom/android/keyguard/BadgetImageView;
.super Landroid/widget/ImageView;
.source "BadgetImageView.java"


# instance fields
.field private mBadget:I

.field private mBadgetPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/keyguard/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    const v1, 0x7f06001f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/keyguard/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/android/keyguard/BadgetImageView;->mBadget:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/BadgetImageView;->mBadget:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/BadgetImageView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setBadget(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/BadgetImageView;->mBadget:I

    return-void
.end method
