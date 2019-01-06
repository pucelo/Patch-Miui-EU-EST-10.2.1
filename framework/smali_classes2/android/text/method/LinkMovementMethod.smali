.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final CLICK:I = 0x1

.field private static final DOWN:I = 0x3

.field private static FROM_BELOW:Ljava/lang/Object; = null

.field private static final UP:I = 0x2

.field private static sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 29

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v24

    add-int v19, v23, v24

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v23

    add-int v23, v23, v6

    sub-int v5, v23, v19

    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v17

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v16

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v14, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v20

    if-gez v21, :cond_5c

    sget-object v23, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    if-ltz v23, :cond_5c

    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v20

    move/from16 v21, v20

    :cond_5c
    move/from16 v0, v21

    if-le v0, v14, :cond_66

    const v20, 0x7fffffff

    const v21, 0x7fffffff

    :cond_66
    move/from16 v0, v20

    if-ge v0, v12, :cond_6e

    const/16 v20, -0x1

    const/16 v21, -0x1

    :cond_6e
    packed-switch p1, :pswitch_data_128

    :cond_71
    :goto_71
    const/16 v23, 0x0

    return v23

    :pswitch_74
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_7d

    const/16 v23, 0x0

    return v23

    :cond_7d
    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9d

    const/16 v23, 0x0

    return v23

    :cond_9d
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_71

    :pswitch_a9
    const/4 v9, -0x1

    const/4 v8, -0x1

    const/4 v13, 0x0

    :goto_ac
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_d7

    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    move/from16 v0, v20

    if-lt v11, v0, :cond_c7

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_d4

    :cond_c7
    if-le v11, v8, :cond_d4

    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    move v8, v11

    :cond_d4
    add-int/lit8 v13, v13, 0x1

    goto :goto_ac

    :cond_d7
    if-ltz v9, :cond_71

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/16 v23, 0x1

    return v23

    :pswitch_e1
    const v9, 0x7fffffff

    const v8, 0x7fffffff

    const/4 v13, 0x0

    :goto_e8
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_118

    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_105

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_115

    :cond_105
    move/from16 v0, v22

    if-ge v0, v9, :cond_115

    move/from16 v9, v22

    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    :cond_115
    add-int/lit8 v13, v13, 0x1

    goto :goto_e8

    :cond_118
    const v23, 0x7fffffff

    move/from16 v0, v23

    if-ge v8, v0, :cond_71

    move-object/from16 v0, p3

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/16 v23, 0x1

    return v23

    nop

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_74
        :pswitch_a9
        :pswitch_e1
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_b

    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    :cond_b
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v1, 0x1

    sparse-switch p3, :sswitch_data_22

    :cond_4
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_9
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v1, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :sswitch_data_22
    .sparse-switch
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_10

    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v9, :cond_a

    if-nez v0, :cond_5d

    :cond_a
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float v7, v5

    invoke-virtual {v1, v2, v7}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    array-length v7, v3

    if-eqz v7, :cond_5a

    if-ne v0, v9, :cond_48

    aget-object v7, v3, v8

    invoke-virtual {v7, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_47
    :goto_47
    return v9

    :cond_48
    if-nez v0, :cond_47

    aget-object v7, v3, v8

    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aget-object v8, v3, v8

    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {p2, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_47

    :cond_5a
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_5d
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    return v7
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
