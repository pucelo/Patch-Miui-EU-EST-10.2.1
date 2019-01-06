.class public Lcom/android/internal/widget/PointerLocationViewInjector;
.super Ljava/lang/Object;
.source "PointerLocationViewInjector.java"


# static fields
.field private static final CUSTOM_TOUCH_STYLE_ENABLED:Ljava/lang/String; = "debug.customtouchstyle.enabled"

.field private static final CUSTOM_TOUCH_STYLE_OVAL_SIZE:Ljava/lang/String; = "debug.customtouchstyle.ovalsize"

.field private static final CUSTOM_TOUCH_STYLE_PAINT_COLOR:Ljava/lang/String; = "debug.customtouchstyle.paintcolor"

.field private static final TAG:Ljava/lang/String;

.field private static sCustomTouchStyleEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/internal/widget/PointerLocationViewInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PointerLocationViewInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "debug.customtouchstyle.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/PointerLocationViewInjector;->sCustomTouchStyleEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 25

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v10

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static {}, Lcom/android/internal/widget/PointerLocationViewInjector;->isCustomTouchStyleEnabled()Z

    move-result v13

    if-eqz v13, :cond_40

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string/jumbo v13, "debug.customtouchstyle.paintcolor"

    const/4 v14, -0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v13, -0x1

    if-eq v4, v13, :cond_29

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_29
    const-string/jumbo v13, "debug.customtouchstyle.ovalsize"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_40

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_40

    :try_start_3a
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3d} :catch_96

    move-result v7

    move v5, v7

    move v6, v7

    :cond_40
    :goto_40
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v13, 0x43340000    # 180.0f

    mul-float v13, v13, p5

    float-to-double v14, v13

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-float v13, v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v6, v13

    sub-float v13, p1, v13

    iput v13, v11, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v6, v13

    add-float v13, v13, p1

    iput v13, v11, Landroid/graphics/RectF;->right:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v5, v13

    sub-float v13, p2, v13

    iput v13, v11, Landroid/graphics/RectF;->top:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v5, v13

    add-float v13, v13, p2

    iput v13, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :catch_96
    move-exception v8

    sget-object v13, Lcom/android/internal/widget/PointerLocationViewInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public static isCustomTouchStyleEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/widget/PointerLocationViewInjector;->sCustomTouchStyleEnabled:Z

    return v0
.end method
