.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionEvent"
.end annotation


# static fields
.field private static final NO_VERSION_TAG:Ljava/lang/String; = ""

.field public static final OUT_OF_BOUNDS:I = 0x7fff

.field public static final OUT_OF_BOUNDS_NEGATIVE:I = -0x8000


# instance fields
.field private final mEnd:I

.field private final mEntityType:Ljava/lang/String;

.field private mEventType:I

.field private final mStart:I

.field private final mVersionTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    return v0
.end method

.method static synthetic -get1(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    return v0
.end method

.method static synthetic -get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    return v0
.end method

.method static synthetic -get4(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z
    .registers 2

    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->isTerminal()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p2, p1, :cond_23

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    iput p3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isActionType()Z
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    sparse-switch v0, :sswitch_data_a

    const/4 v0, 0x0

    return v0

    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x64 -> :sswitch_7
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
        0x68 -> :sswitch_7
        0x69 -> :sswitch_7
        0x6a -> :sswitch_7
        0x6b -> :sswitch_7
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_7
    .end sparse-switch
.end method

.method private isTerminal()Z
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x64
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static selectionAction(III)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .registers 9

    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectionAction(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p3, v1}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getVersionInfo()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_18
    const-string/jumbo v4, ""

    goto :goto_b
.end method

.method public static selectionModified(II)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .registers 8

    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v3, 0x2

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p2, v1}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getVersionInfo()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const/4 v3, 0x2

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_18
    const-string/jumbo v4, ""

    goto :goto_b
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getSourceClassifier()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TextClassifierImpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    sub-int v0, p1, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    const/4 v3, 0x4

    :goto_14
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_2e

    invoke-virtual {p2, v2}, Landroid/view/textclassifier/TextSelection;->getEntity(I)Ljava/lang/String;

    move-result-object v4

    :goto_1e
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getVersionInfo()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2a
    const/4 v3, 0x3

    goto :goto_14

    :cond_2c
    const/4 v3, 0x5

    goto :goto_14

    :cond_2e
    const-string/jumbo v4, ""

    goto :goto_1e
.end method

.method public static selectionStarted(I)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .registers 7

    new-instance v0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    add-int/lit8 v2, p0, 0x1

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v3, 0x1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
