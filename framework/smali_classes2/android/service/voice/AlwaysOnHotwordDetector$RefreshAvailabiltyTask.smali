.class Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;
.super Landroid/os/AsyncTask;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshAvailabiltyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private internalGetInitialAvailability()I
    .registers 6

    const/4 v4, -0x3

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get4(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_8
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get0(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_28

    move-result v2

    if-ne v2, v4, :cond_12

    monitor-exit v3

    return v4

    :cond_12
    monitor-exit v3

    const/4 v0, 0x0

    :try_start_14
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get5(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get6(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_2b

    move-result-object v0

    :goto_24
    if-nez v0, :cond_36

    const/4 v2, -0x2

    return v2

    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_2b
    move-exception v1

    const-string/jumbo v2, "AlwaysOnHotwordDetector"

    const-string/jumbo v3, "RemoteException in getDspProperties!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :cond_36
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get2(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v2

    if-nez v2, :cond_40

    const/4 v2, -0x1

    return v2

    :cond_40
    const/4 v2, 0x0

    return v2
.end method

.method private internalGetIsEnrolled(ILjava/util/Locale;)Z
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get5(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get6(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v1

    return v1

    :catch_15
    move-exception v0

    const-string/jumbo v1, "AlwaysOnHotwordDetector"

    const-string/jumbo v2, "RemoteException in listRegisteredKeyphraseSoundModels!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetInitialAvailability()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    :cond_a
    :goto_a
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get2(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v2

    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get3(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetIsEnrolled(ILjava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get4(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_26
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-set0(Landroid/service/voice/AlwaysOnHotwordDetector;I)I

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-wrap0(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_39

    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :cond_33
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    goto :goto_a

    :cond_37
    const/4 v0, 0x2

    goto :goto_1f

    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2
.end method
