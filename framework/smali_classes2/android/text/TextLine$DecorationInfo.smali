.class final Landroid/text/TextLine$DecorationInfo;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecorationInfo"
.end annotation


# instance fields
.field public end:I

.field public isStrikeThruText:Z

.field public isUnderlineText:Z

.field public start:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->start:I

    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->end:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/TextLine$DecorationInfo;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public copyInfo()Landroid/text/TextLine$DecorationInfo;
    .registers 3

    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    invoke-direct {v0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    return-object v0
.end method

.method public hasDecoration()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-nez v2, :cond_e

    iget v2, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method
