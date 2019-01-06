.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setSilenceMode(IZ)V
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

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-wrap0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Landroid/transition/Transition;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-wrap3(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-wrap4(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V

    return-void
.end method
