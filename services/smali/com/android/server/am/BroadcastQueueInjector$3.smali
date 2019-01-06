.class final Lcom/android/server/am/BroadcastQueueInjector$3;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"

# interfaces
.implements Lcom/android/server/am/MiuiWarnings$WarningCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueueInjector;->processAbnormalBroadcast(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$r:Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueInjector$3;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueInjector$3;->val$r:Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Z)V
    .registers 6

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$3;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$3;->val$r:Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueueInjector;->-wrap1(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->-get0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$3;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/BroadcastQueueInjector$3$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BroadcastQueueInjector$3$1;-><init>(Lcom/android/server/am/BroadcastQueueInjector$3;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11
.end method
