.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/TakeScreenshotService$1;
    }
.end annotation


# static fields
.field private static sRunningCount:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sRunningCount:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sRunningCount:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0800b8

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/app/NotificationCompat;->setChannelId(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->startForeground(ILandroid/app/Notification;)V

    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    return-object v3
.end method
