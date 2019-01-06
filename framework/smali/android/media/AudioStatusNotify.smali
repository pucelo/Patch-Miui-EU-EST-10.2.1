.class public Landroid/media/AudioStatusNotify;
.super Ljava/lang/Object;
.source "AudioStatusNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusNotify$AppInfo;
    }
.end annotation


# static fields
.field public static final NOTIFY_ID:I = 0x2711

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/media/AudioStatusNotify;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;IZ)Landroid/media/AudioStatusNotify$AppInfo;
    .registers 14

    const-string/jumbo v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_15

    :try_start_25
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v1, Landroid/media/AudioStatusNotify$AppInfo;

    invoke-direct {v1}, Landroid/media/AudioStatusNotify$AppInfo;-><init>()V

    iput p1, v1, Landroid/media/AudioStatusNotify$AppInfo;->pid:I

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v9, v1, Landroid/media/AudioStatusNotify$AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/media/AudioStatusNotify$AppInfo;->name:Ljava/lang/String;

    if-eqz p2, :cond_50

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v1, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_50} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_50} :catch_51

    :cond_50
    return-object v1

    :catch_51
    move-exception v4

    sget-object v9, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getApplicationInfo failed"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :catch_5b
    move-exception v3

    sget-object v9, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getApplicationInfo NameNotFoundException failed"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_65
    const/4 v9, 0x0

    return-object v9
.end method

.method public static sendAudioStatusNotification(Landroid/content/Context;IZ)V
    .registers 14

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p0, p1, v9}, Landroid/media/AudioStatusNotify;->getApplicationInfo(Landroid/content/Context;IZ)Landroid/media/AudioStatusNotify$AppInfo;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v8, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "can not get app info for pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const-string/jumbo v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-eqz p2, :cond_89

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040616

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_38
    const-string/jumbo v3, "channel_1"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403ec

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v10, "reminder"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v0, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v0, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_6b

    iget-object v8, v0, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    :cond_6b
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, v0, Landroid/media/AudioStatusNotify$AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v6, Landroid/app/Notification;->flags:I

    const/16 v8, 0x2711

    invoke-virtual {v5, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040617

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_38
.end method
