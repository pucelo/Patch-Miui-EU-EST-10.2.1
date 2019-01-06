.class Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.super Lcom/android/server/am/ConfigurationContainer;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityDisplay"
.end annotation


# instance fields
.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayId:I

.field mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private mSleeping:Z

.field final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Landroid/util/IntArray;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->init(Landroid/view/Display;)V

    return-void
.end method

.method private getPresentUIDs()Landroid/util/IntArray;
    .registers 4

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    goto :goto_b

    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v2
.end method


# virtual methods
.method attachStack(Lcom/android/server/am/ActivityStack;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    return-void
.end method

.method detachStack(Lcom/android/server/am/ActivityStack;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/am/ConfigurationContainer;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConfigurationContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getParent()Lcom/android/server/am/ConfigurationContainer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method init(Landroid/view/Display;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    return-void
.end method

.method isPrivate()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method isSleeping()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isUidPresent(I)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->isUidPresent(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    return v2

    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method setIsSleeping(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mSleeping:Z

    return-void
.end method

.method shouldDestroyContentOnRemove()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRemoveMode()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method shouldSleep()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    :cond_13
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
