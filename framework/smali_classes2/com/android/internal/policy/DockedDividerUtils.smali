.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    packed-switch p1, :pswitch_data_24

    :goto_8
    if-eq p1, v0, :cond_d

    const/4 v2, 0x2

    if-ne p1, v2, :cond_21

    :cond_d
    :goto_d
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    return-void

    :pswitch_11
    iput p0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_8

    :pswitch_14
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :pswitch_17
    add-int v2, p0, p5

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_8

    :pswitch_1c
    add-int v2, p0, p5

    iput v2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_8

    :cond_21
    move v0, v1

    goto :goto_d

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method public static calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .registers 9

    if-eqz p0, :cond_13

    iget v1, p1, Landroid/graphics/Rect;->top:I

    :goto_4
    if-eqz p0, :cond_16

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p3, v2

    :goto_a
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    div-int/lit8 v3, p4, 0x2

    sub-int/2addr v2, v3

    return v2

    :cond_13
    iget v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_16
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v2

    goto :goto_a
.end method

.method public static calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .registers 4

    packed-switch p1, :pswitch_data_14

    const/4 v0, 0x0

    return v0

    :pswitch_5
    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0

    :pswitch_8
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0

    :pswitch_b
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    return v0

    :pswitch_f
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public static getDockSideFromCreatedMode(ZZ)I
    .registers 3

    if-eqz p0, :cond_8

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_8
    if-eqz p1, :cond_c

    const/4 v0, 0x4

    return v0

    :cond_c
    const/4 v0, 0x3

    return v0
.end method

.method public static invertDockSide(I)I
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, -0x1

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_b
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .registers 4

    if-eqz p1, :cond_1b

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_e
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_27

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_27
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1a
.end method
