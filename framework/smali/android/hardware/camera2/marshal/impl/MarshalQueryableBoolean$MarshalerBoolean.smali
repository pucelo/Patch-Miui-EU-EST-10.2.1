.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableBoolean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerBoolean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public marshal(Ljava/lang/Boolean;Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :goto_7
    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_c
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;->marshal(Ljava/lang/Boolean;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
