.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final BUNDLE_MAGIC:I = 0x4c444e42

.field static final DEBUG:Z = false

.field static final FLAG_DEFUSABLE:I = 0x1

.field private static final LOG_DEFUSABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "Bundle"

.field private static volatile sShouldDefuse:Z


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field public mFlags:I

.field mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    return-void
.end method

.method constructor <init>(Landroid/os/BaseBundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->copyInternal(Landroid/os/BaseBundle;Z)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-lez p2, :cond_1e

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    :goto_f
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Landroid/os/BaseBundle;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_1b
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_1e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_f
.end method

.method constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    return-void
.end method

.method public static dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    if-nez p1, :cond_c

    const-string/jumbo v2, "[null]"

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/os/BaseBundle;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public static dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    if-nez p1, :cond_c

    const-string/jumbo v1, "[null]"

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public static dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/16 v2, 0x400

    if-le v0, v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    instance-of v2, p2, Landroid/os/BaseBundle;

    if-eqz v2, :cond_3e

    check-cast p2, Landroid/os/BaseBundle;

    invoke-static {p0, p2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    instance-of v2, p2, Landroid/util/SparseArray;

    if-eqz v2, :cond_3d

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p0, p2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V

    goto :goto_3d
.end method

.method private initializeFromParcelLocked(Landroid/os/Parcel;Z)V
    .registers 10

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v4, :cond_16

    new-instance v4, Landroid/util/ArrayMap;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    :goto_13
    iput-object v6, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    return-void

    :cond_16
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->erase()V

    goto :goto_13

    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_23

    return-void

    :cond_23
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v3, :cond_3b

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    :goto_2c
    :try_start_2c
    iget-object v4, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3, v0, v4}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    :try_end_31
    .catch Landroid/os/BadParcelableException; {:try_start_2c .. :try_end_31} :catch_6f
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_31} :catch_42
    .catchall {:try_start_2c .. :try_end_31} :catchall_64

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz p2, :cond_38

    invoke-static {p1}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    :cond_38
    :goto_38
    iput-object v6, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    return-void

    :cond_3b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    goto :goto_2c

    :catch_42
    move-exception v2

    :try_start_43
    sget-boolean v4, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v4, :cond_63

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/ClassNotFoundException;

    if-eqz v4, :cond_63

    const-string/jumbo v4, "Bundle"

    const-string/jumbo v5, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_64

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz p2, :cond_38

    invoke-static {p1}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_38

    :cond_63
    :try_start_63
    throw v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v4

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz p2, :cond_6c

    invoke-static {p1}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    :cond_6c
    iput-object v6, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    throw v4

    :catch_6f
    move-exception v1

    :try_start_70
    sget-boolean v4, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v4, :cond_88

    const-string/jumbo v4, "Bundle"

    const-string/jumbo v5, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_64

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz p2, :cond_38

    invoke-static {p1}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_38

    :cond_88
    :try_start_88
    throw v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_64
.end method

