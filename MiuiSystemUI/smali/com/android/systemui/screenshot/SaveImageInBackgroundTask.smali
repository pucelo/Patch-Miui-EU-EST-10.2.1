.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static mTickerAddSpace:Z


# instance fields
.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private mImageHeight:I

.field private mImageTime:J

.field private mImageWidth:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

.field private mTempImageFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "Screenshots"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string/jumbo v3, "Screenshot_%s_%s.png"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getTopActivityPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    const-string/jumbo v3, "%s/%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v8

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const-string/jumbo v3, "%s/%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTempImageFilePath:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget-object v3, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sget-boolean v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    invoke-direct {v3}, Lcom/android/systemui/screenshot/NotifyMediaStoreData;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTempImageFilePath:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->tempImageFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->imageFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iput v4, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->width:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    iput v4, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->height:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-wide v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    iput-wide v4, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->takenTime:J

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    array-length v5, p1

    if-eq v5, v8, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    aget-object v5, p1, v7

    iget-object v0, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    aget-object v5, p1, v7

    iget-object v2, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTempImageFilePath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v5, 0x0

    aget-object v5, p1, v5

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-object v5, p1, v7

    return-object v5

    :catch_0
    move-exception v1

    aget-object v5, p1, v7

    iput v8, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivityPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "lockscreen"

    return-object v4

    :cond_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, ""

    return-object v4

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    const-string/jumbo v4, ""

    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->saveFinished:Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->isPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;)V

    :cond_0
    iget v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
