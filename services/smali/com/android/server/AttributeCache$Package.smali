.class public final Lcom/android/server/AttributeCache$Package;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field private final mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<[I",
            "Lcom/android/server/AttributeCache$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    return-void
.end method
