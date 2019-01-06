.class Lcom/android/server/LocationPolicyManagerService$1;
.super Lcom/android/internal/app/IUidStateChangeCallback$Stub;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IUidStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChange(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LocationPolicyManagerService;->-wrap8(Lcom/android/server/LocationPolicyManagerService;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
