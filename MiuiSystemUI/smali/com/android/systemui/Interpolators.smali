.class public Lcom/android/systemui/Interpolators;
.super Ljava/lang/Object;
.source "Interpolators.java"


# static fields
.field public static final ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final BACK_EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final BACK_EASE_OUT_5:Landroid/view/animation/Interpolator;

.field public static final CUBIC_EASE_IN_OUT:Landroid/view/animation/Interpolator;

.field public static final CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final CUSTOM_40_40:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_QUART:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field public static final EASE_IN_OUT:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final HEADS_UP_APPEAR:Landroid/view/animation/Interpolator;

.field public static final HEADS_UP_DISAPPEAR:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final MIUI_ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final MIUI_ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

.field public static final QUAD_EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0x3e99999a    # 0.3f

    const v6, 0x3e4ccccd    # 0.2f

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUART:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x3fb33333    # 1.4f

    invoke-direct {v0, v1, v2}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->HEADS_UP_APPEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->HEADS_UP_DISAPPEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3fb33333    # 1.4f

    invoke-direct {v0, v5, v3, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v7, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->EASE_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->BACK_EASE_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->QUAD_EASE_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/BackEaseOutInterpolator;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/Interpolators;->BACK_EASE_OUT_5:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->CUBIC_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v7, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
