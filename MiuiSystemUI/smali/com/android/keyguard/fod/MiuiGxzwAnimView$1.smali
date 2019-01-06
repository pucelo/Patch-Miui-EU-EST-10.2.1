.class Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimView.java"

# interfaces
.implements Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->-get1(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1$2;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;)V

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->-get0()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onInterrupt()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->-get1(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;)V

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->-get0()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock()V

    return-void
.end method
