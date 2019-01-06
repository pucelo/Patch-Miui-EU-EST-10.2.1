.class final synthetic Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;->-$f0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;->-$f1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/oemlock/VendorLock;->lambda$-com_android_server_oemlock_VendorLock_4760([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/oemlock/-$Lambda$bvOlENw7oAYGZ6eQjqNp0EVu-PE$1;->$m$0(IZ)V

    return-void
.end method
