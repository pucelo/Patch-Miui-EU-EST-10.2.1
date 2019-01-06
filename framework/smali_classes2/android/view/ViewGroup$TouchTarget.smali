.class final Landroid/view/ViewGroup$TouchTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final ALL_POINTER_IDS:I = -0x1

.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Landroid/view/View;

.field public next:Landroid/view/ViewGroup$TouchTarget;

.field public pointerIdBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "child must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    if-nez v1, :cond_1d

    new-instance v0, Landroid/view/ViewGroup$TouchTarget;

    invoke-direct {v0}, Landroid/view/ViewGroup$TouchTarget;-><init>()V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_2d

    :goto_17
    monitor-exit v2

    iput-object p0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iput p1, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    return-object v0

    :cond_1d
    :try_start_1d
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2d

    goto :goto_17

    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already recycled once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_27

    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    :goto_22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_2b

    monitor-exit v1

    return-void

    :cond_27
    const/4 v0, 0x0

    :try_start_28
    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2b

    goto :goto_22

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
