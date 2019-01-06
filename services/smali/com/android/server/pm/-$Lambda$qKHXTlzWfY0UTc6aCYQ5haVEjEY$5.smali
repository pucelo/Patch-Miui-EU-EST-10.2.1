.class final synthetic Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService$3;

    iget v1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;->-$f0:I

    iget v2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;->-$f1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService$3;->lambda$-com_android_server_pm_ShortcutService$3_17352(II)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;->-$f0:I

    iput p2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;->-$f1:I

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;->$m$0()V

    return-void
.end method
