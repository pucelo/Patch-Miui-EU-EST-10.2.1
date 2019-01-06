.class Lcom/android/server/policy/PhoneWindowManagerInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManagerInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addStartingWindow(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/CharSequence;)V
    .registers 29

    invoke-static/range {p0 .. p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_7

    return-void

    :cond_7
    sget v20, Lmiui/R$attr;->windowTranslucentStatus:I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-ltz v8, :cond_29

    const/16 v20, 0x2

    move/from16 v0, v20

    if-gt v8, v0, :cond_29

    move/from16 v17, v8

    :cond_29
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    sget v20, Lmiui/R$attr;->windowActionBar:I

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v20

    if-eqz v20, :cond_197

    sget v20, Lmiui/R$attr;->startingWindowOverlay:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v10

    if-gtz v10, :cond_57

    return-void

    :cond_57
    sget v20, Lcom/miui/internal/R$layout;->starting_window_simple:I

    move/from16 v0, v20

    if-ne v10, v0, :cond_13f

    const v20, 0x1103001c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    const v20, 0x110c0050

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_98

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string/jumbo v22, "status_bar_height"

    const-string/jumbo v23, "dimen"

    const-string/jumbo v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_98
    sget-object v20, Lmiui/R$styleable;->ActionBar:[I

    const/16 v21, 0x0

    const v22, 0x10102ce

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v20, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    sget v20, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    sget v20, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const v20, 0x110c004f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v20, Lcom/android/server/policy/PhoneWindowManagerInjector$1;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/policy/PhoneWindowManagerInjector$1;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v20

    if-eqz v20, :cond_109

    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    sget v21, Lmiui/R$attr;->colorPrimary:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_109
    const v20, 0x110c0052

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v20, 0x110c0012

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v20, 0x110c0051

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    and-int/lit8 v20, v7, 0x8

    if-nez v20, :cond_145

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_13f
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    return-void

    :cond_145
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v12, :cond_198

    and-int/lit8 v20, v7, 0x2

    if-nez v20, :cond_198

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 v20, 0x11

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_175
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    and-int/lit8 v20, v7, 0x4

    if-eqz v20, :cond_1a2

    const/16 v20, 0x0

    :goto_17e
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v15, :cond_18e

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_18e
    if-eqz p3, :cond_197

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_197
    return-void

    :cond_198
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_175

    :cond_1a2
    const/16 v20, 0x8

    goto :goto_17e
.end method

.method static performReleaseHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