.method private static isEmptyParcel(Landroid/os/Parcel;)Z
    .registers 2

    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private readFromParcelInner(Landroid/os/Parcel;I)V
    .registers 9

    const/4 v4, 0x0

    if-gez p2, :cond_1d

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad length in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1d
    if-nez p2, :cond_24

    sget-object v3, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    return-void

    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v3, 0x4c444e42    # 5.146036E7f

    if-eq v0, v3, :cond_4b

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v3

    if-eqz v3, :cond_5b

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_53
    invoke-direct {p0, p1, v3}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;Z)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-void

    :catchall_58
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-static {v1, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->adoptClassCookies(Landroid/os/Parcel;)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    return-void
.end method

.method private static recycleParcel(Landroid/os/Parcel;)V
    .registers 2

    if-eqz p0, :cond_d

    invoke-static {p0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    :cond_d
    return-void
.end method

.method public static setShouldDefuse(Z)V
    .registers 1

    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method copyInternal(Landroid/os/BaseBundle;Z)V
    .registers 10

    monitor-enter p1

    :try_start_1
    iget-object v3, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v3, :cond_42

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v3

    if-eqz v3, :cond_24

    sget-object v3, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    :goto_f
    iget-object v3, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v3, :cond_6c

    if-nez p2, :cond_46

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    :cond_1e
    :goto_1e
    iget-object v3, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v3, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_3f

    monitor-exit p1

    return-void

    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v4, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v5, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    iget-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3f

    goto :goto_f

    :catchall_3f
    move-exception v3

    monitor-exit p1

    throw v3

    :cond_42
    const/4 v3, 0x0

    :try_start_43
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_f

    :cond_46
    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    :goto_54
    if-ge v2, v0, :cond_1e

    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_6c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_3f

    goto :goto_1e
.end method

.method deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_f

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_f
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1a

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0

    :cond_1a
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_87

    instance-of v0, p1, [I

    if-eqz v0, :cond_3a

    check-cast p1, [I

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3a
    instance-of v0, p1, [J

    if-eqz v0, :cond_45

    check-cast p1, [J

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_45
    instance-of v0, p1, [F

    if-eqz v0, :cond_50

    check-cast p1, [F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_50
    instance-of v0, p1, [D

    if-eqz v0, :cond_5b

    check-cast p1, [D

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5b
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_66

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_66
    instance-of v0, p1, [B

    if-eqz v0, :cond_71

    check-cast p1, [B

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_71
    instance-of v0, p1, [S

    if-eqz v0, :cond_7c

    check-cast p1, [S

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7c
    instance-of v0, p1, [C

    if-eqz v0, :cond_87

    check-cast p1, [C

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_87
    return-object p1
.end method

.method deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-object v2
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 10

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    return p2

    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result v1

    return v1

    :catch_15
    move-exception v6

    const-string/jumbo v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [Z
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getByte(Ljava/lang/String;)B
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 9

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_10
    :try_start_10
    check-cast v2, Ljava/lang/Byte;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_13

    return-object v2

    :catch_13
    move-exception v5

    const-string/jumbo v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method getByteArray(Ljava/lang/String;)[B
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [B
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getChar(Ljava/lang/String;)C
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method getChar(Ljava/lang/String;C)C
    .registers 10

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    return p2

    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result v1

    return v1

    :catch_15
    move-exception v6

    const-string/jumbo v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method getCharArray(Ljava/lang/String;)[C
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [C
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "char[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_9
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    move-exception v0

    const-string/jumbo v2, "CharSequence"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "CharSequence[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Ljava/util/ArrayList;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "ArrayList<CharSequence>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 12

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    return-wide p2

    :cond_c
    :try_start_c
    move-object v0, v4

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result-wide v2

    return-wide v2

    :catch_15
    move-exception v7

    const-string/jumbo v5, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [D
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "double[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getFloat(Ljava/lang/String;)F
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method getFloat(Ljava/lang/String;F)F
    .registers 10

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    return p2

    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result v1

    return v1

    :catch_15
    move-exception v6

    const-string/jumbo v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method getFloatArray(Ljava/lang/String;)[F
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [F
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "float[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 10

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    return p2

    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result v1

    return v1

    :catch_15
    move-exception v6

    const-string/jumbo v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [I
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "int[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Ljava/util/ArrayList;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "ArrayList<Integer>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 12

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    return-wide p2

    :cond_c
    :try_start_c
    move-object v0, v4

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result-wide v2

    return-wide v2

    :catch_15
    move-exception v7

    const-string/jumbo v5, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [J
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "long[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPairValue()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    const-string/jumbo v3, "Bundle"

    const-string/jumbo v4, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-nez v2, :cond_1a

    return-object v6

    :cond_1a
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    :try_start_20
    check-cast v1, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    move-exception v0

    const-string/jumbo v3, "getPairValue()"

    const-string/jumbo v4, "String"

    invoke-virtual {p0, v3, v1, v4, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v6
.end method

.method getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Ljava/io/Serializable;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "Serializable"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getShort(Ljava/lang/String;)S
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method getShort(Ljava/lang/String;S)S
    .registers 10

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    return p2

    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_15

    move-result v1

    return v1

    :catch_15
    move-exception v6

    const-string/jumbo v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method getShortArray(Ljava/lang/String;)[S
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [S
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "short[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_9
    check-cast v1, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    move-exception v0

    const-string/jumbo v2, "String"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, [Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "String[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    :try_start_d
    check-cast v1, Ljava/util/ArrayList;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const-string/jumbo v2, "ArrayList<String>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmptyParcel()Z
    .registers 2

    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-static {v0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method public isParcelled()Z
    .registers 2

    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public kindofEquals(Landroid/os/BaseBundle;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;)I

    move-result v1

    if-nez v1, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    :cond_21
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public maybeIsEmpty()Z
    .registers 2

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putAll(Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method

.method putAll(Landroid/util/ArrayMap;)V
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putByte(Ljava/lang/String;B)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putByteArray(Ljava/lang/String;[B)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putChar(Ljava/lang/String;C)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putCharArray(Ljava/lang/String;[C)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putFloat(Ljava/lang/String;F)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putFloatArray(Ljava/lang/String;[F)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putShort(Ljava/lang/String;S)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putShortArray(Ljava/lang/String;[S)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .registers 11

    const-string/jumbo v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return-void
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Bundle"

    const-string/jumbo v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method unparcel()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method writeToParcelInner(Landroid/os/Parcel;I)V
    .registers 11

    const v7, 0x4c444e42    # 5.146036E7f

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    :cond_d
    monitor-enter p0

    :try_start_e
    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v5, :cond_37

    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v6, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v5, v6, :cond_1e

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_34

    :goto_1c
    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const v5, 0x4c444e42    # 5.146036E7f

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_34

    goto :goto_1c

    :catchall_34
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_37
    :try_start_37
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_34

    monitor-exit p0

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-gtz v5, :cond_46

    :cond_42
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v1, v0, v4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
