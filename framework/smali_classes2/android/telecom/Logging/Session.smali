.class public Landroid/telecom/Logging/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/Session$Info;
    }
.end annotation


# static fields
.field public static final CONTINUE_SUBSESSION:Ljava/lang/String; = "CONTINUE_SUBSESSION"

.field public static final CREATE_SUBSESSION:Ljava/lang/String; = "CREATE_SUBSESSION"

.field public static final END_SESSION:Ljava/lang/String; = "END_SESSION"

.field public static final END_SUBSESSION:Ljava/lang/String; = "END_SUBSESSION"

.field public static final EXTERNAL_INDICATOR:Ljava/lang/String; = "E-"

.field public static final SESSION_SEPARATION_CHAR_CHILD:Ljava/lang/String; = "_"

.field public static final START_EXTERNAL_SESSION:Ljava/lang/String; = "START_EXTERNAL_SESSION"

.field public static final START_SESSION:Ljava/lang/String; = "START_SESSION"

.field public static final SUBSESSION_SEPARATION_CHAR:Ljava/lang/String; = "->"

.field public static final TRUNCATE_STRING:Ljava/lang/String; = "..."

.field public static final UNDEFINED:I = -0x1


# instance fields
.field private mChildCounter:I

.field private mChildSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutionEndTimeMs:J

.field private mExecutionStartTimeMs:J

.field private mFullMethodPathCache:Ljava/lang/String;

.field private mIsCompleted:Z

.field private mIsExternal:Z

.field private mIsStartedFromActiveSession:Z

.field private mOwnerInfo:Ljava/lang/String;

.field private mParentSession:Landroid/telecom/Logging/Session;

.field private mSessionId:Ljava/lang/String;

.field private mShortMethodName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/telecom/Logging/Session;)Z
    .registers 2

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->isSessionExternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/telecom/Logging/Session;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iput-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    iput-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    iput v2, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    iput-boolean v2, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    invoke-virtual {p0, p1}, Landroid/telecom/Logging/Session;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    iput-wide p3, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    iput-boolean p5, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    iput-object p6, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized getFullMethodPath(Ljava/lang/StringBuilder;Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5c

    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2e

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v3, v1, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    invoke-direct {v1, p1, p2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Ljava/lang/StringBuilder;Z)V

    const-string/jumbo v2, "->"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_5f

    if-eqz p2, :cond_4a

    const-string/jumbo v2, "..."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3c
    if-eqz v0, :cond_48

    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_5c

    :cond_48
    monitor-exit p0

    return-void

    :cond_4a
    :try_start_4a
    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_5c

    goto :goto_3c

    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5f
    :try_start_5f
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_5c

    goto :goto_3c
.end method

.method private getFullSessionId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-nez v0, :cond_7

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v1

    :cond_7
    sget-boolean v1, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2a
    invoke-direct {v0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isSessionExternal()Z
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->isSessionExternal()Z

    move-result v0

    return v0
.end method

.method private printSessionTree(ILjava/lang/StringBuilder;)V
    .registers 7

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string/jumbo v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_20
    if-gt v2, p1, :cond_2b

    const-string/jumbo v3, "\t"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2b
    add-int/lit8 v3, p1, 0x1

    invoke-direct {v0, v3, p2}, Landroid/telecom/Logging/Session;->printSessionTree(ILjava/lang/StringBuilder;)V

    goto :goto_d

    :cond_31
    return-void
.end method


# virtual methods
.method public addChild(Landroid/telecom/Logging/Session;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/telecom/Logging/Session;

    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v6, v0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1e

    return v2

    :cond_1e
    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v6, v0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_27

    return v2

    :cond_27
    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    iget-boolean v4, v0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    if-eq v3, v4, :cond_2e

    return v2

    :cond_2e
    iget v3, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    iget v4, v0, Landroid/telecom/Logging/Session;->mChildCounter:I

    if-eq v3, v4, :cond_35

    return v2

    :cond_35
    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    iget-boolean v4, v0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eq v3, v4, :cond_3c

    return v2

    :cond_3c
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_51

    :cond_4c
    return v2

    :cond_4d
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-nez v3, :cond_4c

    :cond_51
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_66

    :cond_61
    return v2

    :cond_62
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-nez v3, :cond_61

    :cond_66
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v3, :cond_77

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v3, v4}, Landroid/telecom/Logging/Session;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7b

    :cond_76
    return v2

    :cond_77
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-nez v3, :cond_76

    :cond_7b
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_90

    :cond_8b
    return v2

    :cond_8c
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-nez v3, :cond_8b

    :cond_90
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_9d

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    iget-object v2, v0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_9c
    :goto_9c
    return v1

    :cond_9d
    iget-object v3, v0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_9c

    move v1, v2

    goto :goto_9c
.end method

.method public getChildSessions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExecutionStartTimeMilliseconds()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    return-wide v0
.end method

.method public getFullMethodPath(Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/telecom/Logging/Session;->getFullMethodPath(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInfo()Landroid/telecom/Logging/Session$Info;
    .registers 2

    invoke-static {p0}, Landroid/telecom/Logging/Session$Info;->getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public getLocalExecutionTime()J
    .registers 5

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-wide v2

    :cond_9
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized getNextChildId()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParentSession()Landroid/telecom/Logging/Session;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortMethodName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 10

    const/16 v8, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-eqz v1, :cond_76

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1a
    add-int v0, v4, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v6, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v6, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v1, :cond_78

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->hashCode()I

    move-result v1

    :goto_3e
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_4c
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    if-eqz v1, :cond_7c

    move v1, v3

    :goto_55
    add-int v0, v4, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eqz v4, :cond_7e

    :goto_63
    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_71

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_71
    add-int v0, v1, v2

    return v0

    :cond_74
    const/4 v0, 0x0

    goto :goto_e

    :cond_76
    move v1, v2

    goto :goto_1a

    :cond_78
    move v1, v2

    goto :goto_3e

    :cond_7a
    move v1, v2

    goto :goto_4c

    :cond_7c
    move v1, v2

    goto :goto_55

    :cond_7e
    move v3, v2

    goto :goto_63
.end method

.method public isExternal()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    return v0
.end method

.method public isSessionCompleted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    return v0
.end method

.method public isStartedFromActiveSession()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    return v0
.end method

.method public markSessionCompleted(J)V
    .registers 4

    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    return-void
.end method

.method public printFullSessionTree()Ljava/lang/String;
    .registers 3

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->printSessionTree()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printSessionTree()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/telecom/Logging/Session;->printSessionTree(ILjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeChild(Landroid/telecom/Logging/Session;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setExecutionStartTimeMs(J)V
    .registers 4

    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    return-void
.end method

.method public setIsExternal(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    return-void
.end method

.method public setParentSession(Landroid/telecom/Logging/Session;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_7

    const-string/jumbo v0, "?"

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    :cond_7
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method public setShortMethodName(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_5

    const-string/jumbo p1, ""

    :cond_5
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "(InCall package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
