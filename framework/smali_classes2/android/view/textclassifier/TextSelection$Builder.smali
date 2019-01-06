.class public final Landroid/view/textclassifier/TextSelection$Builder;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mEndIndex:I

.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogSource:Ljava/lang/String;

.field private final mStartIndex:I

.field private mVersionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0}, Landroid/view/textclassifier/EntityConfidence;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    if-ltz p1, :cond_26

    move v0, v1

    :goto_19
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-le p2, p1, :cond_28

    :goto_1e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iput p2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    return-void

    :cond_26
    move v0, v2

    goto :goto_19

    :cond_28
    move v1, v2

    goto :goto_1e
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextSelection;
    .registers 8

    new-instance v0, Landroid/view/textclassifier/TextSelection;

    iget v1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    iget-object v3, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    iget-object v5, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextSelection;-><init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextSelection;)V

    return-object v0
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 4

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->setEntityType(Ljava/lang/Object;F)V

    return-object p0
.end method

.method setLogSource(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    return-object p0
.end method

.method setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    return-object p0
.end method
