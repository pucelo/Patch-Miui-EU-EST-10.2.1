.class Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastMap"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v1, p1, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    if-eqz v1, :cond_1c

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19

    :cond_1c
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
