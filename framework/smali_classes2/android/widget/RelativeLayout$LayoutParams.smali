.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mNeedsLayoutResolution:Z

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method static synthetic -get0(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 2

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic -set3(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method public constructor <init>(II)V
    .registers 6

    const/16 v2, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    sget-object v7, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_46

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    :goto_2f
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v0, :cond_15c

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_16a

    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_46
    const/4 v7, 0x1

    goto :goto_2f

    :pswitch_48
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto :goto_43

    :pswitch_50
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v5, v8

    goto :goto_43

    :pswitch_59
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v5, v8

    goto :goto_43

    :pswitch_62
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x2

    aput v7, v5, v8

    goto :goto_43

    :pswitch_6b
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x3

    aput v7, v5, v8

    goto :goto_43

    :pswitch_74
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x4

    aput v7, v5, v8

    goto :goto_43

    :pswitch_7d
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x5

    aput v7, v5, v8

    goto :goto_43

    :pswitch_86
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x6

    aput v7, v5, v8

    goto :goto_43

    :pswitch_8f
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x7

    aput v7, v5, v8

    goto :goto_43

    :pswitch_98
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x8

    aput v7, v5, v8

    goto :goto_43

    :pswitch_a2
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_af

    const/4 v7, -0x1

    :goto_aa
    const/16 v8, 0x9

    aput v7, v5, v8

    goto :goto_43

    :cond_af
    const/4 v7, 0x0

    goto :goto_aa

    :pswitch_b1
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_be

    const/4 v7, -0x1

    :goto_b9
    const/16 v8, 0xa

    aput v7, v5, v8

    goto :goto_43

    :cond_be
    const/4 v7, 0x0

    goto :goto_b9

    :pswitch_c0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_ce

    const/4 v7, -0x1

    :goto_c8
    const/16 v8, 0xb

    aput v7, v5, v8

    goto/16 :goto_43

    :cond_ce
    const/4 v7, 0x0

    goto :goto_c8

    :pswitch_d0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_de

    const/4 v7, -0x1

    :goto_d8
    const/16 v8, 0xc

    aput v7, v5, v8

    goto/16 :goto_43

    :cond_de
    const/4 v7, 0x0

    goto :goto_d8

    :pswitch_e0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_ee

    const/4 v7, -0x1

    :goto_e8
    const/16 v8, 0xd

    aput v7, v5, v8

    goto/16 :goto_43

    :cond_ee
    const/4 v7, 0x0

    goto :goto_e8

    :pswitch_f0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_fe

    const/4 v7, -0x1

    :goto_f8
    const/16 v8, 0xe

    aput v7, v5, v8

    goto/16 :goto_43

    :cond_fe
    const/4 v7, 0x0

    goto :goto_f8

    :pswitch_100
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_10e

    const/4 v7, -0x1

    :goto_108
    const/16 v8, 0xf

    aput v7, v5, v8

    goto/16 :goto_43

    :cond_10e
    const/4 v7, 0x0

    goto :goto_108

    :pswitch_110
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x10

    aput v7, v5, v8

    goto/16 :goto_43

    :pswitch_11b
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x11

    aput v7, v5, v8

    goto/16 :goto_43

    :pswitch_126
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x12

    aput v7, v5, v8

    goto/16 :goto_43

    :pswitch_131
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x13

    aput v7, v5, v8

    goto/16 :goto_43

    :pswitch_13c
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_14a

    const/4 v7, -0x1

    :goto_144
    const/16 v8, 0x14

    aput v7, v5, v8

    goto/16 :goto_43

    :cond_14a
    const/4 v7, 0x0

    goto :goto_144

    :pswitch_14c
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_15a

    const/4 v7, -0x1

    :goto_154
    const/16 v8, 0x15

    aput v7, v5, v8

    goto/16 :goto_43

    :cond_15a
    const/4 v7, 0x0

    goto :goto_154

    :cond_15c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x16

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_50
        :pswitch_59
        :pswitch_62
        :pswitch_6b
        :pswitch_74
        :pswitch_7d
        :pswitch_86
        :pswitch_8f
        :pswitch_98
        :pswitch_a2
        :pswitch_b1
        :pswitch_c0
        :pswitch_d0
        :pswitch_e0
        :pswitch_f0
        :pswitch_100
        :pswitch_48
        :pswitch_110
        :pswitch_11b
        :pswitch_126
        :pswitch_131
        :pswitch_13c
        :pswitch_14c
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    const/16 v2, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 5

    const/16 v2, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6

    const/16 v3, 0x16

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method

.method private hasRelativeRules()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x10

    aget v2, v2, v3

    if-nez v2, :cond_12

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x11

    aget v2, v2, v3

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    if-nez v2, :cond_12

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x13

    aget v2, v2, v3

    if-nez v2, :cond_12

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    if-nez v2, :cond_12

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    if-nez v2, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method private isRelativeRule(I)Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eq p1, v1, :cond_9

    const/16 v1, 0x11

    if-ne p1, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x12

    if-eq p1, v1, :cond_9

    const/16 v1, 0x13

    if-eq p1, v1, :cond_9

    const/16 v1, 0x14

    if-eq p1, v1, :cond_9

    const/16 v1, 0x15

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private resolveRules(I)V
    .registers 11

    const/16 v6, 0x12

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_cb

    const/4 v0, 0x1

    :goto_b
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x16

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy([II[III)V

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    if-eqz v1, :cond_ce

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v1, v1, v4

    if-nez v1, :cond_2e

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v6

    const/4 v5, 0x5

    aput v4, v1, v5

    :cond_2e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v6

    :cond_32
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v1, v1, v4

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v1, v1, v4

    if-nez v1, :cond_4c

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x13

    aget v4, v4, v5

    const/4 v5, 0x7

    aput v4, v1, v5

    :cond_4c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v3, v1, v4

    :cond_52
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-eqz v1, :cond_6a

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v3

    if-nez v1, :cond_66

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v7

    aput v4, v1, v3

    :cond_66
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v7

    :cond_6a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v8

    if-eqz v1, :cond_82

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v2

    if-nez v1, :cond_7e

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v1, v2

    :cond_7e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v8

    :cond_82
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    if-eqz v1, :cond_a4

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-nez v1, :cond_9e

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x14

    aget v2, v2, v4

    const/16 v4, 0x9

    aput v2, v1, v4

    :cond_9e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aput v3, v1, v2

    :cond_a4
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    if-eqz v1, :cond_c6

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    if-nez v1, :cond_c0

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x15

    aget v2, v2, v4

    const/16 v4, 0xb

    aput v2, v1, v4

    :cond_c0
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aput v3, v1, v2

    :cond_c6
    :goto_c6
    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    return-void

    :cond_cb
    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_ce
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-nez v1, :cond_dc

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v1, v1, v4

    if-eqz v1, :cond_f4

    :cond_dc
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v1, v1, v4

    if-nez v1, :cond_ea

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v1, v1, v4

    if-eqz v1, :cond_f4

    :cond_ea
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aput v3, v1, v4

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aput v3, v1, v4

    :cond_f4
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-eqz v1, :cond_109

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d4

    const/4 v1, 0x7

    :goto_ff
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v4, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v6

    :cond_109
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v1, v1, v4

    if-eqz v1, :cond_124

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d7

    const/4 v1, 0x5

    :goto_116
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v4, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v3, v1, v4

    :cond_124
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-nez v1, :cond_130

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v8

    if-eqz v1, :cond_144

    :cond_130
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v3

    if-nez v1, :cond_13c

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v2

    if-eqz v1, :cond_144

    :cond_13c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v3

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v2

    :cond_144
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-eqz v1, :cond_159

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1da

    move v1, v2

    :goto_14f
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v7

    aput v5, v4, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v7

    :cond_159
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v8

    if-eqz v1, :cond_16e

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_164

    move v2, v3

    :cond_164
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v1, v2

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v8

    :cond_16e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    if-nez v1, :cond_17e

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    if-eqz v1, :cond_19a

    :cond_17e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-nez v1, :cond_18e

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    if-eqz v1, :cond_19a

    :cond_18e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x9

    aput v3, v1, v2

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0xb

    aput v3, v1, v2

    :cond_19a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    if-eqz v1, :cond_1b6

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1dd

    const/16 v1, 0xb

    :goto_1a8
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v2, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aput v3, v1, v2

    :cond_1b6
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    if-eqz v1, :cond_c6

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1e0

    const/16 v1, 0x9

    :goto_1c4
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v2, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aput v3, v1, v2

    goto/16 :goto_c6

    :cond_1d4
    const/4 v1, 0x5

    goto/16 :goto_ff

    :cond_1d7
    const/4 v1, 0x7

    goto/16 :goto_116

    :cond_1da
    move v1, v3

    goto/16 :goto_14f

    :cond_1dd
    const/16 v1, 0x9

    goto :goto_1a8

    :cond_1e0
    const/16 v1, 0xb

    goto :goto_1c4
.end method

.method private shouldResolveLayoutDirection(I)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v2, :cond_c

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_c
    iget-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v2, :cond_16

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v2

    if-eq p1, v2, :cond_17

    :cond_16
    move v0, v1

    :cond_17
    return v0
.end method


# virtual methods
.method public addRule(I)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public addRule(II)V
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    :cond_15
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getRule(I)I
    .registers 3

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRules()[I
    .registers 2

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public resolveLayoutDirection(I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    return-void
.end method
