.class public Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ClipEdgeLinearLayout.java"


# instance fields
.field private mClipEdge:Z

.field private mClipEnd:Z

.field private mClipRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    iput-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEnd:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    iput-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEnd:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    iput-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEnd:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getClipRect()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->clipEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->getWidth()I

    move-result v0

    :cond_0
    invoke-direct {p0, v0, p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->setClipRectRight(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/miui/widget/R$styleable;->ClipEdgeLinearLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/widget/R$styleable;->ClipEdgeLinearLayout_clipEdge:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    sget v1, Lcom/android/systemui/miui/widget/R$styleable;->ClipEdgeLinearLayout_clipEnd:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEnd:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private setClipRectRight(ILandroid/view/ViewGroup;)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, p1, v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->setClipRectRight(ILandroid/view/ViewGroup;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->clipEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, p1, v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected clipEnd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEnd:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEnd:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void

    :cond_0
    move v3, p3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->getClipRect()V

    :cond_0
    return-void
.end method

.method public setClipEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;->mClipEdge:Z

    return-void
.end method
