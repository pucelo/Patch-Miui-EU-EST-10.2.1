.class Landroid/media/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method static synthetic -wrap0(Landroid/media/Cea608CCParser$CCMemory;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/Cea608CCParser$CCMemory;->moveBaselineTo(II)V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x11

    new-array v1, v1, [Landroid/media/Cea608CCParser$CCLineBuilder;

    iput-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    const/16 v1, 0x22

    new-array v0, v1, [C

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    return-void
.end method

.method private static clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;
    .registers 5

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    new-instance v1, Landroid/media/Cea608CCParser$CCLineBuilder;

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    :cond_11
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private moveBaselineTo(II)V
    .registers 10

    const/4 v6, 0x0

    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ne v2, p1, :cond_6

    return-void

    :cond_6
    move v0, p2

    if-ge p1, p2, :cond_a

    move v0, p1

    :cond_a
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge v2, v0, :cond_10

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    :cond_10
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge p1, v2, :cond_28

    add-int/lit8 v1, v0, -0x1

    :goto_16
    if-ltz v1, :cond_3b

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget-object v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v5, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_28
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_3b

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget-object v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v5, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    sub-int v2, p1, p2

    if-gt v1, v2, :cond_47

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_47
    add-int/lit8 v1, p1, 0x1

    :goto_49
    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v2, v2

    if-ge v1, v2, :cond_55

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_55
    return-void
.end method

.method private moveCursorByCol(I)V
    .registers 5

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorTo(II)V
    .registers 5

    const/4 v1, 0x1

    const/16 v0, 0xf

    invoke-static {p1, v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/16 v0, 0x20

    invoke-static {p2, v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorToRow(I)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    return-void
.end method


# virtual methods
.method bs()V
    .registers 4

    const/16 v2, 0xa0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    :cond_2a
    return-void
.end method

.method cr()V
    .registers 3

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    return-void
.end method

.method der()V
    .registers 7

    const/4 v5, 0x0

    const/16 v4, 0xa0

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3e

    const/4 v0, 0x0

    :goto_c
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    if-ge v0, v2, :cond_38

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/media/Cea608CCParser$CCLineBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_35

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    :goto_1e
    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_34

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1, v4}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_34
    return-void

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_38
    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aput-object v5, v2, v3

    :cond_3e
    return-void
.end method

.method erase()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/16 v1, 0xf

    iput v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .registers 7

    const/4 v3, 0x0

    const/16 v4, 0xf

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    :goto_9
    if-gt v0, v4, :cond_21

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    :goto_19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    move-object v2, v3

    goto :goto_19

    :cond_21
    new-array v2, v4, [Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method rollUp(I)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_f

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v2, p1

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v5, :cond_17

    const/4 v1, 0x1

    :cond_17
    move v0, v1

    :goto_18
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge v0, v2, :cond_29

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_29
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    :goto_2b
    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_37
    iput v5, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method tab(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V
    .registers 4

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writePAC(Landroid/media/Cea608CCParser$PAC;)V
    .registers 4

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    :goto_11
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setPACAt(ILandroid/media/Cea608CCParser$PAC;)V

    return-void

    :cond_1d
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    goto :goto_11
.end method

.method writeText(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method
