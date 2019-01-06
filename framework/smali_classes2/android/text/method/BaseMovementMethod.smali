.class public Landroid/text/method/BaseMovementMethod;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBottomLine(Landroid/widget/TextView;)I
    .registers 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getCharacterWidth(Landroid/widget/TextView;)I
    .registers 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getInnerHeight(Landroid/widget/TextView;)I
    .registers 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getInnerWidth(Landroid/widget/TextView;)I
    .registers 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollBoundsLeft(Landroid/widget/TextView;)I
    .registers 10

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v5

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v0

    if-le v5, v0, :cond_10

    const/4 v6, 0x0

    return v6

    :cond_10
    const v2, 0x7fffffff

    move v3, v5

    :goto_14
    if-gt v3, v0, :cond_26

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    if-ge v4, v2, :cond_23

    move v2, v4

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_26
    return v2
.end method

.method private getScrollBoundsRight(Landroid/widget/TextView;)I
    .registers 10

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v5

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v0

    if-le v5, v0, :cond_10

    const/4 v6, 0x0

    return v6

    :cond_10
    const/high16 v4, -0x80000000

    move v2, v5

    :goto_13
    if-gt v2, v0, :cond_25

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    if-le v3, v4, :cond_22

    move v4, v3

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_25
    return v4
.end method

.method private getTopLine(Landroid/widget/TextView;)I
    .registers 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public canSelectArbitrarily()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .registers 5

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v1

    and-int/lit16 v0, v1, -0x601

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, -0xc2

    return v1
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 9

    const/16 v2, 0x1000

    const/4 v1, 0x2

    sparse-switch p3, :sswitch_data_ce

    :cond_6
    const/4 v0, 0x0

    return v0

    :sswitch_8
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_13
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_1e
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_29
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_34
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_3f
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_4a
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_55
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_60
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_6b
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_76
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_81
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_8c
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_97
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_a2
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->home(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_ad
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_b8
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->end(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :cond_c3
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    :sswitch_data_ce
    .sparse-switch
        0x13 -> :sswitch_4a
        0x14 -> :sswitch_60
        0x15 -> :sswitch_8
        0x16 -> :sswitch_29
        0x5c -> :sswitch_76
        0x5d -> :sswitch_8c
        0x7a -> :sswitch_a2
        0x7b -> :sswitch_b8
    .end sparse-switch
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 3

    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 11

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_13

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    :cond_13
    return v4

    :pswitch_14
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    const/4 v2, 0x0

    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_21
    const/4 v0, 0x0

    cmpg-float v3, v1, v6

    if-gez v3, :cond_4e

    neg-float v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    :cond_31
    :goto_31
    cmpg-float v3, v2, v6

    if-gez v3, :cond_5d

    neg-float v3, v2

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_41
    :goto_41
    return v0

    :cond_42
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    const/16 v3, 0xa

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_21

    :cond_4e
    cmpl-float v3, v1, v6

    if-lez v3, :cond_31

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    goto :goto_31

    :cond_5d
    cmpl-float v3, v2, v6

    if-lez v3, :cond_41

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_41

    nop

    :pswitch_data_6e
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 12

    invoke-virtual {p0, p2, p4}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    :cond_15
    return v6
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 13

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v8, :cond_24

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_24
    if-eqz v6, :cond_2c

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    :cond_2c
    return v6

    :cond_2d
    const/4 v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_31
    return v2
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 4

    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-gt v2, v3, :cond_22

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p1, v0, v2, v3}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v2, 0x1

    return v2

    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 11

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int v0, v5, v2

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    if-ge v5, v6, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    if-gt v1, v4, :cond_3e

    add-int v5, v1, p3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {p1, v3, v5, v6}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v5, 0x1

    return v5

    :cond_3e
    const/4 v5, 0x0

    return v5
.end method

.method protected scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 7

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    if-le v1, v0, :cond_1e

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    sub-int v2, v1, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    return v2

    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 7

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_19

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    return v2

    :cond_19
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    if-le v1, v0, :cond_13

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    return v2

    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v2

    add-int v0, v4, v2

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_2b

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {p1, v3, v4, v5}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v4, 0x1

    return v4

    :cond_2b
    const/4 v4, 0x0

    return v4
.end method

.method protected scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v4

    sub-int v1, v3, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    if-ltz v2, :cond_22

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v3, 0x1

    return v3

    :cond_22
    return v5
.end method

.method protected scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 8

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_23

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    return v2

    :cond_23
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    if-ltz v1, :cond_18

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v1, 0x1

    return v1

    :cond_18
    return v2
.end method

.method protected scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-ne v3, v1, :cond_15

    add-int/lit8 v2, v2, -0x1

    :cond_15
    if-ltz v2, :cond_2c

    sub-int v3, v2, p3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v3, 0x1

    return v3

    :cond_2c
    return v4
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
