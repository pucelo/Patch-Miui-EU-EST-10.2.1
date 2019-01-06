.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method constructor <init>(Landroid/view/ViewGroup;III)V
    .registers 10

    const/4 v4, 0x4

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    iput v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10303a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getTabHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method hide()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v7, :cond_3e

    :cond_a
    const/4 v2, 0x1

    :goto_b
    if-eqz v2, :cond_4b

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_40

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int v0, v4, v5

    :goto_1b
    if-eqz v2, :cond_4d

    const/4 v1, 0x0

    :goto_1e
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v6, v4, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3e
    const/4 v2, 0x0

    goto :goto_b

    :cond_40
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_1b

    :cond_4b
    const/4 v0, 0x0

    goto :goto_1b

    :cond_4d
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5d

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_1e

    :cond_5d
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_1e
.end method

.method public hideTarget()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method layout(IIIII)V
    .registers 32

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    sub-int v11, p3, p1

    sub-int v10, p4, p2

    int-to-float v0, v11

    move/from16 v23, v0

    const v24, 0x3f2aaaab

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v21

    div-int/lit8 v24, v7, 0x2

    add-int v9, v23, v24

    int-to-float v0, v11

    move/from16 v23, v0

    const v24, 0x3eaaaaaa

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v7, 0x2

    sub-int v13, v23, v24

    sub-int v23, v11, v7

    div-int/lit8 v8, v23, 0x2

    add-int v12, v8, v7

    if-eqz p5, :cond_62

    const/16 v23, 0x1

    move/from16 v0, p5

    move/from16 v1, v23

    if-ne v0, v1, :cond_100

    :cond_62
    sub-int v23, v10, v17

    div-int/lit8 v20, v23, 0x2

    add-int v15, v20, v17

    sub-int v23, v10, v6

    div-int/lit8 v22, v23, 0x2

    add-int v23, v10, v6

    div-int/lit8 v5, v23, 0x2

    if-nez p5, :cond_bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v5}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    rsub-int/lit8 v24, v11, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v9, v21

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v9, v1, v2, v15}, Landroid/widget/ImageView;->layout(IIII)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    :goto_ba
    return-void

    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sub-int v24, v11, v7

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11, v5}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v11, v11

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v13, v21

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2, v15}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x30

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto :goto_ba

    :cond_100
    sub-int v23, v11, v21

    div-int/lit8 v18, v23, 0x2

    add-int v23, v11, v21

    div-int/lit8 v19, v23, 0x2

    int-to-float v0, v10

    move/from16 v23, v0

    const v24, 0x3f2aaaab

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    add-int v23, v23, v24

    sub-int v22, v23, v17

    int-to-float v0, v10

    move/from16 v23, v0

    const v24, 0x3eaaaaaa

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    sub-int v5, v23, v24

    const/16 v23, 0x2

    move/from16 v0, p5

    move/from16 v1, v23

    if-ne v0, v1, :cond_173

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    rsub-int/lit8 v24, v10, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v8, v1, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v22, v17

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_ba

    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sub-int v24, v10, v6

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v8, v1, v12, v10}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v10, v10

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v8, v10, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v5, v17

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v24

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_ba
.end method

.method public measure(II)V
    .registers 9

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method reset(Z)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10303a0

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_2c

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5c

    :cond_2c
    const/4 v2, 0x1

    :goto_2d
    if-eqz v2, :cond_69

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_5e

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int v0, v4, v5

    :goto_3d
    if-eqz v2, :cond_6b

    const/4 v1, 0x0

    :goto_40
    if-eqz p1, :cond_86

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_5b
    return-void

    :cond_5c
    const/4 v2, 0x0

    goto :goto_2d

    :cond_5e
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_3d

    :cond_69
    const/4 v0, 0x0

    goto :goto_3d

    :cond_6b
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7b

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_40

    :cond_7b
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_40

    :cond_86
    if-eqz v2, :cond_a2

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    :goto_92
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_5b

    :cond_a2
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_92
.end method

.method setBarBackgroundResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method setHintText(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method setIcon(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method setState(I)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v2, :cond_57

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_59

    move v1, v2

    :goto_f
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5b

    new-array v0, v2, [I

    const v1, 0x10100a2

    aput v1, v0, v3

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_31
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_46
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103039f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_54
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    return-void

    :cond_57
    move v1, v3

    goto :goto_7

    :cond_59
    move v1, v3

    goto :goto_f

    :cond_5b
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10303a0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_54
.end method

.method setTabBackgroundResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method setTarget(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method show(Z)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_3f

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_17

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    :cond_17
    const/4 v2, 0x1

    :goto_18
    if-eqz v2, :cond_4a

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    :goto_24
    if-eqz v2, :cond_4c

    const/4 v1, 0x0

    :goto_27
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3f
    return-void

    :cond_40
    const/4 v2, 0x0

    goto :goto_18

    :cond_42
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    neg-int v0, v4

    goto :goto_24

    :cond_4a
    const/4 v0, 0x0

    goto :goto_24

    :cond_4c
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_58

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_27

    :cond_58
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    neg-int v1, v4

    goto :goto_27
.end method

.method showTarget()V
    .registers 5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updateDrawableStates()V
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    return-void
.end method
