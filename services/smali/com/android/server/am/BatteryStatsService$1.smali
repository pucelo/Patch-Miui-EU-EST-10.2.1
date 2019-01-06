.class Lcom/android/server/am/BatteryStatsService$1;
.super Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field private umi:Landroid/os/UserManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserIds()[I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_f

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    goto :goto_19
.end method
