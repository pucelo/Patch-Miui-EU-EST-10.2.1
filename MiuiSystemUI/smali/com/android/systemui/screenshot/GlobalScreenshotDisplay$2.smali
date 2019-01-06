.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshotDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap5(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "quit_display"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receiver_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
