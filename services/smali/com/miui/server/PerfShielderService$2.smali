.class Lcom/miui/server/PerfShielderService$2;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V

    const-string/jumbo v0, "PerfShielderService"

    const-string/jumbo v1, "MiuiSysUser service binderDied!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-get1(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {}, Lcom/miui/server/PerfShielderService;->-get2()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/server/PerfShielderService;->-wrap3(Lcom/miui/server/PerfShielderService;J)V

    return-void
.end method
