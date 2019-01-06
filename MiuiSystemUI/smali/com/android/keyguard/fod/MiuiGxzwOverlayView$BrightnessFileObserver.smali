.class Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;
.super Lcom/android/systemui/util/FixedFileObserver;
.source "MiuiGxzwOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/util/FixedFileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent: event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
