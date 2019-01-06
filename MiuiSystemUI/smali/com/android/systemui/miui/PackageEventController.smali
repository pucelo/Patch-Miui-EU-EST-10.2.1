.class public Lcom/android/systemui/miui/PackageEventController;
.super Landroid/content/BroadcastReceiver;
.source "PackageEventController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageChangedReceiver:Lcom/android/systemui/miui/PackageEventReceiver;

.field private mScheduler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/PackageEventController;)Lcom/android/systemui/miui/PackageEventReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/PackageEventController;->mPackageChangedReceiver:Lcom/android/systemui/miui/PackageEventReceiver;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/miui/PackageEventReceiver;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/miui/PackageEventController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/miui/PackageEventController;->mScheduler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/miui/PackageEventController;->mPackageChangedReceiver:Lcom/android/systemui/miui/PackageEventReceiver;

    iget-object v0, p0, Lcom/android/systemui/miui/PackageEventController;->mScheduler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/miui/PackageEventController;->mScheduler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {p2}, Lcom/android/systemui/miui/PackageEventController;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-gez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/miui/PackageEventController;->mScheduler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/miui/PackageEventController$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/miui/PackageEventController$1;-><init>(Lcom/android/systemui/miui/PackageEventController;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/systemui/Constants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "PackageEventController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcast received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/miui/PackageEventController;->mScheduler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/miui/PackageEventController$2;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/android/systemui/miui/PackageEventController$2;-><init>(Lcom/android/systemui/miui/PackageEventController;ILjava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/miui/PackageEventController;->mScheduler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/miui/PackageEventController$3;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/android/systemui/miui/PackageEventController$3;-><init>(Lcom/android/systemui/miui/PackageEventController;ILjava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/miui/PackageEventController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
