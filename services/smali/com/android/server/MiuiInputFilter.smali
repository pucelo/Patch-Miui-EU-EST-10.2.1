.class public Lcom/android/server/MiuiInputFilter;
.super Landroid/view/InputFilter;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiInputFilter$ClickableRect;,
        Lcom/android/server/MiuiInputFilter$H;,
        Lcom/android/server/MiuiInputFilter$KeyData;
    }
.end annotation


# static fields
.field static ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static MIDDLE_KEYCODE:I = 0x0

.field static NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static final PERSIST_SYS_BACKTOUCH_PROPERTY:Ljava/lang/String; = "persist.sys.backtouch"

.field private static final PERSIST_SYS_HANDSWAP_PROPERTY:Ljava/lang/String; = "persist.sys.handswap"

.field private static isDpadDevice:Z

.field private static sEdgeDistance:F


# instance fields
.field private final MAX_COS:D

.field private mCitTestEnabled:Z

.field private mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/MiuiInputFilter$H;

.field private mInstalled:Z

.field private mOutsideClickableRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MiuiInputFilter$ClickableRect;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MiuiInputFilter$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleDura:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mWasInside:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x52

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "middle_keycode_is_dpad_center"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    sget-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    if-eqz v0, :cond_5d

    const/16 v0, 0x17

    :goto_15
    sput v0, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    new-array v0, v5, [[I

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v6, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v7, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    new-array v0, v6, [[I

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v6, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v7, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    aput v6, v1, v3

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput v7, v1, v3

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-void

    :cond_5d
    const/4 v0, 0x3

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    const-wide v0, 0x3fd657184ae74487L    # 0.3490658503988659

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/MiuiInputFilter;->MAX_COS:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/MiuiInputFilter$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MiuiInputFilter$H;-><init>(Lcom/android/server/MiuiInputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    return-void
.end method

.method private changeVolumeForBackTouch(I)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    const/4 v15, 0x0

    iget v6, v11, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v11, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, v14, Landroid/graphics/PointF;->y:F

    iget v9, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, v11, Landroid/graphics/PointF;->y:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v10, v10, v16

    float-to-double v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    iget v10, v14, Landroid/graphics/PointF;->x:F

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v10, v10, v16

    float-to-double v0, v10

    move-wide/from16 v16, v0

    iget v10, v14, Landroid/graphics/PointF;->y:F

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    sub-float v10, v10, v18

    float-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    mul-double v8, v8, v16

    div-double v12, v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/MiuiInputFilter;->MAX_COS:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_93

    iget v6, v11, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->y:F

    iget v8, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v15, v6, v7

    :cond_93
    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-eqz v6, :cond_cc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-lez v6, :cond_cd

    const/16 v9, 0x18

    :goto_a5
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-lez v6, :cond_d0

    const/16 v9, 0x18

    :goto_bf
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    :cond_cc
    return-void

    :cond_cd
    const/16 v9, 0x19

    goto :goto_a5

    :cond_d0
    const/16 v9, 0x19

    goto :goto_bf
.end method

.method private findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;
    .registers 8

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v2, v0, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v3

    :goto_8
    if-ge v1, p1, :cond_17

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_17

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, p1, :cond_28

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    goto :goto_8

    :cond_28
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v3

    :goto_8
    if-ge v1, p1, :cond_17

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_17

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, p1, :cond_28

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    goto :goto_8

    :cond_28
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private isTouchInside(FF)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    cmpl-float v1, p1, v2

    if-lez v1, :cond_19

    sget v1, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_19

    cmpl-float v1, p2, v2

    if-lez v1, :cond_19

    sget v1, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private isTouchInsideOrEdge(FF)Z
    .registers 6

    const/4 v0, 0x0

    sget v1, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_21

    sget v1, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v1, v1

    sget v2, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_21

    sget v1, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_21

    sget v1, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method private needDelayKey(Z)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p1

    :cond_7
    const/4 p1, 0x1

    goto :goto_6
.end method

.method private needShowDialog()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v1

    if-nez v1, :cond_f

    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_f
    return v0
.end method

.method private declared-synchronized onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 15

    const/4 v3, -0x1

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_3
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_12

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_50

    monitor-exit p0

    return-void

    :cond_12
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_15
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_126

    :cond_1e
    :goto_1e
    if-nez v9, :cond_23

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_23
    if-eqz v10, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->triggerCombinationClick()V

    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_50

    :cond_2b
    monitor-exit p0

    return-void

    :pswitch_2d
    :try_start_2d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkKeyNeedListen(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    xor-int/lit8 v5, v9, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_50

    goto :goto_1e

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_53
    :try_start_53
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_80

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v0, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v1, v0, :cond_80

    :cond_6e
    invoke-direct {p0, v7}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    xor-int/lit8 v5, v9, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto :goto_1e

    :cond_80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_90

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v7

    if-nez v7, :cond_6e

    :cond_90
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    goto :goto_1e

    :pswitch_94
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v8, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_c0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v7

    if-nez v7, :cond_d6

    :cond_c0
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_f0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_f0

    :cond_d6
    invoke-direct {p0, v7}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_ee

    :goto_e4
    xor-int/lit8 v5, v9, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_1e

    :cond_ee
    move v3, v2

    goto :goto_e4

    :cond_f0
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    goto/16 :goto_1e

    :pswitch_f5
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v11, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_120

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_120

    const/4 v10, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_1e

    :cond_120
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V
    :try_end_123
    .catchall {:try_start_53 .. :try_end_123} :catchall_50

    goto/16 :goto_1e

    nop

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_53
        :pswitch_94
        :pswitch_f5
    .end packed-switch
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 4

    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_7
.end method

.method static processCoordinate(FFFF)F
    .registers 5

    sub-float v0, p3, p0

    mul-float/2addr v0, p2

    sub-float v0, p3, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method private processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_26

    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    :cond_26
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/MiuiInputFilter;->changeVolumeForBackTouch(I)V

    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :pswitch_38
    iput v3, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_38
        :pswitch_9
    .end packed-switch
.end method

.method private processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V
    .registers 29

    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v21

    if-eqz v21, :cond_15f

    sget v4, Lcom/android/server/HandyMode;->sScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v23, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/MiuiInputFilter;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/MiuiInputFilter;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    const/16 v20, 0x0

    :goto_1e
    move/from16 v0, v20

    if-ge v0, v9, :cond_6a

    aget-object v4, v11, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_68

    sget v4, Lcom/android/server/HandyMode;->sScreenWidth:I

    :goto_32
    int-to-float v0, v4

    move/from16 v24, v0

    aget-object v4, v11, v20

    aget-object v5, v11, v20

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    sget v4, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v4

    move/from16 v25, v0

    aget-object v4, v11, v20

    aget-object v5, v11, v20

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v4, v10, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_1e

    :cond_68
    const/4 v4, 0x0

    goto :goto_32

    :cond_6a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    const/4 v4, 0x1

    if-ne v9, v4, :cond_14b

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_ba

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    :cond_ba
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v4, :cond_124

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->isTouchInside(FF)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_124

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v4, :cond_f5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v4, v4, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    :cond_f5
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v4, :cond_10f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v4, v4, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_10b
    :goto_10b
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    :goto_10e
    return-void

    :cond_10f
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->isTouchInsideOrEdge(FF)Z

    move-result v4

    if-nez v4, :cond_10b

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/HandyMode;->changeMode(I)V

    goto :goto_10b

    :cond_124
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v4, :cond_137

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_137

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_137
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    goto :goto_10b

    :cond_14b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    goto :goto_10b

    :cond_15f
    invoke-super/range {p0 .. p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_10e
.end method


# virtual methods
.method public addOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    new-instance v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    invoke-direct {v1, p1, p2}, Lcom/android/server/MiuiInputFilter$ClickableRect;-><init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method declared-synchronized addPendingData(Landroid/view/KeyEvent;IIZZ)V
    .registers 12

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    new-instance v0, Lcom/android/server/MiuiInputFilter$KeyData;

    invoke-direct {v0}, Lcom/android/server/MiuiInputFilter$KeyData;-><init>()V

    iput-object p1, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    iput p2, v0, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    iput-boolean p5, v0, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    if-gez p3, :cond_29

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    sget v3, Lcom/android/server/HandyMode;->COMBINATION_CLICK_TIMEOUT:I

    if-eqz p4, :cond_21

    const/4 v1, 0x2

    :cond_21
    mul-int/2addr v1, v3

    int-to-long v4, v1

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/MiuiInputFilter$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_2f

    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    goto :goto_1a

    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method checkKeyNeedListen(I)Z
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v3, v2, v1

    aget v3, v3, v4

    if-ne v3, p1, :cond_11

    const/4 v3, 0x1

    return v3

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return v4
.end method

.method checkSecondKey(I)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v5, v5, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    array-length v0, v4

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_26

    aget-object v3, v4, v2

    aget v5, v3, v6

    if-ne v5, v1, :cond_23

    aget v5, v3, v7

    if-ne v5, p1, :cond_23

    return v7

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    return v6
.end method

.method declared-synchronized clearPendingList()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized flushPending()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-boolean v2, v1, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    if-nez v2, :cond_25

    iget-object v3, v1, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MiuiInputFilter$KeyData;

    iget v2, v2, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_28
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getListenCombinationKeys()[[I
    .registers 2

    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-object v0

    :cond_9
    sget-object v0, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-object v0
.end method

.method public isInstalled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    return v0
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 5

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_35

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "backtouch"

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mCitTestEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V

    return-void

    :cond_2f
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    return-void

    :cond_35
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4d

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-eqz v0, :cond_4d

    check-cast p1, Landroid/view/KeyEvent;

    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onInstalled()V
    .registers 2

    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    return-void
.end method

.method public onUninstalled()V
    .registers 2

    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V

    return-void
.end method

.method public removeOutsideClickableRect(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v1, v1, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_1b

    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public setCitTestEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/MiuiInputFilter;->mCitTestEnabled:Z

    return-void
.end method

.method declared-synchronized triggerCombinationClick()V
    .registers 7

    monitor-enter p0

    :try_start_1
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_buttons_state"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_64

    move-result v3

    if-eqz v3, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    const-string/jumbo v3, "persist.sys.handswap"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_47

    if-eqz v1, :cond_45

    const/4 v2, 0x1

    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-static {v2}, Lcom/android/server/HandyMode;->alertToEnter(I)V
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_64

    :goto_43
    monitor-exit p0

    return-void

    :cond_45
    const/4 v2, 0x2

    goto :goto_3a

    :cond_47
    :try_start_47
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_3a

    if-eqz v1, :cond_5e

    const/4 v2, 0x2

    goto :goto_3a

    :cond_5e
    const/4 v2, 0x1

    goto :goto_3a

    :cond_60
    invoke-static {v2}, Lcom/android/server/HandyMode;->changeMode(I)V
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_64

    goto :goto_43

    :catchall_64
    move-exception v3

    monitor-exit p0

    throw v3
.end method
