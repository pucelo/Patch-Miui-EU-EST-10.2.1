.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get20(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get20(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get19(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
