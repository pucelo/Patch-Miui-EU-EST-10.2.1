.class final synthetic Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:J

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    iget-wide v2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;->-$f1:J

    iget v1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;->-$f0:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/ShortcutService;->lambda$-com_android_server_pm_ShortcutService_21506(JI)V

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;->-$f0:I

    iput-wide p2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;->-$f1:J

    iput-object p4, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;->$m$0()V

    return-void
.end method
