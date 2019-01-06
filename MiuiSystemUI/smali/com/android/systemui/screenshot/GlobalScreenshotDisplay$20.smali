.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshotDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->onCallbackReceive(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isEnd:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$isEnd:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->doInBackground([Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v5, v5, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$intent:Landroid/content/Intent;

    const-string/jumbo v6, "BottomLoc"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$intent:Landroid/content/Intent;

    const-string/jumbo v6, "ViewBottom"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v7, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v5, v5, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v6}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v5, v4, v6}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v5, v5, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setSingleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v6, v6, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v8}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBitmaps(Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setIsTakingLongScreenshot(Z)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->startAnimating()V

    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$isEnd:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5, v8}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    :goto_3
    return-void

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v6, v6, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBitmaps(Ljava/util/List;Z)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5, v8}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
