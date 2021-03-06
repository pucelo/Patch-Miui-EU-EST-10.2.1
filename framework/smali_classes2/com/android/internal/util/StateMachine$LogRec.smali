.class public Lcom/android/internal/util/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private mDstState:Lcom/android/internal/util/IState;

.field private mInfo:Ljava/lang/String;

.field private mOrgState:Lcom/android/internal/util/IState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mState:Lcom/android/internal/util/IState;

.field private mTime:J

.field private mWhat:I


# direct methods
.method constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    return-void
.end method


# virtual methods
.method public getDestState()Lcom/android/internal/util/IState;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalState()Lcom/android/internal/util/IState;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getState()Lcom/android/internal/util/IState;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    return-wide v0
.end method

.method public getWhat()J
    .registers 3

    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "time="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v3, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    aput-object v0, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " processed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_ad

    const-string/jumbo v3, "<null>"

    :goto_40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " org="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_b4

    const-string/jumbo v3, "<null>"

    :goto_50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " dest="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_bb

    const-string/jumbo v3, "<null>"

    :goto_60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " what="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    iget v4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c6

    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "(0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_95
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a8

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_ad
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    :cond_b4
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_50

    :cond_bb
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_60

    :cond_c2
    const-string/jumbo v2, ""

    goto :goto_75

    :cond_c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_95
.end method

.method public update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 9

    iput-object p1, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    if-eqz p2, :cond_17

    iget v0, p2, Landroid/os/Message;->what:I

    :goto_c
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    iput-object p3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    iput-object p5, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    iput-object p6, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method
