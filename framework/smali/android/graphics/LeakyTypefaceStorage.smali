.class public Landroid/graphics/LeakyTypefaceStorage;
.super Ljava/lang/Object;
.source "LeakyTypefaceStorage.java"


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static final sStorage:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/graphics/Typeface;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_10

    const/4 v2, 0x0

    return-object v2

    :cond_10
    sget-object v3, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_13
    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1d

    monitor-exit v3

    return-object v2

    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V
    .registers 7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v3, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_32

    monitor-exit v3

    return-void

    :cond_1d
    :try_start_1d
    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_32

    goto :goto_18

    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method
