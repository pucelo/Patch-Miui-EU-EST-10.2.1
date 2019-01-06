.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->createQuitAnimationBundle()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get16(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
