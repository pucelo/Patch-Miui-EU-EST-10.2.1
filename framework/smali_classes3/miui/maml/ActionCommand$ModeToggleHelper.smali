.class Lmiui/maml/ActionCommand$ModeToggleHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeToggleHelper"
.end annotation


# instance fields
.field private mCurModeIndex:I

.field private mCurToggleIndex:I

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggle:Z

.field private mToggleAll:Z

.field private mToggleModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/ActionCommand$ModeToggleHelper;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/ActionCommand$ModeToggleHelper;-><init>()V

    return-void
.end method

.method private findMode(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public addMode(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build(Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_b

    iput v2, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    return v6

    :cond_b
    const-string/jumbo v4, "toggle"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iput-boolean v6, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    return v6

    :cond_17
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1f
    array-length v4, v3

    if-ge v0, v4, :cond_37

    aget-object v4, v3, v0

    invoke-direct {p0, v4}, Lmiui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2b

    return v7

    :cond_2b
    iget-object v4, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_37
    iput-boolean v6, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    return v6
.end method

.method public click()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    iget-object v1, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    iget-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    iget-object v1, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    goto :goto_23
.end method

.method public getModeId()I
    .registers 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
