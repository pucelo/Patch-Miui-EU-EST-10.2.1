.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->canLongScreenshot()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "longscreenshot_button_click"

    const-string/jumbo v3, "enable"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103d3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get18(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/miui/ToastOverlayManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/miui/ToastOverlayManager;->dispatchShowToast(Landroid/widget/Toast;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "longscreenshot_button_click"

    const-string/jumbo v3, "disable"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
