.class final Landroid/content/res/MiuiResourcesImpl$1;
.super Ljava/lang/Thread;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/MiuiResourcesImpl;->delayGCAtlasPreloadedBitmaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$preload:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .registers 2

    iput-object p1, p0, Landroid/content/res/MiuiResourcesImpl$1;->val$preload:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-wide/16 v2, 0x7530

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_b

    :goto_5
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl$1;->val$preload:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    return-void

    :catch_b
    move-exception v0

    goto :goto_5
.end method
