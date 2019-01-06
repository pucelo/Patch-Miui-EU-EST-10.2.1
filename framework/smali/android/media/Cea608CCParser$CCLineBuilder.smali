.class Landroid/media/Cea608CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final mDisplayChars:Ljava/lang/StringBuilder;

.field private final mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

.field private final mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/Cea608CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/Cea608CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    return-void
.end method


# virtual methods
.method applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V
    .registers 8

    const/16 v2, 0x21

    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isItalics()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    return-void
.end method

.method charAt(I)C
    .registers 3

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .registers 13

    const/16 v10, 0x20

    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    :goto_d
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v4, v8, :cond_79

    const/4 v3, 0x0

    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v8, v8, v4

    if-eqz v8, :cond_3b

    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v3, v8, v4

    :cond_20
    :goto_20
    if-eqz v3, :cond_2b

    move-object v0, v3

    if-ltz v6, :cond_2a

    if-ltz v5, :cond_2a

    invoke-virtual {p0, v7, v3, v6, v4}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    :cond_2a
    move v6, v4

    :cond_2b
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_4a

    if-gez v5, :cond_38

    move v5, v4

    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3b
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v8, v8, v4

    if-eqz v8, :cond_20

    if-ltz v6, :cond_45

    if-gez v5, :cond_20

    :cond_45
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v3, v8, v4

    goto :goto_20

    :cond_4a
    if-ltz v5, :cond_38

    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_73

    move v2, v5

    :goto_55
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_76

    move v1, v4

    :goto_60
    new-instance v8, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v2, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-ltz v6, :cond_71

    invoke-virtual {p0, v7, v0, v6, v1}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    :cond_71
    const/4 v5, -0x1

    goto :goto_38

    :cond_73
    add-int/lit8 v2, v5, -0x1

    goto :goto_55

    :cond_76
    add-int/lit8 v1, v4, 0x1

    goto :goto_60

    :cond_79
    return-object v7
.end method

.method length()I
    .registers 2

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method setCharAt(IC)V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    return-void
.end method

.method setPACAt(ILandroid/media/Cea608CCParser$PAC;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    return-void
.end method
