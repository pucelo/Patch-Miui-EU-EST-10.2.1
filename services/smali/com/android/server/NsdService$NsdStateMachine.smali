.class Lcom/android/server/NsdService$NsdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NsdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdStateMachine$DefaultState;,
        Lcom/android/server/NsdService$NsdStateMachine$DisabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

.field private final mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

.field private final mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method static synthetic -get0(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/NsdService;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    new-instance v1, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    new-instance v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-virtual {p0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-static {p1}, Lcom/android/server/NsdService;->-wrap2(Lcom/android/server/NsdService;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    :goto_35
    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->setLogRecSize(I)V

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V

    return-void

    :cond_41
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    goto :goto_35
.end method

.method private registerForNsdSetting()V
    .registers 4

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$1;

    invoke-virtual {p0}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/NsdService$NsdStateMachine$1;-><init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V

    const-string/jumbo v2, "nsd_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->-get4(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdSettings;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/server/NsdService$NsdSettings;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
