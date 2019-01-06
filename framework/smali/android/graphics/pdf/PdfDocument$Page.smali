.class public final Landroid/graphics/pdf/PdfDocument$Page;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Page"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method static synthetic -wrap0(Landroid/graphics/pdf/PdfDocument$Page;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$Page;->finish()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    iput-object p2, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$Page;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V

    return-void
.end method

.method private finish()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->release()V

    iput-object v1, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    :cond_c
    return-void
.end method


# virtual methods
.method public getCanvas()Landroid/graphics/Canvas;
    .registers 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .registers 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method isFinished()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
