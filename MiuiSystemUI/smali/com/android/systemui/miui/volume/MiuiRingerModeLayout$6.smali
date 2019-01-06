.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->getTimerLayoutTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-set0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;Z)Z

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-set0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;Z)Z

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-set0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;Z)Z

    return-void
.end method
