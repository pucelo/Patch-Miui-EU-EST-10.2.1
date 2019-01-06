.class final Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field private final mSciId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-void
.end method

.method private onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v2

    if-ne p0, v2, :cond_1d

    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V

    :cond_1d
    return-void
.end method

.method private onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v1

    if-ne p0, v1, :cond_19

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceDisconnectedLocked()V

    :cond_19
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
