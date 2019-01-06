.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$4;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogMotion.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startDismissAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$4;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$4;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-wrap2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;F)V

    return-void
.end method
