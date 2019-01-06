.class public Lcom/android/keyguard/KeyguardTextViewDrawable;
.super Landroid/widget/TextView;
.source "KeyguardTextViewDrawable.java"


# instance fields
.field private mAliganCenter:Z

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardTextViewDrawable;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;III)V
    .locals 8

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    :goto_0
    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_0
    move v5, p3

    goto :goto_0

    :cond_1
    move v1, p4

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x0

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    :goto_3
    move v3, v5

    add-int v0, v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getLineCount()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getLineHeight()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getLineHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    goto :goto_3

    :pswitch_1
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x0

    add-int v3, v2, v5

    add-int/lit8 v0, v1, 0x0

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mWidth:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int v2, v6, v7

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mWidth:I

    iput p2, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v5

    aget-object v3, v4, v6

    aget-object v2, v4, v7

    aget-object v0, v4, v8

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v5, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-direct {p0, v3, v6, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0, v2, v7, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v8, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    :cond_3
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
