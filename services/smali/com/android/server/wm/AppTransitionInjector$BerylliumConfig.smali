.class Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BerylliumConfig"
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_DURATION:I = 0x58

.field protected static final DEFAULT_ANIMATION_DURATION:I = 0x90

.field private static final DEFAULT_LAUNCHER_TRANSITION_ALPHA:F = 1.0f

.field private static final DEFAULT_LAUNCH_FORM_HOME_DURATION:I = 0xb0

.field protected static final DEFAULT_WALLPAPER_OPEN_DURATION:I = 0x90

.field protected static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final FULL_SCREEN_DISPLAY_FRAME:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x438

    const/16 v2, 0x8c6

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FULL_SCREEN_DISPLAY_FRAME:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 14

    const-wide/16 v8, 0xb0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-eqz p1, :cond_32

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    sget v4, Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x58

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    sget-object v4, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FULL_SCREEN_DISPLAY_FRAME:Landroid/graphics/Rect;

    invoke-direct {v2, p3, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object v4, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object v1, v3

    :goto_31
    return-object v1

    :cond_32
    const/16 v4, 0xe

    if-eq p0, v4, :cond_3a

    const/16 v4, 0xf

    if-ne p0, v4, :cond_4b

    :cond_3a
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    sget v4, Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_47
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_31

    :cond_4b
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    sget v4, Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object v4, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v1, v3

    goto :goto_47
.end method
