.class final Lcom/android/systemui/screenshot/GlobalScreenshot$8;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/NotifyMediaStoreData;Landroid/content/Context;Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$callback:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v10, v10, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->tempImageFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v11, v11, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-wide v10, v9, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->takenTime:J

    const-wide/16 v12, 0x3e8

    div-long v0, v10, v12

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v7, v9, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFileName:Ljava/lang/String;

    const/16 v9, 0x2e

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "_data"

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v10, v10, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "_display_name"

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v10, v10, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFileName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "width"

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget v10, v10, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "height"

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget v10, v10, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->height:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "datetaken"

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-wide v10, v10, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->takenTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "mime_type"

    const-string/jumbo v10, "image/png"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "_size"

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v11, v11, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "com.miui.gallery"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v9, v3, v10, v11}, Lcom/android/systemui/content/pm/PackageManagerCompat;->queryBroadcastReceiversAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v10, Landroid/content/ComponentName;

    const-string/jumbo v11, "com.miui.gallery"

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v9, "extra_file_path"

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v10, v10, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$context:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v9, 0x0

    return-object v9

    :catch_0
    move-exception v2

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->finisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$data:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->isRunned:Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$callback:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->val$callback:Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;

    invoke-interface {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;->onFinish()V

    :cond_1
    return-void
.end method
