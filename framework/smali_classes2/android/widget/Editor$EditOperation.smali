.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$EditOperation$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation",
        "<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_DELETE:I = 0x1

.field private static final TYPE_INSERT:I = 0x0

.field private static final TYPE_REPLACE:I = 0x2


# instance fields
.field private mFrozen:Z

.field private mIsComposition:Z

.field private mNewCursorPos:I

.field private mNewText:Ljava/lang/String;

.field private mOldCursorPos:I

.field private mOldText:Ljava/lang/String;

.field private mStart:I

.field private mType:I


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor$EditOperation;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3b

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3d

    :goto_38
    iput-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return-void

    :cond_3b
    move v0, v2

    goto :goto_30

    :cond_3d
    move v1, v2

    goto :goto_38
.end method

.method public constructor <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_36

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_36

    iput v1, p0, Landroid/widget/Editor$EditOperation;->mType:I

    :goto_1e
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-static {p1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput-boolean p5, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return-void

    :cond_36
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4a

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_1e

    :cond_4a
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_1e
.end method

.method private getNewTextEnd()I
    .registers 3

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getOldTextEnd()I
    .registers 3

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_16

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "insert"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "delete"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "replace"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-eq v0, v3, :cond_7

    return v2

    :cond_7
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v1

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return v3
.end method

.method private mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-nez v0, :cond_33

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v1, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-eq v0, v1, :cond_f

    return v4

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return v5

    :cond_33
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    if-eqz v0, :cond_8c

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8c

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v1, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v1, :cond_8c

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v1

    if-lt v0, v1, :cond_8c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v2

    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return v5

    :cond_8c
    return v4
.end method

.method private mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-nez v0, :cond_2a

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v1, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    return v4

    :cond_2a
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    if-nez v0, :cond_2f

    return v5

    :cond_2f
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-ne v0, v4, :cond_87

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v1, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v1, :cond_87

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v1

    if-lt v0, v1, :cond_87

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v2

    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e

    iput v4, p0, Landroid/widget/Editor$EditOperation;->mType:I

    :cond_7e
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return v4

    :cond_87
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a9

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v1, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v1, :cond_a9

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return v4

    :cond_a9
    return v5
.end method

.method private mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_1c

    return v1

    :pswitch_c
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    :pswitch_11
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    :pswitch_16
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method private static modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .registers 8

    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->-wrap7(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1d

    if-eq p1, p2, :cond_14

    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_14
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1d
    if-ltz p5, :cond_28

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt p5, v0, :cond_28

    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_28
    return-void
.end method


# virtual methods
.method public commit()V
    .registers 1

    return-void
.end method

.method public forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .registers 11

    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Editable;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget-object v4, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v5, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v6, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iget-boolean v2, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v2, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return-void
.end method

.method public redo()V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOldText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOldCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNewCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mFrozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mIsComposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undo()V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    if-eqz v0, :cond_30

    move v0, v1

    :goto_25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    if-eqz v0, :cond_32

    :goto_2c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_30
    move v0, v2

    goto :goto_25

    :cond_32
    move v1, v2

    goto :goto_2c
.end method