.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperAnimLayerAdjustment:I

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    new-instance v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v0, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    new-instance v0, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private findWallpaperTarget(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    :cond_2c
    return-void
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v1, :cond_13

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v1, :cond_13

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_13

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v1, :cond_13

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_13

    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic lambda$-com_android_server_wm_WallpaperController_22830(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 12

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_4e

    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_66

    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    :cond_20
    :goto_20
    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_71

    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    :cond_2a
    :goto_2a
    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v6, v8, :cond_7c

    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    :cond_32
    :goto_32
    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v6, v8, :cond_85

    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    :cond_3a
    :goto_3a
    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8e

    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    :cond_44
    :goto_44
    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_99

    iget v6, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    :cond_4e
    :goto_4e
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_56
    if-ltz v0, :cond_a4

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v6, v4, v1, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_56

    :cond_66
    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_20

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_20

    :cond_71
    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2a

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_2a

    :cond_7c
    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v6, v8, :cond_32

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_32

    :cond_85
    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v6, v8, :cond_3a

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3a

    :cond_8e
    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_44

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_44

    :cond_99
    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4e

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_4e

    :cond_a4
    return-void
.end method

.method private updateWallpaperTokens(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    iget v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(ZI)V

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_22
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .registers 11

    const/4 v7, 0x0

    iget-object v5, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v5, :cond_f

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v6, v5, :cond_21

    :cond_f
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_14

    return-void

    :cond_14
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_20

    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_20
    return-void

    :cond_21
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_2b

    if-nez v4, :cond_2c

    :cond_2b
    return-void

    :cond_2c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_3a

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3b

    :cond_3a
    return-void

    :cond_3b
    new-instance v6, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v4}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p1, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-nez v6, :cond_48

    return-void

    :cond_48
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_66

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v6, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    :goto_50
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_68

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v6, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    :goto_58
    iput-object v4, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_6a

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_6a

    iput-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_62
    :goto_62
    invoke-virtual {p2, v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_66
    const/4 v1, 0x0

    goto :goto_50

    :cond_68
    const/4 v3, 0x0

    goto :goto_58

    :cond_6a
    if-ne v1, v3, :cond_62

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_62

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_92

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    :cond_92
    iput-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_62
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget(Lcom/android/server/wm/DisplayContent;)V

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    :goto_1c
    if-eqz v0, :cond_72

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getAnimLayerAdjustment()I

    move-result v1

    :cond_30
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v4, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v4, :cond_72

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    :cond_72
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    return-void

    :cond_76
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_e

    const/4 v0, 0x1

    :cond_8
    :goto_8
    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V

    :cond_d
    return-void

    :cond_e
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_14
    if-ltz v1, :cond_8

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    goto :goto_8

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_14
.end method

.method clearLastWallpaperTimeoutTime()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const/high16 v1, -0x80000000

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_22

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    if-ne v0, v1, :cond_43

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_5c

    :cond_43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_5c
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mWallpaperAnimLayerAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7d
    return-void
.end method

.method getAnimLayerAdjustment()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    return v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    :cond_c
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_c

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1a

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    return-void

    :cond_1a
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_3a

    const/4 v2, 0x1

    :goto_1f
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_27
    if-ltz v0, :cond_3c

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    const-string/jumbo v3, "hideWallpapers"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->hideWallpaperToken(ZLjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_3a
    const/4 v2, 0x0

    goto :goto_1f

    :cond_3c
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isWallpaperTargetAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method isWallpaperVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_WallpaperController_4687(Lcom/android/server/wm/WindowState;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_24

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v4, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v4, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v4, :cond_23

    :cond_1a
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v6, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    :cond_23
    return v6

    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v7, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    iget-object v4, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq p1, v4, :cond_3f

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3f

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v4, :cond_3f

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v4, :cond_3f

    return v6

    :cond_3f
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_54

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v4, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    :cond_54
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_de

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowAnimator;->getTransit()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    if-eqz v4, :cond_de

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowAnimator;->getTransitFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_dc

    const/4 v1, 0x1

    :goto_73
    const/4 v2, 0x0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v4

    if-eqz v4, :cond_a5

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_e0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_e2

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v4

    xor-int/lit8 v2, v4, 0x1

    :cond_a5
    :goto_a5
    if-nez v1, :cond_a9

    if-eqz v2, :cond_ae

    :cond_a9
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    :cond_ae
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e4

    const/4 v0, 0x1

    :goto_b8
    if-eqz v0, :cond_e7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    if-eqz v4, :cond_e7

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v4, p1, :cond_ca

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v4

    if-eqz v4, :cond_e7

    :cond_ca
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_e6

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v4

    if-eqz v4, :cond_e6

    return v6

    :cond_dc
    const/4 v1, 0x0

    goto :goto_73

    :cond_de
    const/4 v1, 0x0

    goto :goto_73

    :cond_e0
    const/4 v2, 0x1

    goto :goto_a5

    :cond_e2
    const/4 v2, 0x0

    goto :goto_a5

    :cond_e4
    const/4 v0, 0x0

    goto :goto_b8

    :cond_e6
    return v7

    :cond_e7
    iget-object v4, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_f0

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    :cond_f0
    return v6
.end method

.method processWallpaperDrawPendingTimeout()Z
    .registers 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    return v1

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 17

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_29

    :cond_8
    move/from16 v8, p7

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    :goto_12
    if-ltz v7, :cond_29

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WallpaperWindowToken;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .registers 5

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_8

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_10

    :cond_8
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_10
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_18
    return-void
.end method

.method startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 29

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_176

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_179

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    move/from16 v20, v0

    :goto_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_17d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    move/from16 v21, v0

    :goto_28
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v11, v4, p2

    if-lez v11, :cond_181

    int-to-float v4, v11

    mul-float v4, v4, v20

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    :goto_43
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_51

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    add-int v16, v16, v4

    :cond_51
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_185

    const/4 v12, 0x1

    :goto_5a
    if-eqz v12, :cond_62

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    :cond_62
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_72

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v21

    if-eqz v4, :cond_80

    :cond_72
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    const/16 v17, 0x1

    :cond_80
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_188

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    move/from16 v22, v0

    :goto_8f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_18c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    move/from16 v23, v0

    :goto_9e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v10, v4, p3

    if-lez v10, :cond_190

    int-to-float v4, v10

    mul-float v4, v4, v22

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    :goto_b9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_c7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    add-int v16, v16, v4

    :cond_c7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_d6

    const/4 v12, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    :cond_d6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v22

    if-nez v4, :cond_e6

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v23

    if-eqz v4, :cond_f4

    :cond_e6
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/16 v17, 0x1

    :cond_f4
    if-eqz v17, :cond_175

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_175

    if-eqz p4, :cond_108

    :try_start_102
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    :cond_108
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v9, p4

    invoke-interface/range {v4 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    if-eqz p4, :cond_175

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_175

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_131} :catch_194

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v4, v4, v18

    if-gez v4, :cond_170

    :try_start_138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowHashMap;->wait(J)V
    :try_end_143
    .catch Ljava/lang/InterruptedException; {:try_start_138 .. :try_end_143} :catch_196
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_143} :catch_194

    :goto_143
    const-wide/16 v4, 0x96

    add-long v4, v4, v18

    :try_start_147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_170

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    :cond_170
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_175
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_175} :catch_194

    :cond_175
    :goto_175
    return v12

    :cond_176
    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_179
    move/from16 v20, v13

    goto/16 :goto_19

    :cond_17d
    const/high16 v21, -0x40800000    # -1.0f

    goto/16 :goto_28

    :cond_181
    const/16 v16, 0x0

    goto/16 :goto_43

    :cond_185
    const/4 v12, 0x0

    goto/16 :goto_5a

    :cond_188
    const/high16 v22, 0x3f000000    # 0.5f

    goto/16 :goto_8f

    :cond_18c
    const/high16 v23, -0x40800000    # -1.0f

    goto/16 :goto_9e

    :cond_190
    const/16 v16, 0x0

    goto/16 :goto_b9

    :catch_194
    move-exception v14

    goto :goto_175

    :catch_196
    move-exception v15

    goto :goto_143
.end method

.method updateWallpaperVisibility()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v3}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_e
    if-ltz v0, :cond_1e

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperVisibility(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_18

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowHashMap;->notifyAll()V

    :cond_18
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_18

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowHashMap;->notifyAll()V

    :cond_18
    return-void
.end method

.method wallpaperTransitionReady()Z
    .registers 11

    const/16 v9, 0x27

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_d
    if-ltz v0, :cond_3b

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    const/4 v2, 0x0

    :cond_24
    iget v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v4, :cond_3b

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v9, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_3b
    if-eqz v3, :cond_46

    iput v8, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    :cond_46
    return v2

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method
