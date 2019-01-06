.class public final Landroid/view/textclassifier/TextClassification;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Builder;
    }
.end annotation


# static fields
.field static final EMPTY:Landroid/view/textclassifier/TextClassification;


# instance fields
.field private final mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIntent:Landroid/content/Intent;

.field private final mLabel:Ljava/lang/String;

.field private mLogType:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mText:Ljava/lang/String;

.field private final mVersionInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassification;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    iput-object p5, p0, Landroid/view/textclassifier/TextClassification;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, p6}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/view/textclassifier/EntityConfidence;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    iput p7, p0, Landroid/view/textclassifier/TextClassification;->mLogType:I

    iput-object p8, p0, Landroid/view/textclassifier/TextClassification;->mVersionInfo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;)V

    return-void
.end method

.method public static createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_13

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-eqz p1, :cond_15

    :goto_a
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-instance v0, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_13
    move v0, v2

    goto :goto_5

    :cond_15
    move v1, v2

    goto :goto_a
.end method

.method static synthetic lambda$-android_view_textclassifier_TextClassification_5391(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/lang/String;)F
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getEntity(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEntityCount()I
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextClassification;->mLogType:I

    return v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mVersionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "TextClassification {text=%s, entities=%s, label=%s, intent=%s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLabel:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
