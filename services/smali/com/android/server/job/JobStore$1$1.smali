.class Lcom/android/server/job/JobStore$1$1;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobStore$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/job/JobStore$1;

.field final synthetic val$storeCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore$1;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/job/JobStore$1$1;->this$1:Lcom/android/server/job/JobStore$1;

    iput-object p2, p0, Lcom/android/server/job/JobStore$1$1;->val$storeCopy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/job/JobStore$1$1;->val$storeCopy:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method
