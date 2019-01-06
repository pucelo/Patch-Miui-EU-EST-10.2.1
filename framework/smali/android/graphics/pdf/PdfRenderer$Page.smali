.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .registers 9

    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-get1(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v0

    sget-object v2, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-get0(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v4

    invoke-static {v4, v5, p2, v0}, Landroid/graphics/pdf/PdfRenderer;->-wrap0(JILandroid/graphics/Point;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_30

    monitor-exit v2

    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .registers 5

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfRenderer;->-wrap1(J)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    monitor-exit v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->-set0(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private throwIfClosed()V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_18

    :cond_14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_18
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .registers 22

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_10
    const-string/jumbo v2, "bitmap null"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_2c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported pixel format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    if-eqz p2, :cond_57

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_3a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_43

    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "destBounds not in destination"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_43
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_3a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_3a

    :cond_57
    if-eqz p3, :cond_6a

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "transform not affine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6a
    const/4 v2, 0x2

    move/from16 v0, p4

    if-eq v0, v2, :cond_7d

    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_7d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported render mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7d
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_90

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_90

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Only single render mode supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_90
    if-eqz p2, :cond_e9

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    :goto_96
    if-eqz p2, :cond_eb

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    :goto_9c
    if-eqz p2, :cond_ed

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    :goto_a2
    if-eqz p2, :cond_f2

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    :goto_a8
    if-nez p3, :cond_cd

    sub-int v15, v9, v7

    sub-int v14, v10, v8

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct/range {p3 .. p3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v2, v7

    int-to-float v3, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_cd
    move-object/from16 v0, p3

    iget-wide v11, v0, Landroid/graphics/Matrix;->native_instance:J

    sget-object v16, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v16

    :try_start_d4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v2}, Landroid/graphics/pdf/PdfRenderer;->-get0(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    move-object/from16 v6, p1

    move/from16 v13, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/pdf/PdfRenderer;->-wrap2(JJLandroid/graphics/Bitmap;IIIIJI)V
    :try_end_e7
    .catchall {:try_start_d4 .. :try_end_e7} :catchall_f7

    monitor-exit v16

    return-void

    :cond_e9
    const/4 v7, 0x0

    goto :goto_96

    :cond_eb
    const/4 v8, 0x0

    goto :goto_9c

    :cond_ed
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    goto :goto_a2

    :cond_f2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    goto :goto_a8

    :catchall_f7
    move-exception v2

    monitor-exit v16

    throw v2
.end method
