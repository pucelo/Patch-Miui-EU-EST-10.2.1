.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0x4

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mHorizontalScrollFactor:F

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinScrollbarTouchTarget:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mVerticalScrollFactor:F

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    const/high16 v2, 0x42800000    # 64.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const/16 v0, 0x30

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    iput v3, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    iput v3, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    iput v2, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    iput v2, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v11

    if-eqz v11, :cond_f3

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float v8, v2, v11

    :goto_1c
    const/high16 v11, 0x41400000    # 12.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    const/high16 v11, 0x41400000    # 12.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const v11, 0x1050045

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const-string/jumbo v11, "window"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v11, v7, Landroid/graphics/Point;->x:I

    mul-int/lit8 v11, v11, 0x4

    iget v12, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v12

    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 v11, 0x0

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {p1, v11}, Landroid/view/ViewConfigurationInjector;->getOverScrollDistance(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {p1, v11}, Landroid/view/ViewConfigurationInjector;->getOverFlingDistance(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    iget-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v11, :cond_9d

    const v11, 0x10e0082

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_10a

    :pswitch_8e
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    :try_start_92
    invoke-interface {v10}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_9d} :catch_f6

    :cond_9d
    :goto_9d
    const v11, 0x11200ba

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const v11, 0x1050047

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const v11, 0x105003c

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v11, v11, 0x2

    iput v11, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const v11, 0x1050049

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const v11, 0x1050048

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const v11, 0x10e004e

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v12, v11

    iput-wide v12, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const v11, 0x1050037

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    const v11, 0x1050046

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return-void

    :cond_f3
    move v8, v2

    goto/16 :goto_1c

    :catch_f6
    move-exception v4

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_9d

    :pswitch_fb
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_9d

    :pswitch_102
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_9d

    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_fb
        :pswitch_102
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 7

    invoke-static {p0}, Landroid/view/ViewConfigurationInjector;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {p0}, Landroid/view/ViewConfigurationInjector;->needMiuiConfiguration(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v0, Landroid/view/ViewConfiguration;

    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Landroid/view/ViewConfigurationInjector;->put(Landroid/content/Context;Landroid/view/ViewConfiguration;)V

    return-object v0

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    sget-object v4, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewConfiguration;

    if-nez v1, :cond_38

    new-instance v1, Landroid/view/ViewConfiguration;

    invoke-direct {v1, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_38
    return-object v1
.end method

.method public static getDefaultActionModeHideDuration()J
    .registers 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .registers 1

    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .registers 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .registers 1

    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .registers 1

    const/16 v0, 0x96

    return v0
.end method

.method public static getHoverTooltipHideShortTimeout()I
    .registers 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public static getHoverTooltipHideTimeout()I
    .registers 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public static getHoverTooltipShowTimeout()I
    .registers 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getJumpTapTimeout()I
    .registers 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .registers 1

    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .registers 2

    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongPressTooltipHideTimeout()I
    .registers 1

    const/16 v0, 0x5dc

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x32

    return v0
.end method

.method public static getMultiPressTimeout()I
    .registers 2

    const-string/jumbo v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPressedStateDuration()I
    .registers 1

    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .registers 1

    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .registers 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .registers 1

    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .registers 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .registers 1

    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .registers 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getAccessibilityShortcutKeyTimeout()J
    .registers 3

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getDeviceGlobalActionKeyTimeout()J
    .registers 3

    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledHorizontalScrollFactor()F
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinScrollbarTouchTarget()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledScrollFactor()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public getScaledTouchSlop()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledVerticalScrollFactor()F
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .registers 2

    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
