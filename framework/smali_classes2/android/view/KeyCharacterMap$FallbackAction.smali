.class public final Landroid/view/KeyCharacterMap$FallbackAction;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackAction"
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0xa

.field private static sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public keyCode:I

.field public metaState:I

.field private next:Landroid/view/KeyCharacterMap$FallbackAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/view/KeyCharacterMap$FallbackAction;
    .registers 3

    sget-object v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    if-nez v1, :cond_e

    new-instance v0, Landroid/view/KeyCharacterMap$FallbackAction;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    :goto_c
    monitor-exit v2

    return-object v0

    :cond_e
    :try_start_e
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    iget-object v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    sput-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1e

    goto :goto_c

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 4

    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_17

    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    iput-object v0, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    sput-object p0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    sget v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    :goto_15
    monitor-exit v1

    return-void

    :cond_17
    const/4 v0, 0x0

    :try_start_18
    iput-object v0, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_15

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
