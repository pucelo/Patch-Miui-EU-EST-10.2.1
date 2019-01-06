.class public Lmiui/maml/elements/MusicLyricParser$Lyric;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;,
        Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;
    }
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

.field private mIsModified:Z

.field private mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;-><init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v0, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    iput v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    iput-object p2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    new-instance v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    const-string/jumbo v1, "\n"

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    new-instance v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "\n"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    return-void
.end method

.method private getTimeFromLyricShot(ID)J
    .registers 12

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-lt p1, v0, :cond_24

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int v4, p1, v0

    mul-int/lit16 v4, v4, 0x1f40

    add-int/2addr v1, v4

    int-to-long v4, v1

    const-wide v6, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v6, p2

    double-to-long v6, v6

    add-long v2, v4, v6

    :goto_23
    return-wide v2

    :cond_24
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    int-to-double v4, v1

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v6, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int v1, v6, v1

    int-to-double v6, v1

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    double-to-long v2, v4

    goto :goto_23
.end method


# virtual methods
.method public addOffset(I)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    return-void
.end method

.method public correctLyric(Lmiui/maml/elements/MusicLyricParser$LyricShot;ID)V
    .registers 22

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v7

    if-ltz p2, :cond_a

    move/from16 v0, p2

    if-le v0, v7, :cond_b

    :cond_a
    return-void

    :cond_b
    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-ltz v12, :cond_a

    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-gt v12, v7, :cond_a

    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    move-object/from16 v0, p1

    iget-wide v14, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v8

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    move/from16 v0, p2

    if-gt v0, v12, :cond_48

    move-object/from16 v0, p1

    iget v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    move/from16 v0, p2

    if-ne v0, v12, :cond_49

    move-object/from16 v0, p1

    iget-wide v12, v0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    cmpl-double v12, p3, v12

    if-lez v12, :cond_49

    :cond_48
    const/4 v6, 0x0

    :cond_49
    if-nez v6, :cond_50

    cmp-long v12, v4, v8

    if-lez v12, :cond_50

    return-void

    :cond_50
    if-eqz v6, :cond_57

    cmp-long v12, v4, v8

    if-gez v12, :cond_57

    return-void

    :cond_57
    sub-long v10, v4, v8

    long-to-int v12, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/maml/elements/MusicLyricParser$Lyric;->addOffset(I)V

    return-void
.end method

.method public decorate()V
    .registers 7

    const/4 v5, 0x0

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->isDecorated()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v3, :cond_2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v1}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->decorate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    return-void
.end method

.method public getAfterLines(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getAfterLines(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getBeforeLines(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLine(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLastLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLyricContent(I)Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_6

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_11

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    goto :goto_5

    :cond_11
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    goto :goto_5
.end method

.method public getLyricShot(J)Lmiui/maml/elements/MusicLyricParser$LyricShot;
    .registers 16

    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, v8, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v8, v1

    int-to-long v8, v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_1e

    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    invoke-direct {v8, v9, v10, v11}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v8

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5e

    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int v7, v8, v1

    int-to-long v8, v7

    cmp-long v8, v8, p1

    if-lez v8, :cond_5b

    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int v6, v8, v1

    const-wide/16 v2, 0x0

    if-le v7, v6, :cond_53

    int-to-long v8, v6

    sub-long v8, p1, v8

    long-to-double v8, v8

    sub-int v10, v7, v6

    int-to-double v10, v10

    div-double v2, v8, v10

    :cond_53
    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    add-int/lit8 v9, v0, -0x1

    invoke-direct {v8, v9, v2, v3}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v8

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_5e
    iget-object v8, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v8, v8, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v8, v1

    int-to-long v4, v8

    sub-long v8, p1, v4

    const-wide/16 v10, 0x1f40

    cmp-long v8, v8, v10

    if-gez v8, :cond_8e

    sub-long v8, p1, v4

    long-to-double v8, v8

    const-wide v10, 0x40bf400000000000L    # 8000.0

    div-double v2, v8, v10

    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9, v2, v3}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v8

    :cond_8e
    new-instance v8, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    iget-object v9, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v8
.end method

.method public getNextLine(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getNextLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    return-wide v0
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    return-object v4

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget-object v0, v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2d
    return-object v1
.end method

.method public getTimeArr()[I
    .registers 8

    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    return-object v5

    :cond_a
    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [I

    const/4 v0, 0x0

    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v1, v0, 0x1

    iget v5, v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v6, v6, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v5, v6

    aput v5, v4, v0

    move v0, v1

    goto :goto_19

    :cond_32
    return-object v4
.end method

.method public isModified()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    return v0
.end method

.method public recycleContent()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resetHeaderOffset()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    iput v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    return-void
.end method

.method public set([ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->set([ILjava/util/ArrayList;)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
