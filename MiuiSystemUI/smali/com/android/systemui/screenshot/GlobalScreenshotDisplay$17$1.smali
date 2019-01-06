.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17$1;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0, v1, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;ZZ)V

    return-void
.end method
