.class final synthetic Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# instance fields
.field private final synthetic -$f0:J

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    iget-wide v2, p0, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;->-$f0:J

    iget-object v0, p0, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;->-$f1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/android/server/job/JobStore;->lambda$-com_android_server_job_JobStore_6419(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;->-$f0:J

    iput-object p3, p0, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final process(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;->$m$0(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
