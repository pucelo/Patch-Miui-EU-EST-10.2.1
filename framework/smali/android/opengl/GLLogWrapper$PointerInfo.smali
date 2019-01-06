.class Landroid/opengl/GLLogWrapper$PointerInfo;
.super Ljava/lang/Object;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLLogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerInfo"
.end annotation


# instance fields
.field public mPointer:Ljava/nio/Buffer;

.field public mSize:I

.field public mStride:I

.field public mTempByteBuffer:Ljava/nio/ByteBuffer;

.field public mType:I

.field final synthetic this$0:Landroid/opengl/GLLogWrapper;


# direct methods
.method public constructor <init>(Landroid/opengl/GLLogWrapper;)V
    .registers 2

    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V
    .registers 6

    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    iput p3, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    iput p4, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    iput-object p5, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public bindByteBuffer()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    if-nez v1, :cond_8

    :goto_5
    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_8
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    iget-object v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLLogWrapper;->-wrap0(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5
.end method

.method public getStride()I
    .registers 3

    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    invoke-virtual {p0, v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v0

    iget v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    mul-int/2addr v0, v1

    goto :goto_6
.end method

.method public sizeof(I)I
    .registers 4

    const/4 v1, 0x4

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_e

    const/4 v0, 0x0

    return v0

    :sswitch_7
    return v0

    :sswitch_8
    return v0

    :sswitch_9
    const/4 v0, 0x2

    return v0

    :sswitch_b
    return v1

    :sswitch_c
    return v1

    nop

    :sswitch_data_e
    .sparse-switch
        0x1400 -> :sswitch_8
        0x1401 -> :sswitch_7
        0x1402 -> :sswitch_9
        0x1406 -> :sswitch_c
        0x140c -> :sswitch_b
    .end sparse-switch
.end method

.method public unbindByteBuffer()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method
