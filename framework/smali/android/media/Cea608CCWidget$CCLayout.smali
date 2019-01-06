.class Landroid/media/Cea608CCWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLayout"
.end annotation


# static fields
.field private static final MAX_ROWS:I = 0xf

.field private static final SAFE_AREA_RATIO:F = 0.9f


# instance fields
.field private final mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/16 v5, 0xf

    const/4 v4, -0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-array v1, v5, [Landroid/media/Cea608CCWidget$CCLineBox;

    iput-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLayout;->setGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLayout;->setOrientation(I)V

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v5, :cond_2e

    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    new-instance v2, Landroid/media/Cea608CCWidget$CCLineBox;

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/Cea608CCWidget$CCLineBox;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v4, v4}, Landroid/media/Cea608CCWidget$CCLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2e
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 17

    sub-int v6, p4, p2

    sub-int v5, p5, p3

    mul-int/lit8 v7, v6, 0x3

    mul-int/lit8 v8, v5, 0x4

    if-lt v7, v8, :cond_3f

    mul-int/lit8 v7, v5, 0x4

    div-int/lit8 v3, v7, 0x3

    move v2, v5

    :goto_f
    int-to-float v7, v3

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    float-to-int v3, v7

    int-to-float v7, v2

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    float-to-int v2, v7

    sub-int v7, v6, v3

    div-int/lit8 v1, v7, 0x2

    sub-int v7, v5, v2

    div-int/lit8 v4, v7, 0x2

    const/4 v0, 0x0

    :goto_24
    const/16 v7, 0xf

    if-ge v0, v7, :cond_45

    iget-object v7, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v7, v7, v0

    mul-int v8, v2, v0

    div-int/lit8 v8, v8, 0xf

    add-int/2addr v8, v4

    add-int v9, v1, v3

    add-int/lit8 v10, v0, 0x1

    mul-int/2addr v10, v2

    div-int/lit8 v10, v10, 0xf

    add-int/2addr v10, v4

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/media/Cea608CCWidget$CCLineBox;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3f
    move v3, v6

    mul-int/lit8 v7, v6, 0x3

    div-int/lit8 v2, v7, 0x4

    goto :goto_f

    :cond_45
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3f666666    # 0.9f

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLayout;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v6, v5, 0x3

    mul-int/lit8 v7, v4, 0x4

    if-lt v6, v7, :cond_39

    mul-int/lit8 v6, v4, 0x4

    div-int/lit8 v5, v6, 0x3

    :goto_1a
    int-to-float v6, v5

    mul-float/2addr v6, v8

    float-to-int v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v8

    float-to-int v4, v6

    div-int/lit8 v1, v4, 0xf

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v0, 0x0

    :goto_2b
    const/16 v6, 0xf

    if-ge v0, v6, :cond_3e

    iget-object v6, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v6, v6, v0

    invoke-virtual {v6, v3, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_39
    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v4, v6, 0x4

    goto :goto_1a

    :cond_3e
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public setFontScale(F)V
    .registers 2

    return-void
.end method

.method update([Landroid/text/SpannableStringBuilder;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_28

    aget-object v1, p1, v0

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->setVisibility(I)V

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->setVisibility(I)V

    goto :goto_1c

    :cond_28
    return-void
.end method
