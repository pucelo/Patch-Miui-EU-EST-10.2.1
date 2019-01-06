.class public Landroid/service/autofill/CharSequenceTransformation$Builder;
.super Ljava/lang/Object;
.source "CharSequenceTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CharSequenceTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mFields:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/service/autofill/CharSequenceTransformation$Builder;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/CharSequenceTransformation$Builder;->mFields:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/CharSequenceTransformation$Builder;->mFields:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/autofill/CharSequenceTransformation$Builder;->addField(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/service/autofill/CharSequenceTransformation$Builder;

    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/CharSequenceTransformation$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addField(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/service/autofill/CharSequenceTransformation$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/CharSequenceTransformation$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/CharSequenceTransformation$Builder;->mFields:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Landroid/service/autofill/CharSequenceTransformation;
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/CharSequenceTransformation$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/CharSequenceTransformation$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/CharSequenceTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/CharSequenceTransformation;-><init>(Landroid/service/autofill/CharSequenceTransformation$Builder;Landroid/service/autofill/CharSequenceTransformation;)V

    return-object v0
.end method
