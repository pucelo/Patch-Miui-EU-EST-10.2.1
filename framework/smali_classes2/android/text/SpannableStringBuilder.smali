.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final sCachedIntBuffer:[[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCachedIntBuffer"
    .end annotation
.end field


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanInsertCount:I

.field private mSpanMax:[I

.field private mSpanOrder:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-array v0, v2, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 15

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    sub-int v10, p3, p2

    if-gez v10, :cond_12

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_12
    invoke-static {v10}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iput v10, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    sub-int/2addr v0, v10

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_92

    move-object v8, p1

    check-cast v8, Landroid/text/Spanned;

    const-class v0, Ljava/lang/Object;

    invoke-interface {v8, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x0

    :goto_53
    array-length v0, v9

    if-ge v7, v0, :cond_8f

    aget-object v0, v9, v7

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_5f

    :goto_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_5f
    aget-object v0, v9, v7

    invoke-interface {v8, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int v3, v0, p2

    aget-object v0, v9, v7

    invoke-interface {v8, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    sub-int v4, v0, p2

    aget-object v0, v9, v7

    invoke-interface {v8, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-gez v3, :cond_78

    const/4 v3, 0x0

    :cond_78
    sub-int v0, p3, p2

    if-le v3, v0, :cond_7e

    sub-int v3, p3, p2

    :cond_7e
    if-gez v4, :cond_81

    const/4 v4, 0x0

    :cond_81
    sub-int v0, p3, p2

    if-le v4, v0, :cond_87

    sub-int v4, p3, p2

    :cond_87
    aget-object v2, v9, v7

    move-object v0, p0

    move v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    goto :goto_5c

    :cond_8f
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_92
    return-void
.end method

.method private calcMax(I)I
    .registers 4

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_d

    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    :cond_d
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v1, :cond_29

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_29

    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_29
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v0, v1, p1

    return v0
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .registers 46

    sub-int v35, p2, p1

    sub-int v36, p5, p4

    sub-int v12, v36, v35

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v32, v4, -0x1

    :goto_e
    if-ltz v32, :cond_d6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v4, v32

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v7, v4, :cond_21

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v7, v4

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v4, v32

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v4, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v4

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v32

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_9f

    move/from16 v34, v7

    move/from16 v33, v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v29

    move/from16 v0, p1

    if-le v7, v0, :cond_64

    move/from16 v0, p2

    if-gt v7, v0, :cond_64

    move/from16 v7, p2

    :goto_50
    move/from16 v0, v29

    if-ge v7, v0, :cond_64

    move/from16 v0, p2

    if-le v7, v0, :cond_bf

    add-int/lit8 v4, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_bf

    :cond_64
    move/from16 v0, p1

    if-le v8, v0, :cond_82

    move/from16 v0, p2

    if-gt v8, v0, :cond_82

    move/from16 v8, p2

    :goto_6e
    move/from16 v0, v29

    if-ge v8, v0, :cond_82

    move/from16 v0, p2

    if-le v8, v0, :cond_c2

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c2

    :cond_82
    move/from16 v0, v34

    if-ne v7, v0, :cond_8a

    move/from16 v0, v33

    if-eq v8, v0, :cond_9f

    :cond_8a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v4, v32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v4, v32

    const/4 v5, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    const/16 v28, 0x1

    :cond_9f
    const/16 v31, 0x0

    move/from16 v0, p1

    if-ne v7, v0, :cond_c5

    const/16 v31, 0x1000

    :cond_a7
    :goto_a7
    move/from16 v0, p1

    if-ne v8, v0, :cond_cc

    move/from16 v0, v31

    or-int/lit16 v0, v0, 0x4000

    move/from16 v31, v0

    :cond_b1
    :goto_b1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v4, v32

    or-int v5, v5, v31

    aput v5, v4, v32

    add-int/lit8 v32, v32, -0x1

    goto/16 :goto_e

    :cond_bf
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    :cond_c5
    add-int v4, p2, v12

    if-ne v7, v4, :cond_a7

    const/16 v31, 0x2000

    goto :goto_a7

    :cond_cc
    add-int v4, p2, v12

    if-ne v8, v4, :cond_b1

    const v4, 0x8000

    or-int v31, v31, v4

    goto :goto_b1

    :cond_d6
    if-eqz v28, :cond_db

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_db
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v12, v4, :cond_f8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_f8
    if-nez v36, :cond_1a6

    const/4 v15, 0x1

    :goto_fb
    if-lez v35, :cond_113

    :cond_fd
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v4, :cond_113

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v4}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v4

    if-nez v4, :cond_fd

    :cond_113
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_137

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_137
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-lez v35, :cond_1ae

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_1a9

    const/4 v14, 0x1

    :goto_159
    const/16 v32, 0x0

    :goto_15b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, v32

    if-ge v0, v4, :cond_1ab

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v32

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v10, v5, v32

    move-object/from16 v9, p0

    move/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v32

    and-int/lit8 v20, v4, 0xf

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v17, v5, v32

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, v12

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v32

    add-int/lit8 v32, v32, 0x1

    goto :goto_15b

    :cond_1a6
    const/4 v15, 0x0

    goto/16 :goto_fb

    :cond_1a9
    const/4 v14, 0x0

    goto :goto_159

    :cond_1ab
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_1ae
    move-object/from16 v0, p3

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_21c

    move-object/from16 v37, p3

    check-cast v37, Landroid/text/Spanned;

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v37

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v38

    const/16 v32, 0x0

    :goto_1c6
    move-object/from16 v0, v38

    array-length v4, v0

    move/from16 v0, v32

    if-ge v0, v4, :cond_219

    aget-object v4, v38, v32

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v39

    aget-object v4, v38, v32

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v30

    move/from16 v0, v39

    move/from16 v1, p4

    if-ge v0, v1, :cond_1e5

    move/from16 v39, p4

    :cond_1e5
    move/from16 v0, v30

    move/from16 v1, p5

    if-le v0, v1, :cond_1ed

    move/from16 v30, p5

    :cond_1ed
    aget-object v4, v38, v32

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_216

    sub-int v4, v39, p4

    add-int v24, v4, p1

    sub-int v4, v30, p4

    add-int v25, v4, p1

    aget-object v4, v38, v32

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    or-int/lit16 v0, v4, 0x800

    move/from16 v26, v0

    aget-object v23, v38, v32

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v27}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :cond_216
    add-int/lit8 v32, v32, 0x1

    goto :goto_1c6

    :cond_219
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_21c
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 8

    if-ge p3, p2, :cond_2b

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_33

    if-le p3, v0, :cond_60

    :cond_33
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_60
    if-ltz p2, :cond_64

    if-gez p3, :cond_8d

    :cond_64
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8d
    return-void
.end method

.method private static checkSortBuffer([II)[I
    .registers 3

    if-eqz p0, :cond_5

    array-length v0, p0

    if-le p1, v0, :cond_e

    :cond_5
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    return-object v0

    :cond_e
    return-object p0
.end method

.method private final compareSpans(II[I[I)I
    .registers 9

    aget v0, p3, p1

    aget v1, p3, p2

    if-ne v0, v1, :cond_f

    aget v2, p4, p1

    aget v3, p4, p2

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    :cond_f
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .registers 11

    const/4 v0, 0x0

    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1a

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v3, v5, v1

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v5, :cond_14

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v5

    :cond_14
    if-lt v3, p1, :cond_1a

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    :cond_1a
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v5, :cond_59

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v5, p4

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v5, :cond_29

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    :cond_29
    if-gt v4, p2, :cond_59

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v5, p4

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v5, :cond_36

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v5

    :cond_36
    if-lt v2, p1, :cond_4c

    if-eq v4, v2, :cond_3c

    if-ne p1, p2, :cond_5a

    :cond_3c
    :goto_3c
    const-class v5, Ljava/lang/Object;

    if-eq v5, p3, :cond_4a

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v5, v5, p4

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    :cond_4c
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_59

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v5

    invoke-direct {p0, p1, p2, p3, v5}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v5

    add-int/2addr v0, v5

    :cond_59
    return v0

    :cond_5a
    if-eq v4, p2, :cond_4c

    if-eq v2, p1, :cond_4c

    goto :goto_3c
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v21, v3, v7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v21

    if-le v0, v3, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v21, v21, v3

    :cond_1c
    move/from16 v0, v21

    move/from16 v1, p1

    if-lt v0, v1, :cond_38

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result p8

    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    if-lt v0, v3, :cond_41

    return p8

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v23, v3, p4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v23

    if-le v0, v3, :cond_55

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v23, v23, v3

    :cond_55
    move/from16 v0, v23

    move/from16 v1, p2

    if-gt v0, v1, :cond_dc

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v20, v3, p4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v20

    if-le v0, v3, :cond_6f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v20, v20, v3

    :cond_6f
    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_b7

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_81

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_dd

    :cond_81
    :goto_81
    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_95

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    :cond_95
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, p4

    const/high16 v4, 0xff0000

    and-int v22, v3, v4

    move/from16 v24, p8

    if-eqz p9, :cond_ea

    aput v22, p6, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v3, v3, p4

    aput v3, p7, v24

    :cond_ad
    :goto_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    aput-object v3, p5, v24

    add-int/lit8 p8, p8, 0x1

    :cond_b7
    move-object/from16 v0, p5

    array-length v3, v0

    move/from16 v0, p8

    if-ge v0, v3, :cond_dc

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dc

    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v12

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-direct/range {v8 .. v17}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result p8

    :cond_dc
    return p8

    :cond_dd
    move/from16 v0, v23

    move/from16 v1, p2

    if-eq v0, v1, :cond_b7

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_b7

    goto :goto_81

    :cond_ea
    if-eqz v22, :cond_ad

    const/16 v18, 0x0

    :goto_ee
    move/from16 v0, v18

    move/from16 v1, p8

    if-ge v0, v1, :cond_106

    aget-object v3, p5, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/high16 v4, 0xff0000

    and-int v19, v3, v4

    move/from16 v0, v22

    move/from16 v1, v19

    if-le v0, v1, :cond_116

    :cond_106
    add-int/lit8 v3, v18, 0x1

    sub-int v4, p8, v18

    move-object/from16 v0, p5

    move/from16 v1, v18

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v24, v18

    goto :goto_ad

    :cond_116
    add-int/lit8 v18, v18, 0x1

    goto :goto_ee
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .registers 9

    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_20

    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v2, v5

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_20

    aget-object v3, v5, v1

    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const/16 v6, 0x21

    if-eq v0, v6, :cond_1d

    const/4 v6, 0x1

    return v6

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    const/4 v6, 0x0

    return v6
.end method

.method private invalidateIndex(I)V
    .registers 3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    return-void
.end method

.method private isInvalidParagraph(II)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eq p1, v1, :cond_17

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method private static leftChild(I)I
    .registers 3

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private moveGapTo(I)V
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x2

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_57

    const/4 v0, 0x1

    :goto_e
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_59

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    :goto_23
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v6, :cond_98

    const/4 v3, 0x0

    :goto_28
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_91

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_3b

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    :cond_3b
    if-le v5, p1, :cond_6b

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    :cond_40
    :goto_40
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_47

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    :cond_47
    if-le v1, p1, :cond_7f

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    :cond_4c
    :goto_4c
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_57
    const/4 v0, 0x0

    goto :goto_e

    :cond_59
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_23

    :cond_6b
    if-ne v5, p1, :cond_40

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    if-eq v2, v10, :cond_7b

    if-eqz v0, :cond_40

    if-ne v2, v11, :cond_40

    :cond_7b
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_40

    :cond_7f
    if-ne v1, p1, :cond_4c

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    if-eq v2, v10, :cond_8d

    if-eqz v0, :cond_4c

    if-ne v2, v11, :cond_4c

    :cond_8d
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_4c

    :cond_91
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    :cond_98
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return-void
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .registers 9

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v3

    if-le v3, p1, :cond_16

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    :cond_16
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v3, :cond_56

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    if-le v2, p1, :cond_39

    if-ge v2, p2, :cond_39

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    move p2, v2

    :cond_39
    if-le v0, p1, :cond_48

    if-ge v0, p2, :cond_48

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    move p2, v0

    :cond_48
    if-ge v2, p2, :cond_56

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_56

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v3

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    :cond_56
    return p2
.end method

.method private static obtain(I)[I
    .registers 7

    const/4 v5, -0x1

    const/4 v2, 0x0

    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v4

    const/4 v0, -0x1

    :try_start_6
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    if-eqz v3, :cond_2f

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-lt v3, p0, :cond_2c

    move v0, v1

    :cond_1b
    if-eq v0, v5, :cond_26

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v3, v0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    const/4 v5, 0x0

    aput-object v5, v3, v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_32

    :cond_26
    monitor-exit v4

    invoke-static {v2, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    move-result-object v2

    return-object v2

    :cond_2c
    if-ne v0, v5, :cond_2f

    move v0, v1

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :catchall_32
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static recycle([I)V
    .registers 5

    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v2

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    array-length v1, p0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v0

    array-length v3, v3

    if-le v1, v3, :cond_1d

    :cond_17
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object p0, v1, v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    :cond_1b
    monitor-exit v2

    return-void

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .registers 9

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, p1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, p1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_13

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_13
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1a

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    :cond_1a
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-lt v1, p1, :cond_1b

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v4

    :cond_1b
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_7f

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, p4

    and-int/lit8 v1, v1, 0x21

    const/16 v2, 0x21

    if-ne v1, v2, :cond_68

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    if-lt v1, p1, :cond_68

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_68

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    if-lt v1, p1, :cond_68

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_68

    if-nez p3, :cond_53

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    if-le v1, p1, :cond_60

    :cond_53
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    return v4

    :cond_60
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v1, v2, :cond_53

    :cond_68
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-gt v1, p2, :cond_7e

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_7e

    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    :cond_7e
    return v0

    :cond_7f
    return v0
.end method

.method private resizeFor(I)V
    .registers 11

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v6

    add-int/lit8 v6, p1, 0x1

    if-gt v6, v5, :cond_9

    return-void

    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v4

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    array-length v3, v4

    sub-int v1, v3, v5

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v7, v5, v0

    sub-int v8, v3, v0

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_42

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v6, :cond_73

    const/4 v2, 0x0

    :goto_47
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, v6, :cond_6c

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_5a

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    :cond_5a
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_69

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_6c
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    :cond_73
    return-void
.end method

.method private resolveGap(I)I
    .registers 3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_7

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    :cond_7
    return p1
.end method

.method private restoreInvariants()V
    .registers 12

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v8, :cond_5

    return-void

    :cond_5
    const/4 v3, 0x1

    :goto_6
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v8, :cond_83

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v8, v8, v3

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v10, v3, -0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_80

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v8, v3

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v8, v3

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v8, v3

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v8, v3

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v4, v8, v3

    move v5, v3

    :cond_2b
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v10, v5, -0x1

    aget-object v9, v9, v10

    aput-object v9, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_69

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    if-lt v7, v8, :cond_2b

    :cond_69
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v6, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v7, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v0, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v2, v8, v5

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aput v4, v8, v5

    invoke-direct {p0, v5}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_83
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v8, :cond_95

    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    :cond_95
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    :goto_97
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v8, :cond_bf

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_af

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v3, :cond_bc

    :cond_af
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v9, v9, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    :cond_bf
    const v8, 0x7fffffff

    iput v8, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    return-void
.end method

.method private static rightChild(I)I
    .registers 3

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .registers 5

    array-length v1, p1

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_12

    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8

    array-length v1, p1

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_12

    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 8

    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_14

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v8, :cond_2a

    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_2a
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 8

    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_14

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8

    array-length v1, p1

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_12

    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private sendToSpanWatchers(III)V
    .registers 16

    const v11, 0x8000

    const/4 v6, 0x0

    :goto_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_75

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_13

    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_13
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_22

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    :cond_22
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_29

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    :cond_29
    add-int v7, p2, p3

    const/4 v8, 0x0

    move v2, v4

    if-le v4, v7, :cond_4f

    if-eqz p3, :cond_33

    sub-int/2addr v2, p3

    const/4 v8, 0x1

    :cond_33
    :goto_33
    move v3, v5

    if-le v5, v7, :cond_63

    if-eqz p3, :cond_3a

    sub-int/2addr v3, p3

    const/4 v8, 0x1

    :cond_3a
    :goto_3a
    if-eqz v8, :cond_44

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_44
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    const v10, -0xf001

    and-int/2addr v1, v10

    aput v1, v0, v6

    goto :goto_10

    :cond_4f
    if-lt v4, p1, :cond_33

    if-ne v4, p1, :cond_59

    and-int/lit16 v0, v9, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_33

    :cond_59
    if-ne v4, v7, :cond_61

    and-int/lit16 v0, v9, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_33

    :cond_61
    const/4 v8, 0x1

    goto :goto_33

    :cond_63
    if-lt v5, p1, :cond_3a

    if-ne v5, p1, :cond_6d

    and-int/lit16 v0, v9, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_3a

    :cond_6d
    if-ne v5, v7, :cond_73

    and-int v0, v9, v11

    if-eq v0, v11, :cond_3a

    :cond_73
    const/4 v8, 0x1

    goto :goto_3a

    :cond_75
    const/4 v6, 0x0

    :goto_76
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_aa

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_a7

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    and-int/lit16 v1, v1, -0x801

    aput v1, v0, v6

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_99

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    :cond_99
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_a0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    :cond_a0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, v6

    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    :cond_aa
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;IIIZ)V
    .registers 21

    const-string/jumbo v2, "setSpan"

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v9, v2, 0x4

    move/from16 v0, p3

    invoke-direct {p0, v0, v9}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    if-nez p6, :cond_1b

    return-void

    :cond_1b
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, " follows "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v13, p3, -0x1

    invoke-virtual {p0, v13}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    and-int/lit8 v8, p5, 0xf

    move/from16 v0, p4

    invoke-direct {p0, v0, v8}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v2

    if-eqz v2, :cond_90

    if-nez p6, :cond_5c

    return-void

    :cond_5c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, " follows "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v13, p4, -0x1

    invoke-virtual {p0, v13}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_90
    const/4 v2, 0x2

    if-ne v9, v2, :cond_a8

    const/4 v2, 0x1

    if-ne v8, v2, :cond_a8

    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_a8

    if-eqz p1, :cond_a7

    const-string/jumbo v2, "SpannableStringBuilder"

    const-string/jumbo v3, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    return-void

    :cond_a8
    move/from16 v6, p3

    move/from16 v7, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v2, :cond_102

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    :cond_b6
    :goto_b6
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v2, :cond_11b

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    :cond_c0
    :goto_c0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v2, :cond_134

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_134

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v2, v10

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v2, v10

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v2, :cond_e3

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v2

    :cond_e3
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v2, :cond_ea

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v2

    :cond_ea
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v2, v10

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v2, v10

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v2, v10

    if-eqz p1, :cond_101

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_101
    return-void

    :cond_102
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_b6

    const/4 v2, 0x2

    if-eq v9, v2, :cond_116

    const/4 v2, 0x3

    if-ne v9, v2, :cond_b6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_b6

    :cond_116
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    goto :goto_b6

    :cond_11b
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_c0

    const/4 v2, 0x2

    if-eq v8, v2, :cond_12f

    const/4 v2, 0x3

    if-ne v8, v2, :cond_c0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_c0

    :cond_12f
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    goto :goto_c0

    :cond_134
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p5

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v13, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v2, v3, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v12, v2, 0x1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v2, v2

    if-ge v2, v12, :cond_192

    new-array v2, v12, [I

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    :cond_192
    if-eqz p1, :cond_19c

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_19c
    return-void
.end method

.method private final siftDown(I[Ljava/lang/Object;I[I[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v0, v4, 0x1

    :goto_4
    if-ge v0, p3, :cond_1a

    add-int/lit8 v4, p3, -0x1

    if-ge v0, v4, :cond_14

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v0, v4, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v4

    if-gez v4, :cond_14

    add-int/lit8 v0, v0, 0x1

    :cond_14
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v4

    if-ltz v4, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    aget-object v3, p2, p1

    aget-object v4, p2, v0

    aput-object v4, p2, p1

    aput-object v3, p2, v0

    aget v2, p4, p1

    aget v4, p4, v0

    aput v4, p4, p1

    aput v2, p4, v0

    aget v1, p5, p1

    aget v4, p5, v0

    aput v4, p5, p1

    aput v1, p5, v0

    move p1, v0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v0, v4, 0x1

    goto :goto_4
.end method

.method private final sort([Ljava/lang/Object;[I[I)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    array-length v3, p1

    div-int/lit8 v0, v3, 0x2

    add-int/lit8 v1, v0, -0x1

    :goto_5
    if-ltz v1, :cond_12

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_12
    add-int/lit8 v1, v3, -0x1

    :goto_14
    if-lez v1, :cond_41

    const/4 v0, 0x0

    aget-object v12, p1, v0

    aget-object v0, p1, v1

    const/4 v2, 0x0

    aput-object v0, p1, v2

    aput-object v12, p1, v1

    const/4 v0, 0x0

    aget v11, p2, v0

    aget v0, p2, v1

    const/4 v2, 0x0

    aput v0, p2, v2

    aput v11, p2, v1

    const/4 v0, 0x0

    aget v10, p3, v0

    aget v0, p3, v1

    const/4 v2, 0x0

    aput v0, p3, v2

    aput v10, p3, v1

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move v7, v1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_41
    return-void
.end method

.method private treeRoot()I
    .registers 2

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .registers 9

    if-lt p1, p2, :cond_2c

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2c

    const/4 v0, 0x2

    if-ne p4, v0, :cond_16

    if-nez p6, :cond_10

    if-le p1, p2, :cond_2c

    :cond_10
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    :cond_16
    const/4 v0, 0x3

    if-ne p4, v0, :cond_21

    if-eqz p5, :cond_2c

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    :cond_21
    if-nez p6, :cond_28

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_29

    :cond_28
    return p2

    :cond_29
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return v0

    :cond_2c
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2

    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0

    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 8

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 10

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .registers 6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .registers 6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gez p1, :cond_27

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    if-lt p1, v0, :cond_4e

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_5a

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    return v1

    :cond_5a
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    return v1
.end method

.method public clear()V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string/jumbo v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    return-void
.end method

.method public clearSpans()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    :goto_6
    if-ltz v0, :cond_2e

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_1b

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_1b
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_22

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    :cond_22
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v6, v4, v0

    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2e
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_37

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->clear()V

    :cond_37
    iput v5, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .registers 10

    const/4 v4, 0x0

    const-string/jumbo v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1d

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_1d
    return-object v6
.end method

.method public drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .registers 14

    const/4 v2, 0x0

    const-string/jumbo v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_18

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_17
    return-void

    :cond_18
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_2c

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_17

    :cond_2c
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_17
.end method

.method public drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .registers 20

    const-string/jumbo v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    sub-int v5, p5, p4

    sub-int v3, p3, p2

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p5, v0, :cond_1f

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    :goto_1e
    return-void

    :cond_1f
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v0, :cond_3a

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_1e

    :cond_3a
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_1e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v7, 0x0

    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_7e

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v6, v3

    if-ne v5, v6, :cond_7e

    const/4 v0, 0x0

    :goto_26
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v5, :cond_7c

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v5, v0

    aget-object v2, v3, v0

    if-ne v4, p0, :cond_56

    if-ne v1, v2, :cond_3e

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_3f

    :cond_3e
    return v7

    :cond_3f
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3e

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3e

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_56
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_67

    :cond_66
    :goto_66
    return v7

    :cond_67
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_66

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_53

    goto :goto_66

    :cond_7c
    const/4 v5, 0x1

    return v5

    :cond_7e
    return v7
.end method

.method public getChars(II[CI)V
    .registers 9

    const-string/jumbo v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_12

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    :goto_11
    return-void

    :cond_12
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_21

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_11

    :cond_21
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_11
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 5

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    :goto_10
    return v1

    :cond_11
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    goto :goto_10
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    :goto_10
    return v1

    :cond_11
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    goto :goto_10
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 5

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    :goto_10
    return v1

    :cond_11
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    goto :goto_10
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;Z)[TT;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p3, :cond_a

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_13

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v10

    if-nez v10, :cond_22

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-static {p3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    if-eqz p4, :cond_4c

    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v6

    :goto_2e
    if-eqz p4, :cond_4f

    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v7

    :goto_34
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    if-eqz p4, :cond_4b

    invoke-direct {p0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    invoke-static {v6}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    invoke-static {v7}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    :cond_4b
    return-object v5

    :cond_4c
    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_2e

    :cond_4f
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_34
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .registers 19

    sub-int v5, p4, p3

    sub-int v3, p2, p1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_18

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    :goto_17
    return v9

    :cond_18
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_32

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    goto :goto_17

    :cond_32
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_17
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    sub-int v3, p2, p1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_13

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    :goto_12
    return v7

    :cond_13
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_2d

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v7, v0, v2

    goto :goto_12

    :cond_2d
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public getTextWatcherDepth()I
    .registers 2

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 10

    const/4 v3, 0x0

    const-string/jumbo v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_14

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    :goto_13
    return v1

    :cond_14
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_24

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    goto :goto_13

    :cond_24
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_13
.end method

.method public hashCode()I
    .registers 6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int v0, v3, v4

    const/4 v1, 0x0

    :goto_f
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v3, :cond_3c

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    if-eq v2, p0, :cond_21

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    :cond_21
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_3c
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 11

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 3

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .registers 9

    const/4 v3, 0x0

    const-string/jumbo v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_14

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    :goto_13
    return v1

    :cond_14
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_24

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    goto :goto_13

    :cond_24
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_13
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_5

    return p2

    :cond_5
    if-nez p3, :cond_9

    const-class p3, Ljava/lang/Object;

    :cond_9
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    :cond_16
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 10

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 34

    const-string/jumbo v6, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v0, v6

    move/from16 v19, v0

    const/16 v22, 0x0

    :goto_15
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v6, v6, v22

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-interface/range {v6 .. v12}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v26

    if-eqz v26, :cond_3b

    move-object/from16 p3, v26

    const/16 p4, 0x0

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result p5

    :cond_3b
    add-int/lit8 v22, v22, 0x1

    goto :goto_15

    :cond_3e
    sub-int v25, p2, p1

    sub-int v23, p5, p4

    if-nez v25, :cond_4f

    if-nez v23, :cond_4f

    invoke-static/range {p3 .. p4}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4f

    return-object p0

    :cond_4f
    add-int v6, p1, v25

    const-class v7, Landroid/text/TextWatcher;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Landroid/text/TextWatcher;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    if-eqz v25, :cond_fd

    if-eqz v23, :cond_fd

    const/16 v17, 0x1

    :goto_70
    const/4 v9, 0x0

    const/4 v13, 0x0

    if-eqz v17, :cond_7c

    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    :cond_7c
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    if-eqz v17, :cond_dd

    const/16 v18, 0x0

    move/from16 v0, p1

    if-le v9, v0, :cond_ad

    move/from16 v0, p2

    if-ge v9, v0, :cond_ad

    sub-int v6, v9, p1

    int-to-long v0, v6

    move-wide/from16 v20, v0

    move/from16 v0, v23

    int-to-long v6, v0

    mul-long v6, v6, v20

    move/from16 v0, v25

    int-to-long v10, v0

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v24

    add-int v9, p1, v24

    const/16 v18, 0x1

    sget-object v8, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v11, 0x22

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v10, v9

    invoke-direct/range {v6 .. v12}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :cond_ad
    move/from16 v0, p1

    if-le v13, v0, :cond_d8

    move/from16 v0, p2

    if-ge v13, v0, :cond_d8

    sub-int v6, v13, p1

    int-to-long v0, v6

    move-wide/from16 v20, v0

    move/from16 v0, v23

    int-to-long v6, v0

    mul-long v6, v6, v20

    move/from16 v0, v25

    int-to-long v10, v0

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v24

    add-int v13, p1, v24

    const/16 v18, 0x1

    sget-object v12, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v15, 0x22

    const/16 v16, 0x1

    move-object/from16 v10, p0

    move v14, v13

    invoke-direct/range {v10 .. v16}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :cond_d8
    if-eqz v18, :cond_dd

    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_dd
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    sub-int v6, v23, v25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    return-object p0

    :cond_fd
    const/16 v17, 0x0

    goto/16 :goto_70
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 12

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 5

    sub-int v1, p2, p1

    new-array v0, v1, [C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    new-array v0, v1, [C

    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
