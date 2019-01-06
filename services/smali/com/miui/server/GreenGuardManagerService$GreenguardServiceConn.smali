.class Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;
.super Ljava/lang/Object;
.source "GreenGuardManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/GreenGuardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GreenguardServiceConn"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string/jumbo v0, "GreenKidManagerService"

    const-string/jumbo v1, "On GreenKidService Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    const-string/jumbo v0, "GreenKidManagerService"

    const-string/jumbo v1, "On GreenKidService Disconnected , schedule restart it in 10s."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/server/GreenGuardManagerService;->-get1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;

    invoke-direct {v1, p0}, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;-><init>(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)V

    invoke-static {}, Lcom/miui/server/GreenGuardManagerService;->-get0()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
