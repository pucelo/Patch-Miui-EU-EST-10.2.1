.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18

    if-gez p3, :cond_25

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is invalid: it must be positive"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_25
    const/4 v10, 0x0

    if-eqz p2, :cond_4a

    move-object/from16 v5, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_43

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_43

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_43
    const-string/jumbo v11, "/"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    :cond_4a
    if-eqz v10, :cond_8a

    array-length v8, v10

    :goto_4d
    move-object v6, p0

    const/4 v3, -0x1

    :goto_4f
    if-ge v3, v8, :cond_a3

    if-gez v3, :cond_8c

    move-object v9, p1

    :goto_54
    iget-object v2, v6, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v4, 0x0

    :goto_5b
    if-ge v4, v7, :cond_6c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriMatcher;

    iget-object v11, v1, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    move-object v6, v1

    :cond_6c
    if-ne v4, v7, :cond_87

    new-instance v1, Landroid/content/UriMatcher;

    invoke-direct {v1}, Landroid/content/UriMatcher;-><init>()V

    const-string/jumbo v11, "#"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    const/4 v11, 0x1

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    :goto_7f
    iput-object v9, v1, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_8a
    const/4 v8, 0x0

    goto :goto_4d

    :cond_8c
    aget-object v9, v10, v3

    goto :goto_54

    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    :cond_92
    const-string/jumbo v11, "*"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9f

    const/4 v11, 0x2

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_7f

    :cond_9f
    const/4 v11, 0x0

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_7f

    :cond_a3
    move/from16 v0, p3

    iput v0, v6, Landroid/content/UriMatcher;->mCode:I

    return-void
.end method

.method public match(Landroid/net/Uri;)I
    .registers 15

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    move-object v9, p0

    if-nez v4, :cond_14

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_14

    iget v12, p0, Landroid/content/UriMatcher;->mCode:I

    return v12

    :cond_14
    const/4 v1, -0x1

    :goto_15
    if-ge v1, v4, :cond_21

    if-gez v1, :cond_24

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    :goto_1d
    iget-object v5, v9, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    if-nez v5, :cond_2b

    :cond_21
    iget v12, v9, Landroid/content/UriMatcher;->mCode:I

    return v12

    :cond_24
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_1d

    :cond_2b
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v6, :cond_40

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    iget v12, v8, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v12, :pswitch_data_6e

    :cond_3e
    :goto_3e
    if-eqz v9, :cond_68

    :cond_40
    if-nez v9, :cond_6b

    const/4 v12, -0x1

    return v12

    :pswitch_44
    iget-object v12, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    move-object v9, v8

    goto :goto_3e

    :pswitch_4e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v7, :cond_64

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v12, 0x30

    if-lt v0, v12, :cond_3e

    const/16 v12, 0x39

    if-gt v0, v12, :cond_3e

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_64
    move-object v9, v8

    goto :goto_3e

    :pswitch_66
    move-object v9, v8

    goto :goto_3e

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_44
        :pswitch_4e
        :pswitch_66
    .end packed-switch
.end method
