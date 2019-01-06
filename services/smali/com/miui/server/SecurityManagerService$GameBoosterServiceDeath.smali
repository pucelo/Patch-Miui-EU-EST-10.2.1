.class Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameBoosterServiceDeath"
.end annotation


# instance fields
.field private mGameBoosterService:Landroid/os/IBinder;

.field private mUserState:Lcom/miui/server/SecurityManagerService$UserState;

.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method static synthetic -get0(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;

    return-object v0
.end method

.method public constructor <init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mUserState:Lcom/miui/server/SecurityManagerService$UserState;

    iput-object p3, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mUserState:Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mUserState:Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_15
    .catchall {:try_start_3 .. :try_end_13} :catchall_20

    :goto_13
    monitor-exit v2

    return-void

    :catch_15
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v3, "GameBoosterServiceDeath"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_13

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method
