.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackQueue"
.end annotation


# instance fields
.field private mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor <init>(Landroid/view/Choreographer;)V
    .registers 2

    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/Choreographer;->-wrap0(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-nez v1, :cond_d

    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    return-void

    :cond_d
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1a

    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    return-void

    :cond_18
    iget-object v1, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :cond_1a
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v2, :cond_2a

    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v2, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_18

    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :cond_2a
    iput-object v0, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    return-void
.end method

.method public extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_b

    iget-wide v4, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v3, v4, p1

    if-lez v3, :cond_c

    :cond_b
    return-object v6

    :cond_c
    move-object v1, v0

    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :goto_f
    if-eqz v2, :cond_19

    iget-wide v4, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v3, v4, p1

    if-lez v3, :cond_1c

    iput-object v6, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :cond_19
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    return-object v0

    :cond_1c
    move-object v1, v2

    iget-object v2, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_f
.end method

.method public hasDueCallbacksLocked(J)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v1, v2, p1

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    :goto_3
    if-eqz v0, :cond_23

    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz p1, :cond_d

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    if-ne v3, p1, :cond_21

    :cond_d
    if-eqz p2, :cond_13

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    if-ne v3, p2, :cond_21

    :cond_13
    if-eqz v2, :cond_1e

    iput-object v1, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :goto_17
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v3, v0}, Landroid/view/Choreographer;->-wrap1(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    :goto_1c
    move-object v0, v1

    goto :goto_3

    :cond_1e
    iput-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_17

    :cond_21
    move-object v2, v0

    goto :goto_1c

    :cond_23
    return-void
.end method
