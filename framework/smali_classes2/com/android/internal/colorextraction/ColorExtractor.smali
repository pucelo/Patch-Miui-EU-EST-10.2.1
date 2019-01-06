.class public Lcom/android/internal/colorextraction/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;,
        Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorExtractor"

.field public static final TYPE_DARK:I = 0x1

.field public static final TYPE_EXTRA_DARK:I = 0x2

.field public static final TYPE_NORMAL:I

.field private static final sGradientTypes:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

.field protected final mGradientColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field protected mLockColors:Landroid/app/WallpaperColors;

.field private final mOnColorsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSystemColors:Landroid/app/WallpaperColors;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v6, 0x2

    const/4 v7, 0x1

    filled-new-array {v6, v7}, [I

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    move v7, v6

    :goto_17
    if-ge v7, v9, :cond_3b

    aget v5, v8, v7

    sget-object v6, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v6, v6

    new-array v0, v6, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v10, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    const/4 v6, 0x0

    array-length v11, v10

    :goto_29
    if-ge v6, v11, :cond_37

    aget v3, v10, v6

    new-instance v12, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    aput-object v12, v0, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_37
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_17

    :cond_3b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/WallpaperManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    if-nez v4, :cond_86

    const-string/jumbo v6, "ColorExtractor"

    const-string/jumbo v7, "Can\'t listen to color changes!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void

    :cond_86
    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    const-string/jumbo v6, "ColorExtractor#getWallpaperColors"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_69
.end method

.method private extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/ExtractionType;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/WallpaperManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_f
    return-void
.end method

.method public getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .registers 5

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_11

    if-eq p2, v0, :cond_11

    if-eq p2, v1, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type should be TYPE_NORMAL, TYPE_DARK or TYPE_EXTRA_DARK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-eq p1, v1, :cond_1e

    if-eq p1, v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be FLAG_SYSTEM or FLAG_NORMAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    return-object v0

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid value for which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .registers 12

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1c

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    iget-object v3, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v3, v1, v6

    aget-object v4, v1, v7

    aget-object v5, v1, v8

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    const/4 v0, 0x1

    :cond_1c
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_34

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    iget-object v3, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v3, v2, v6

    aget-object v4, v2, v7

    aget-object v5, v2, v8

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    const/4 v0, 0x1

    :cond_34
    if-eqz v0, :cond_39

    invoke-virtual {p0, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    :cond_39
    return-void
.end method

.method public removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_20

    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1f
    return-void

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method protected triggerColorsChanged(I)V
    .registers 8

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    if-nez v1, :cond_24

    iget-object v5, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_24
    invoke-interface {v1, p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;->onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    goto :goto_21

    :cond_28
    return-void
.end method
