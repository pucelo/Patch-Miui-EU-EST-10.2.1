.class final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalSoundTriggerRecognitionStatusCallback"
.end annotation


# instance fields
.field private mCallbackIntent:Landroid/app/PendingIntent;

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mUuid:Ljava/util/UUID;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mUuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    return-void
.end method

.method private removeCallback(Z)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get4(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get2(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get6(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onError(I)V
    .registers 10

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-wrap2(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string/jumbo v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.media.soundtrigger.MESSAGE_TYPE"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.media.soundtrigger.STATUS"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_36
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get0(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V
    :try_end_4b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_36 .. :try_end_4b} :catch_4c

    :goto_4b
    return-void

    :catch_4c
    move-exception v6

    invoke-direct {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V

    goto :goto_4b
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-wrap2(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string/jumbo v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Generic sound trigger event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.media.soundtrigger.MESSAGE_TYPE"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.media.soundtrigger.RECOGNITION_EVENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_36
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get0(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v0, :cond_51

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V
    :try_end_51
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_36 .. :try_end_51} :catch_52

    :cond_51
    :goto_51
    return-void

    :catch_52
    move-exception v6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V

    goto :goto_51
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-wrap2(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string/jumbo v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Keyphrase sound trigger event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.media.soundtrigger.MESSAGE_TYPE"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.media.soundtrigger.RECOGNITION_EVENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_36
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get0(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v0, :cond_51

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V
    :try_end_51
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_36 .. :try_end_51} :catch_52

    :cond_51
    :goto_51
    return-void

    :catch_52
    move-exception v6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V

    goto :goto_51
.end method

.method public onRecognitionPaused()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-wrap2(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string/jumbo v0, "SoundTriggerService"

    const-string/jumbo v1, "onRecognitionPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1f
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get0(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1f .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V

    goto :goto_30
.end method

.method public onRecognitionResumed()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-wrap2(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    const-string/jumbo v0, "SoundTriggerService"

    const-string/jumbo v1, "onRecognitionResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v1, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1f
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-get0(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1f .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->removeCallback(Z)V

    goto :goto_30
.end method

.method public pingBinder()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
