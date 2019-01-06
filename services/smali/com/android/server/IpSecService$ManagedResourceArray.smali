.class Lcom/android/server/IpSecService$ManagedResourceArray;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedResourceArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/IpSecService$ManagedResource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method private constructor <init>(Lcom/android/server/IpSecService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;)V

    return-void
.end method


# virtual methods
.method get(I)Lcom/android/server/IpSecService$ManagedResource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$ManagedResource;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ManagedResource;->checkOwnerOrSystemAndThrow()V

    :cond_d
    return-object v0
.end method

.method put(ILcom/android/server/IpSecService$ManagedResource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const-string/jumbo v0, "Null resources cannot be added"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method remove(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
