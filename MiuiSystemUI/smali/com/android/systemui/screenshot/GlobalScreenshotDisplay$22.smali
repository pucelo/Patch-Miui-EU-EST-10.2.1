.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshotDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->buildLongScreenshot()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->tempImageFilePath:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lmiui/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->width:I

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->height:I

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int v4, v7, v8

    const/4 v7, 0x1

    invoke-static {v2, v4, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "longscreenshot_height"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v7, v8, v10, v11}, Lcom/android/systemui/screenshot/StatHelper;->recordNumericPropertyEvent(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v7, "GlobalScreenshotDisplay"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v12

    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1103d4

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    const/16 v7, 0x7d6

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setType(I)V

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "longscreenshot_fail_height"

    invoke-static {v7, v8}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
