.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23$1;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    :cond_0
    return-void
.end method
