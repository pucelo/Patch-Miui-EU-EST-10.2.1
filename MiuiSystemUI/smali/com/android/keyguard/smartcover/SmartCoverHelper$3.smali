.class Lcom/android/keyguard/smartcover/SmartCoverHelper$3;
.super Ljava/lang/Object;
.source "SmartCoverHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/SmartCoverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/smartcover/SmartCoverHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$3;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$3;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get4(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/keyguard/smartcover/SmartCoverView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$3;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get3(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$3;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get3(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    return-void
.end method
