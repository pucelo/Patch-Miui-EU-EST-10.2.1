.class Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Lcom/android/internal/widget/helper/ItemTouchUIUtil;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findMaxElevation(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)F
    .registers 9

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_1b

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p2, :cond_11

    :cond_e
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v2

    cmpl-float v5, v2, v4

    if-lez v5, :cond_e

    move v4, v2

    goto :goto_e

    :cond_1b
    return v4
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const v3, 0x10202c9

    const/4 v2, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_18

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setElevation(F)V

    :cond_18
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 13

    const v4, 0x10202c9

    if-eqz p7, :cond_21

    invoke-virtual {p3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-virtual {p3}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;->findMaxElevation(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v0, v3, v2

    invoke-virtual {p3, v0}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_21
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 8

    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .registers 2

    return-void
.end method
