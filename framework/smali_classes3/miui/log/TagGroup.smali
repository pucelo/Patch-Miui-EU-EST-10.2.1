.class public final Lmiui/log/TagGroup;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field private final androidTags:[Ljava/lang/String;

.field private isGroupOn:Z

.field private final miuiTags:[Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    if-nez p2, :cond_a

    new-array p2, v0, [Ljava/lang/String;

    :cond_a
    iput-object p2, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    if-nez p3, :cond_10

    new-array p3, v0, [Ljava/lang/String;

    :cond_10
    iput-object p3, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    iput-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    return-void
.end method


# virtual methods
.method public isOn()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .registers 8

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v2, 0x0

    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    if-nez v4, :cond_21

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-eqz v2, :cond_38

    iget-object v5, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_17
    if-ge v4, v6, :cond_2b

    aget-object v1, v5, v4

    invoke-static {v1}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_21
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v2, 0x1

    goto :goto_11

    :cond_2b
    iget-object v4, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v5, v4

    :goto_2e
    if-ge v3, v5, :cond_38

    aget-object v0, v4, v3

    invoke-static {v0}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_3a

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized switchOn()V
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v2, 0x0

    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    if-nez v4, :cond_22

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v2, 0x1

    :cond_12
    :goto_12
    if-eqz v2, :cond_38

    iget-object v5, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_18
    if-ge v4, v6, :cond_2b

    aget-object v0, v5, v4

    invoke-static {v0}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_22
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v2, 0x1

    goto :goto_12

    :cond_2b
    iget-object v4, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v5, v4

    :goto_2e
    if-ge v3, v5, :cond_38

    aget-object v1, v4, v3

    invoke-static {v1}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_3a

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3
.end method
