.class public Landroid/arch/lifecycle/LifecycleRegistry;
.super Landroid/arch/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/FastSafeIterableMap",
            "<",
            "Landroid/arch/lifecycle/LifecycleObserver;",
            "Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/arch/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroid/arch/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    new-instance v0, Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    iput v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    iput-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    iput-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method

.method private backwardPass()V
    .locals 6

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v4}, Landroid/arch/core/internal/FastSafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_0
    iget-object v4, v3, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v5, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_0

    iget-boolean v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroid/arch/lifecycle/LifecycleRegistry;->downEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v2

    invoke-static {v2}, Landroid/arch/lifecycle/LifecycleRegistry;->getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {v3, v4, v2}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0
.end method

.method private static downEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private forwardPass()V
    .locals 5

    iget-object v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v3}, Landroid/arch/core/internal/FastSafeIterableMap;->iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    iget-object v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    iget-object v4, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroid/arch/lifecycle/LifecycleRegistry;->upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0
.end method

.method static getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0

    :pswitch_3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0

    :pswitch_4
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private isSynced()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Landroid/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Landroid/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Landroid/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    return v3

    :cond_2
    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v2, v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method static min(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1
    .param p0    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    :goto_0
    move-object p1, p0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0
.end method

.method private popParentState()V
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sync()V
    .locals 4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void

    :cond_1
    iput-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroid/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    :goto_1
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroid/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v0

    iget-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->forwardPass()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->backwardPass()V

    goto :goto_1
.end method

.method private static upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/arch/lifecycle/LifecycleRegistry;->getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void

    :cond_1
    iget v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->sync()V

    iput-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    return-void
.end method

.method public markState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 0

    iput-object p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method
