.class Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;
.super Ljava/lang/Object;
.source "MiuiGxzwFrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->notifyStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;->this$1:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;->this$1:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->-get0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;->onStart()V

    return-void
.end method
