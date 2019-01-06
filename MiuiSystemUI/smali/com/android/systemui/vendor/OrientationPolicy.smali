.class public Lcom/android/systemui/vendor/OrientationPolicy;
.super Ljava/lang/Object;
.source "OrientationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;
    }
.end annotation


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mLastRotation:I

.field private final mOrientationDetector:Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/vendor/OrientationPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/vendor/OrientationPolicy;->writeRotationForBsp()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mLastRotation:I

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;-><init>(Lcom/android/systemui/vendor/OrientationPolicy;Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;)V

    iput-object v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mOrientationDetector:Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;

    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {p0}, Lcom/android/systemui/vendor/OrientationPolicy;->writeRotationForBsp()V

    iget-object v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mOrientationDetector:Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private writeRotationForBsp()V
    .locals 4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget v2, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mLastRotation:I

    if-eq v2, v1, :cond_0

    move v0, v1

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/vendor/OrientationPolicy$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/vendor/OrientationPolicy$1;-><init>(Lcom/android/systemui/vendor/OrientationPolicy;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput v1, p0, Lcom/android/systemui/vendor/OrientationPolicy;->mLastRotation:I

    :cond_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
