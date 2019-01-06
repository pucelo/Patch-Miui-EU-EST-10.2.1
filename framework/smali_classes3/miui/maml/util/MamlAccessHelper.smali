.class public Lmiui/maml/util/MamlAccessHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "MamlAccessHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p1, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 7

    iget-object v3, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_c
    if-ltz v2, :cond_24

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v3

    if-eqz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_24
    const/high16 v3, -0x80000000

    return v3
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 5

    iget-object v2, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 8

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_22

    :cond_4
    return v3

    :pswitch_5
    iget-object v2, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v1

    if-ltz p1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    const-string/jumbo v2, "up"

    invoke-virtual {v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_22
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    iget-object v2, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v1

    if-ltz p1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1b

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12

    const/4 v7, 0x0

    iget-object v4, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v2

    if-ltz p1, :cond_6b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_6b

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    const-string/jumbo v0, ""

    const-string/jumbo v4, "MamlAccessHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "element.getContentDescription() == null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v6

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v7

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_6a
    return-void

    :cond_6b
    const-string/jumbo v4, "MamlAccessHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "virtualViewId not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_6a
.end method
