.class Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbnormalBroadcastRecord"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field callerPackage:Ljava/lang/String;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    if-eqz v2, :cond_24

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    iget v3, v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    if-ne v2, v3, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1

    :cond_24
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    if-nez v1, :cond_20

    move v1, v2

    :goto_7
    add-int/lit8 v0, v1, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    if-nez v3, :cond_27

    :goto_f
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0

    :cond_20
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_27
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AbnormalBroadcastRecord{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callerPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
