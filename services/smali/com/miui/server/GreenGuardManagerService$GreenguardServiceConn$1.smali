.class Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;
.super Ljava/lang/Object;
.source "GreenGuardManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;


# direct methods
.method constructor <init>(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;->this$1:Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;->this$1:Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->-get0(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService;->-wrap0(Landroid/content/Context;)V

    return-void
.end method
