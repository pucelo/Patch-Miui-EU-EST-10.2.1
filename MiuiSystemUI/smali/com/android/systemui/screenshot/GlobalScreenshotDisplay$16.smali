.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->showDeleteDialog()V
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "indeed_deleted"

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get11(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "longscreenshot"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;)V

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set2(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "normal"

    goto :goto_1
.end method
