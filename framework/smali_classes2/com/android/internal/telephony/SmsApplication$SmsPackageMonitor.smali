.class final Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsPackageMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mMsgCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mMsgCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private onPackageChanged()V
    .registers 3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mMsgCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mMsgCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public handlePackageChanged()V
    .registers 10

    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->getSendingUserId()I

    move-result v4

    if-eqz v4, :cond_20

    :try_start_e
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1f} :catch_2b

    move-result-object v3

    :cond_20
    :goto_20
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/SmsApplication;->-wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    :cond_2a
    return-void

    :catch_2b
    move-exception v1

    goto :goto_20
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    return-void
.end method
