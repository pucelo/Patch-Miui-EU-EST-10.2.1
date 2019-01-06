.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultPaddingEnd:I

.field private mMeasureLinearly:Z

.field private mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;->$INST$0:Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    return-void
.end method

.method private clearMeasureOrder()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic lambda$-com_android_internal_widget_NotificationActionListLayout_10433(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private rebuildMeasureOrder(II)V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_4c

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_46

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_46

    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_46
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_4c
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v10, p5, p3

    sub-int v18, v10, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v14

    const v18, 0x800003

    move/from16 v0, v18

    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    packed-switch v18, :pswitch_data_ac

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    :goto_3a
    const/16 v17, 0x0

    const/4 v9, 0x1

    if-eqz v13, :cond_42

    add-int/lit8 v17, v8, -0x1

    const/4 v9, -0x1

    :cond_42
    const/4 v11, 0x0

    :goto_43
    if-ge v11, v8, :cond_aa

    mul-int v18, v9, v11

    add-int v4, v17, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_94

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int v18, v12, v3

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v16

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v5, v5, v18

    add-int v18, v5, v7

    add-int v19, v6, v3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v18, v18, v7

    add-int v5, v5, v18

    :cond_94
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :pswitch_97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v18, v18, p4

    sub-int v18, v18, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_3a

    :cond_aa
    return-void

    nop

    :pswitch_data_ac
    .packed-switch 0x5
        :pswitch_97
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 33

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    if-eqz v3, :cond_a

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v13

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    :goto_18
    move/from16 v0, v16

    if-ge v0, v13, :cond_3c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v3, v4, Landroid/widget/TextView;

    if-eqz v3, :cond_39

    add-int/lit8 v29, v29, 0x1

    :goto_2a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_36

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v18, v4

    :cond_36
    add-int/lit8 v16, v16, 0x1

    goto :goto_18

    :cond_39
    add-int/lit8 v26, v26, 0x1

    goto :goto_2a

    :cond_3c
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v29

    if-ne v0, v3, :cond_56

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-eq v0, v3, :cond_58

    :cond_56
    const/16 v22, 0x1

    :cond_58
    if-nez v22, :cond_95

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v16, 0x0

    :goto_64
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_95

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/util/Pair;

    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v5, v3, :cond_92

    const/16 v22, 0x1

    :cond_92
    add-int/lit8 v16, v16, 0x1

    goto :goto_64

    :cond_95
    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_a5

    if-eqz v22, :cond_a5

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    :cond_a5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_ee

    const/4 v15, 0x1

    :goto_ac
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int v17, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    :goto_c8
    move/from16 v0, v16

    if-ge v0, v13, :cond_12e

    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_12e

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_f0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :goto_e3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_101

    :goto_eb
    add-int/lit8 v16, v16, 0x1

    goto :goto_c8

    :cond_ee
    const/4 v15, 0x0

    goto :goto_ac

    :cond_f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v5, v16, v25

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    goto :goto_e3

    :cond_101
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    move v6, v10

    if-eqz v15, :cond_112

    sub-int v14, v17, v10

    sub-int v3, v23, v21

    div-int v20, v14, v3

    sub-int v6, v17, v20

    :cond_112
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    add-int/2addr v10, v3

    add-int/lit8 v21, v21, 0x1

    goto :goto_eb

    :cond_12e
    if-eqz v18, :cond_17c

    if-eqz v15, :cond_1a4

    move/from16 v0, v17

    if-ge v10, v0, :cond_1a4

    :goto_136
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_150

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    sub-int/2addr v10, v3

    :cond_150
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v24, v0

    const/4 v3, -0x1

    move-object/from16 v0, v19

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v18

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    add-int/2addr v10, v3

    :cond_17c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v5

    move/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    return-void

    :cond_1a4
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_17c

    goto :goto_136
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    return-void
.end method

.method public setEmphasizedMode(Z)V
    .registers 6
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v2

    if-eqz p1, :cond_1e

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    if-eqz p1, :cond_21

    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    return-void

    :cond_1e
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    goto :goto_d

    :cond_21
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_17
.end method
