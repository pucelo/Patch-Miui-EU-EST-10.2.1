.class Lcom/android/server/media/MediaSessionRecord$2;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$previousFlagPlaySound:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I

.field final synthetic val$useSuggested:Z


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    if-eqz v0, :cond_a5

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    or-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    const/high16 v1, -0x80000000

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_20

    :catch_38
    move-exception v6

    const-string/jumbo v0, "MediaSessionRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot adjust volume: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", useSuggested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", previousFlagPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    :cond_a5
    :try_start_a5
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    :try_end_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a5 .. :try_end_b8} :catch_38

    goto/16 :goto_20
.end method
