.class public final Lmiui/log/MiuiTag;
.super Ljava/lang/Object;
.source "MiuiTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field public final defaultOn:Z

.field public final id:I

.field private isTagOn:Z

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/log/MiuiTag;->id:I

    iput-object p2, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean p3, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    return-void
.end method


# virtual methods
.method public isOn()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1a

    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1a

    goto :goto_f

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .registers 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1a

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_10

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
