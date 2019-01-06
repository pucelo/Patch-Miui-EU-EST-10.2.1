.class final synthetic Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/ShortcutService;

    iget-object v2, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f2:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f3:Ljava/lang/Object;

    check-cast v3, [I

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$-com_android_server_pm_ShortcutUser_18707(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
