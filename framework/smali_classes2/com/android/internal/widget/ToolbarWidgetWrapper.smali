.class public Lcom/android/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/Toolbar;Z)V
    .registers 4

    const v0, 0x1040053

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar;ZI)V
    .registers 27

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21e

    const/16 v18, 0x1

    :goto_37
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    sget-object v19, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/16 v20, 0x0

    const v21, 0x10102ce

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_222

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8d

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8d
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_a0
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_af

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_af
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_be

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_db
    const/16 v18, 0x8

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    const/16 v18, 0xa

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_132

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    :cond_132
    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v9

    if-lez v9, :cond_157

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_157
    const/16 v18, 0x16

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    const/16 v18, 0x17

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    if-gez v7, :cond_173

    if-ltz v6, :cond_18c

    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_18c
    const/16 v18, 0xb

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    if-eqz v17, :cond_1b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_1b3
    const/16 v18, 0xc

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-eqz v15, :cond_1d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    :cond_1d8
    const/16 v18, 0x1a

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-eqz v13, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    :cond_1f1
    :goto_1f1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_21e
    const/16 v18, 0x0

    goto/16 :goto_37

    :cond_222
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1f1
.end method

.method private detectDisplayOptions()I
    .registers 3

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :cond_14
    return v0
.end method

.method private ensureSpinner()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_21

    new-instance v1, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10102d7

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private updateHomeAccessibility()V
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method private updateNavigationIcon()V
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12
.end method

.method private updateToolbarLogo()V
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_13
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 6

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_b
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    return-void
.end method

.method public dismissPopupMenus()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasExpandedActionView()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasLogo()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hideOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .registers 3

    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initProgress()V
    .registers 3

    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapsible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_11
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_22

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_22
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    :cond_18
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    :cond_9
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 6

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    xor-int v0, v1, p1

    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    if-eqz v0, :cond_47

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_17

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    :cond_14
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    :cond_17
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_1e

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    :cond_1e
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_34

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_34
    :goto_34
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_47

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_34

    :cond_53
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_47
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 7

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_16
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz p1, :cond_3c

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    const v1, 0x800053

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_3c
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v0, :cond_19

    new-instance v0, Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x1020189

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    :cond_19
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/widget/Toolbar;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, -0x2

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    if-eq p1, v1, :cond_5e

    packed-switch v1, :pswitch_data_7c

    :cond_9
    :goto_9
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    packed-switch p1, :pswitch_data_84

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_28
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_9

    :pswitch_3e
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_9

    :pswitch_54
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    :cond_5e
    :goto_5e
    :pswitch_5e
    return-void

    :pswitch_5f
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    const v2, 0x800053

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_5e

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_3e
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_54
        :pswitch_5f
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .registers 4

    if-eqz p1, :cond_b

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .registers 2

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .registers 12

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v6, v3, v4

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_24
    if-nez p1, :cond_40

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v5, v3, v4

    aput v6, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_40
    const/4 v1, 0x0

    return-object v1
.end method

.method public showOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
